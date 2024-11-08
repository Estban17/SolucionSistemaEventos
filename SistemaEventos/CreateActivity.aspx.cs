using System;
using System.Data.SqlClient;

namespace SistemaEventos
{
    public partial class CreateActivity : System.Web.UI.Page
    {
        private int idEvento; // Variable para almacenar el IdEvento

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener el IdEvento de la URL y convertirlo de manera segura
                string idEventoStr = Request.QueryString["IdEvento"];

                if (!string.IsNullOrEmpty(idEventoStr) && int.TryParse(idEventoStr, out idEvento))
                {
                    // Validar que el evento existe en la base de datos
                    string connectionString = "Data Source=.;Initial Catalog=GestionEventos;Persist Security Info=True;User ID=sa;Password=123456;TrustServerCertificate=True";
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        connection.Open();

                        string checkEventQuery = "SELECT COUNT(1) FROM Evento WHERE IdEvento = @IdEvento";
                        using (SqlCommand checkCommand = new SqlCommand(checkEventQuery, connection))
                        {
                            checkCommand.Parameters.AddWithValue("@IdEvento", idEvento);
                            int count = (int)checkCommand.ExecuteScalar();

                            if (count == 0)
                            {
                                // Mostrar mensaje de error si el evento no existe
                                string errorScript = "Swal.fire({ title: 'Error', text: 'El evento especificado no existe.', icon: 'error' }).then((result) => { if (result.isConfirmed) { window.location.href = 'Index.aspx'; } });";
                                ClientScript.RegisterStartupScript(this.GetType(), "EventoNoExistente", errorScript, true);
                                return;
                            }
                        }
                    }
                }
                else
                {
                    // Manejar el caso en que no se haya pasado un IdEvento válido en la URL o la conversión falle
                    string errorScript = "Swal.fire({ title: 'Error', text: 'Id de evento no válido o no encontrado.', icon: 'error' }).then((result) => { if (result.isConfirmed) { window.location.href = 'Index.aspx'; } });";
                    ClientScript.RegisterStartupScript(this.GetType(), "ErrorIdEvento", errorScript, true);
                }
            }
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }

        protected void btnCrearActividad_Click(object sender, EventArgs e)
        {
            // Validar campos obligatorios
            if (string.IsNullOrWhiteSpace(txtNombre.Text) ||
                string.IsNullOrWhiteSpace(txtFecha.Text) ||
                ddlUsuarioId.SelectedValue == "0")
            {
                // Mostrar mensaje de error
                string errorScript = "Swal.fire({ title: 'Error', text: 'Por favor, completa los campos obligatorios.', icon: 'error' });";
                ClientScript.RegisterStartupScript(this.GetType(), "CamposVacíos", errorScript, true);
                return;
            }

            // Conexión a la base de datos
            string connectionString = "Data Source=.;Initial Catalog=GestionEventos;Persist Security Info=True;User ID=sa;Password=123456;TrustServerCertificate=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = @"INSERT INTO Actividad 
                                (IdEvento, Nombre, Descripcion, Fecha, Hora, Duracion, Lugar, TipoLugar, Observaciones, UsuarioId, FechaCreacion) 
                                VALUES (@IdEvento, @Nombre, @Descripcion, @Fecha, @Hora, @Duracion, @Lugar, @TipoLugar, @Observaciones, @UsuarioId, @FechaCreacion)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@IdEvento", idEvento);
                    command.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                    command.Parameters.AddWithValue("@Descripcion", txtDescripcion.Text);
                    command.Parameters.AddWithValue("@Fecha", DateTime.Parse(txtFecha.Text));
                    command.Parameters.AddWithValue("@Hora", string.IsNullOrWhiteSpace(txtHora.Text) ? (object)DBNull.Value : TimeSpan.Parse(txtHora.Text));
                    command.Parameters.AddWithValue("@Duracion", string.IsNullOrWhiteSpace(txtDuracion.Text) ? (object)DBNull.Value : float.Parse(txtDuracion.Text));
                    command.Parameters.AddWithValue("@Lugar", txtLugar.Text);
                    command.Parameters.AddWithValue("@TipoLugar", txtTipoLugar.Text);
                    command.Parameters.AddWithValue("@Observaciones", txtObservaciones.Text);
                    command.Parameters.AddWithValue("@UsuarioId", ddlUsuarioId.SelectedValue);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);

                    command.ExecuteNonQuery();
                }

                // Mostrar mensaje de éxito
                string successScript = "Swal.fire({ title: 'Éxito', text: 'Actividad creada exitosamente.', icon: 'success' }).then((result) => { if (result.isConfirmed) { window.location.href = 'Index.aspx'; } });";
                ClientScript.RegisterStartupScript(this.GetType(), "RegistroExitoso", successScript, true);
            }
        }
    }
}
