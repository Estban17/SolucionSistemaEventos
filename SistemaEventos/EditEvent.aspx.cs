using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEventos
{
    public partial class EditEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
        }
        protected void btnEditEvento_Click(object sender, EventArgs e)
        {
            string script = "Swal.fire({ title: 'Editar Evento', text: 'Evento Editado', icon: 'success', confirmButtonText: 'Aceptar' });";
            ClientScript.RegisterStartupScript(this.GetType(), "EditEventAlert", script, true);
        }
    }
}