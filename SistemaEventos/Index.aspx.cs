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

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Select")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                // Lógica para ver la actividad
            }
            else if (e.CommandName == "Edit")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                // Lógica para editar el evento
                Response.Redirect("EditEvent.aspx");
            }
            else if (e.CommandName == "Delete")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                // Lógica para eliminar el evento
            }
        }

    }
}