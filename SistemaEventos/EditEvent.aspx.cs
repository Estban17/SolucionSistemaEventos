using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace SistemaEventos
{
    public partial class EditEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verificar si se pasó el parámetro "IdEvento"
                string idParam = Request.QueryString["IdEvento"];

                if (!string.IsNullOrEmpty(idParam))
                {
                    int idEvento;
                    // Intentar convertir el parámetro a un entero
                    if (int.TryParse(idParam, out idEvento))
                    {
                        // Cargar los datos del evento basado en el ID
                        LoadEventData(idEvento);
                    }
                    else
                    {
                        // Manejar el caso donde el parámetro no es un entero válido
                        Response.Write("<script>alert('IdEvento no es válido.');</script>");
                    }
                }
                else
                {
                    // Manejar el caso donde no se pasó el parámetro "IdEvento"
                    Response.Write("<script>alert('IdEvento no proporcionado.');</script>");
                }
            }

        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }

        protected void btnEditEvento_Click(object sender, EventArgs e)
        {
            UpdateEvent();
        }
        protected void btnCancelar_Click(Object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        private void LoadEventData(int eventId)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Evento WHERE IdEvento = @IdEvento", conn);
                cmd.Parameters.AddWithValue("@IdEvento", eventId);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    txtNombre.Text = reader["Nombre"].ToString();
                    txtDescripcion.Text = reader["Descripcion"].ToString();
                    // Asigna valores a los demás campos
                    ddlTipoEvento.SelectedValue = reader["IdTipoEvento"].ToString();
                    ddlEstadoEvento.SelectedValue = reader["IdEstadoEvento"].ToString();
                    txtNumAsistentes.Text = reader["NumAsistentes"].ToString();
                    txtRanEdadAsistentes.Text = reader["RanEdadAsistentes"].ToString();
                    txtGeneroAsistentes.Text = reader["GeneroAsistentes"].ToString();
                    txtFechaInicio.Text = Convert.ToDateTime(reader["FechaInicio"]).ToString("yyyy-MM-dd");
                    txtFechaFin.Text = Convert.ToDateTime(reader["FechaFin"]).ToString("yyyy-MM-dd");
                    txtLugar.Text = reader["Lugar"].ToString();
                    ddlUsuarioId.SelectedValue = reader["UsuarioId"].ToString();
                }
            }
        }

        private void UpdateEvent()
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand(@"UPDATE Evento SET 
                    Nombre = @Nombre,
                    Descripcion = @Descripcion,
                    IdTipoEvento = @IdTipoEvento,
                    IdEstadoEvento = @IdEstadoEvento,
                    NumAsistentes = @NumAsistentes,
                    RanEdadAsistentes = @RanEdadAsistentes,
                    GeneroAsistentes = @GeneroAsistentes,
                    FechaInicio = @FechaInicio,
                    FechaFin = @FechaFin,
                    Lugar = @Lugar,
                    UsuarioId = @UsuarioId
                    WHERE IdEvento = @IdEvento", conn);

                // Asignación de valores de los controles
                cmd.Parameters.AddWithValue("@Nombre", txtNombre.Text);
                cmd.Parameters.AddWithValue("@Descripcion", txtDescripcion.Text);
                cmd.Parameters.AddWithValue("@IdTipoEvento", ddlTipoEvento.SelectedValue);
                cmd.Parameters.AddWithValue("@IdEstadoEvento", ddlEstadoEvento.SelectedValue);
                cmd.Parameters.AddWithValue("@NumAsistentes", txtNumAsistentes.Text);
                cmd.Parameters.AddWithValue("@RanEdadAsistentes", txtRanEdadAsistentes.Text);
                cmd.Parameters.AddWithValue("@GeneroAsistentes", txtGeneroAsistentes.Text);
                cmd.Parameters.AddWithValue("@FechaInicio", DateTime.Parse(txtFechaInicio.Text));
                cmd.Parameters.AddWithValue("@FechaFin", DateTime.Parse(txtFechaFin.Text));
                cmd.Parameters.AddWithValue("@Lugar", txtLugar.Text);
                cmd.Parameters.AddWithValue("@UsuarioId", ddlUsuarioId.SelectedValue);
                cmd.Parameters.AddWithValue("@IdEvento", Request.QueryString["IdEvento"]); // Asegúrate de que este ID esté en la URL

                conn.Open();
                cmd.ExecuteNonQuery();

                // Mensaje de éxito
                string script = "Swal.fire({ title: 'Editar Evento', text: 'Evento Editado', icon: 'success', confirmButtonText: 'Aceptar' });";
                ClientScript.RegisterStartupScript(this.GetType(), "EditEventAlert", script, true);
            }
        }
    }
}
