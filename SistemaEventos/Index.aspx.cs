using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEventos
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }
        protected void btnVerEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditEvent.aspx");
        }
        protected void btnNewEvent_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateEvent.aspx");
        }

        protected void btnEventos_Click(object sender, EventArgs e)
        { 
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Obtener el IdEvento del evento seleccionado
            int idEvento = Convert.ToInt32(GridView1.SelectedDataKey.Value);

            // Redirigir a la página de crear actividades, pasando el IdEvento en la URL
            Response.Redirect($"CreateActivity.aspx?IdEvento={idEvento}");
        }
    }
}