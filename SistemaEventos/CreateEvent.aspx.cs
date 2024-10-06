using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            string script = @"
        Swal.fire({
            title: 'Creación de evento',
            text: 'Evento creado',
            icon: 'success',
            confirmButtonText: 'Aceptar'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location.href = 'CreateEvent.aspx'; // Redirigir después de aceptar
            }
        });";

            ClientScript.RegisterStartupScript(this.GetType(), "CrearEventoAlert", script, true);
        }

    }
}