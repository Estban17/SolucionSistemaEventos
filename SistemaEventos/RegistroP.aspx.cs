using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEventos
{
    public partial class RegistroP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            // Aquí puedes agregar la lógica para registrar el usuario en la base de datos
            // Validar que las contraseñas coincidan y que todos los campos estén llenos

            //if (tbContrasena.Text == tbConfirmarContrasena.Text)
            //{
                // Registro exitoso
                // Lógica de guardado en la base de datos aquí...
                // Puedes mostrar un mensaje de confirmación o redirigir al login
                Response.Redirect("LoginP.aspx");
            //}
            //else
            //{
                // Mostrar un mensaje de error si las contraseñas no coinciden
            //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Las contraseñas no coinciden.');", true);
            //}
        }
    }
}