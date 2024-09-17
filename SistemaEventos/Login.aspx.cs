using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SistemaEventos
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            //if (!IsReCaptchValid())
            //{
            //    string script = "Swal.fire('La validación de reCAPTCHA falló.','Por favor, inténtelo de nuevo.','error');";
            //    ClientScript.RegisterStartupScript(this.GetType(), "CaptchaErrorAlert", script, true);
            //    return; // Salir del método si la validación del reCAPTCHA falla
            //}
            //else
            //{
            //    string patron = "ProyectoDIF";
            //    string conectar = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            //    SqlConnection conectarSqlConnection = new SqlConnection(conectar);
            //    SqlCommand con = new SqlCommand("SP_ValidarUsuario", conectarSqlConnection)
            //    {
            //        CommandType = CommandType.StoredProcedure
            //    };
            //    con.Connection.Open();
            //    con.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            //    con.Parameters.Add("@Contrasena", SqlDbType.VarChar, 50).Value = tbContrasena.Text;
            //    con.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;
            //    SqlDataReader reader = con.ExecuteReader();
            //    if (reader.Read())
            //    {
            //        string datoAdicional1 = DatoAdicional(tbUsuario.Text);
            

            //        Session["usuario"] = datoAdicional1;
                    Response.Redirect("Index.aspx");
            //    }
            //    else
            //    {

                   // string script = "Swal.fire('Contraseña o Usuario incorrecto','Por favor, intentelo de nuevo','error')";
                   // ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", script, true);
                //}
                //con.Connection.Close();
            //}
        }

        
    }
}