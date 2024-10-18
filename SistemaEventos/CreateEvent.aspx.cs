using System;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;

namespace SistemaEventos
{
    public partial class CreateEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }

        protected void btnCrearEvento_Click(object sender, EventArgs e)
        {
            // Validar que los campos no estén vacíos
            if (string.IsNullOrWhiteSpace(txtNombre.Text) ||
                string.IsNullOrWhiteSpace(txtDescripcion.Text) ||
                string.IsNullOrWhiteSpace(txtNumAsistentes.Text) ||
                string.IsNullOrWhiteSpace(txtRanEdadAsistentes.Text) ||
                string.IsNullOrWhiteSpace(txtGeneroAsistentes.Text) ||
                string.IsNullOrWhiteSpace(txtFechaInicio.Text) ||
                string.IsNullOrWhiteSpace(txtFechaFin.Text) ||
                string.IsNullOrWhiteSpace(txtLugar.Text) ||
                ddlTipoEvento.SelectedValue == "0" || // Asegúrate de que "0" sea la opción de "selecciona"
                ddlEstadoEvento.SelectedValue == "0" || // Asegúrate de que "0" sea la opción de "selecciona"
                ddlUsuarioId.SelectedValue == "0") // Asegúrate de que "0" sea la opción de "selecciona"
            {
                // Mostrar alerta de error
                string errorScript = "Swal.fire({ title: 'Error', text: 'Por favor, completa todos los campos requeridos.', icon: 'error' });";
                ClientScript.RegisterStartupScript(this.GetType(), "Campos vacíos", errorScript, true);
                return; // Terminar ejecución si hay campos vacíos
            }

            // Conexión a la base de datos
            string connectionString = "Data Source=.;Initial Catalog=GestionEventos;Persist Security Info=True;User ID=sa;Password=123456;TrustServerCertificate=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                // Leer imagen
                byte[] imagenData = null;
                if (fuImagen.HasFile)
                {
                    using (BinaryReader br = new BinaryReader(fuImagen.PostedFile.InputStream))
                    {
                        imagenData = br.ReadBytes(fuImagen.PostedFile.ContentLength);
                    }
                }

                // Insertar el evento en la base de datos
                string query = @"INSERT INTO Evento 
                            (Nombre, Imagen, Descripcion, IdTipoEvento, IdEstadoEvento, NumAsistentes, RanEdadAsistentes, GeneroAsistentes, FechaInicio, FechaFin, Lugar, UsuarioId, FechaCreacion) 
                            VALUES (@Nombre, @Imagen, @Descripcion, @TipoEvento, @EstadoEvento, @NumeroAsistentes, @RangoEdadAsistentes, @GeneroAsistentes, @FechaInicio, @FechaFin, @Lugar, @UsuarioId, @FechaCreacion)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                    command.Parameters.AddWithValue("@Descripcion", txtDescripcion.Text);
                    command.Parameters.AddWithValue("@TipoEvento", ddlTipoEvento.SelectedValue);
                    command.Parameters.AddWithValue("@EstadoEvento", ddlEstadoEvento.SelectedValue);
                    command.Parameters.AddWithValue("@NumeroAsistentes", txtNumAsistentes.Text);
                    command.Parameters.AddWithValue("@RangoEdadAsistentes", txtRanEdadAsistentes.Text);
                    command.Parameters.AddWithValue("@GeneroAsistentes", txtGeneroAsistentes.Text);
                    command.Parameters.AddWithValue("@FechaInicio", txtFechaInicio.Text);
                    command.Parameters.AddWithValue("@FechaFin", txtFechaFin.Text);
                    command.Parameters.AddWithValue("@Lugar", txtLugar.Text);
                    command.Parameters.AddWithValue("@Imagen", imagenData);
                    command.Parameters.AddWithValue("@UsuarioId", ddlUsuarioId.SelectedValue);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);

                    command.ExecuteNonQuery();
                }

                // SweetAlert script
                string script = "Swal.fire({ title: 'Acción Exitosa', text: 'Evento Registrado Exitosamente', icon: 'success' }).then((result) => { if (result.isConfirmed) { window.location.href = 'Index.aspx'; } });";
                ClientScript.RegisterStartupScript(this.GetType(), "Registro exitoso", script, true);
            }
        }
    }
}
