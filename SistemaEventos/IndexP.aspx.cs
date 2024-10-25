using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEventos.Participante
{
    public partial class IndexP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] != null)
            {
                string usuariolog = Session["usuario"].ToString();
                lblBienvenida.Text = "Bienvenid@ " + usuariolog;
                CargarEventos();
            }
            else
            {
                Response.Redirect("LoginP.aspx");
            }
        }
        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("LoginP.aspx");
        }
        protected void CargarEventos()
        {
            // Conexión a la base de datos
            string connectionString = "Data Source=.;Initial Catalog=GestionEventos;Persist Security Info=True;User ID=sa;Password=123456;TrustServerCertificate=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Nombre, Descripcion, FechaInicio, FechaFin, Lugar, NumAsistentes, Imagen, GeneroAsistentes, RanEdadAsistentes FROM Evento";
                SqlCommand command = new SqlCommand(query, connection);

                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);

                // Enlazar el Repeater con los datos
                repeaterEventos.DataSource = dataTable;
                repeaterEventos.DataBind();
            }
        }
        protected void btnVerEvent_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string nombreEvento = btn.CommandArgument;
            Response.Redirect($"DetalleEvento.aspx?evento={nombreEvento}");
        }
        protected void repeaterEventos_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            // Este es el manejador de eventos para cuando se haga clic en un botón dentro del Repeater
            if (e.CommandName == "VerEvento")
            {
                string nombreEvento = e.CommandArgument.ToString();
                // Redirigir a otra página con el evento seleccionado
                Response.Redirect($"DetalleEvento.aspx?evento={nombreEvento}");
            }
        }

    }
}