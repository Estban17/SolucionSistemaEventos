using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEventos.Participante
{
    public partial class LoginP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            string patron = "Eventos";
            string conectar = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conectarSqlConnection = new SqlConnection(conectar);
            SqlCommand con = new SqlCommand("sp_ValidarParticipante", conectarSqlConnection)
            {
                CommandType = CommandType.StoredProcedure
            };
            con.Connection.Open();
            con.Parameters.Add("@CURP", SqlDbType.NVarChar, 50).Value = tbCURP.Text;
            con.Parameters.Add("@Contrasena", SqlDbType.NVarChar, 50).Value = tbContrasena.Text;
            con.Parameters.Add("@Clave", SqlDbType.NVarChar, 50).Value = patron;
            SqlDataReader reader = con.ExecuteReader();
            if (reader.Read())
            {
                string datoAdicional1 = DatoAdicional(tbCURP.Text);


                Session["usuario"] = datoAdicional1;
                Response.Redirect("IndexP.aspx");
            }
            else
            {

                string script = "Swal.fire('Contraseña o Usuario incorrecto','Por favor, intentelo de nuevo','error')";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", script, true);
            }
            con.Connection.Close();
        }
        private string DatoAdicional(string CURP)
        {
            string datoAdicional = string.Empty;
            string conectar = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection conectarSqlConnection = new SqlConnection(conectar))
            {
                string query = "SELECT Nombre FROM VistaParticipante WHERE CURP = @CURP";
                using (SqlCommand cmd = new SqlCommand(query, conectarSqlConnection))
                {
                    cmd.Parameters.AddWithValue("@CURP", CURP);

                    conectarSqlConnection.Open();
                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        datoAdicional = result.ToString();
                    }
                }
            }
            return datoAdicional;
        }
        protected void ReContra(object sender, EventArgs e)
        {
            string script = "Swal.fire({ title: 'Recuperación de contraseña', text: 'Contraseña Recuperada', icon: 'success', confirmButtonText: 'Aceptar' });";
            ClientScript.RegisterStartupScript(this.GetType(), "RecuperarContraseñaAlert", script, true);
        }

    }
}