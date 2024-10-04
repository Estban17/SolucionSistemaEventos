using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.IO;

using System.Web.UI;

namespace SistemaEventos
{
    public partial class RegistroP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // Evento al presionar el botón de registro
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string patron = "Eventos";
            string conectar = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conectarSqlConnection = new SqlConnection(conectar);
            SqlCommand con = new SqlCommand("sp_InsertarParticipante", conectarSqlConnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            con.Connection.Open();
            con.Parameters.Add("@Nombre", SqlDbType.NVarChar, 100).Value = tbNombre.Text;
            con.Parameters.Add("@Paterno", SqlDbType.NVarChar, 100).Value = tbPaterno.Text;
            con.Parameters.Add("@Materno", SqlDbType.NVarChar, 100).Value = tbMaterno.Text;
            con.Parameters.Add("@CURP", SqlDbType.NVarChar, 100).Value = tbCURP.Text;
            con.Parameters.Add("@Email", SqlDbType.NVarChar, 100).Value = tbCorreo.Text;
            con.Parameters.Add("@Telefono", SqlDbType.NVarChar, 20).Value = tbTelefono.Text;
            con.Parameters.Add("@Estado", SqlDbType.NVarChar, 100).Value = tbEstado.Text;
            con.Parameters.Add("@Empresa", SqlDbType.NVarChar, 50).Value = tbEmpresa.Text;
            con.Parameters.Add("@Contrasena", SqlDbType.NVarChar, 100).Value = tbContrasena.Text;
            con.Parameters.Add("@ConfirmarContrasena", SqlDbType.NVarChar, 100).Value = tbConfirmarContrasena.Text;
            con.Parameters.Add("@Clave", SqlDbType.NVarChar, 100).Value = patron;
            SqlDataReader reader = con.ExecuteReader();
            if (reader.Read())
            {
                //string datoAdicional1 = DatoAdicional(tbUsuario.Text);
                //string script = "Swal.fire('Participante','Registro Exitoso','success').then((result) => { setTimeout(function() { window.location.href = 'LoginP.aspx'; }, 2000); });";
                //ClientScript.RegisterStartupScript(this.GetType(), "Cambio exitoso", script, true);
                //Session["usuario"] = datoAdicional1;
                //Response.Redirect("LoginP.aspx");
                string script = "Swal.fire('Contraseña o Usuario incorrecto','Por favor, intentelo de nuevo','error')";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", script, true);
            }
            else
            {
                string script = "Swal.fire('Participante','Registro Exitoso','success').then((result) => { setTimeout(function() { window.location.href = 'LoginP.aspx'; }, 2000); });";
                ClientScript.RegisterStartupScript(this.GetType(), "Cambio exitoso", script, true);
                
            }
            con.Connection.Close();
        }

        // Método para registrar un nuevo participante
        
    }
}
