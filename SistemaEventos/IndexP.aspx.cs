using System;
using System.Collections.Generic;
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
        protected void btnVerEvent_Click(object sender, EventArgs e)
        {
            //Button btn = (Button)sender;
            //string eventoSeleccionado = btn.CommandArgument;

            //// Aquí puedes realizar acciones basadas en el evento seleccionado
            //Response.Write($"Te has registrado para: {eventoSeleccionado}");

            /* Ver desde la bd si el evento tiene mas de una actividad mostrar las actividades par que elija a cual o cuales registrarse, si solo es la
             * actividad del mismo evento registrarlo automaticamente y si hay un campo estra que llenar mandarlo al formulario*/
            Response.Redirect("FormRegP.aspx");
        }
    }
}