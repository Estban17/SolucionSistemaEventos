﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
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
                EliminarRegistro(id);

            }
        }

        private void EliminarRegistro(int id)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Evento WHERE IdEvento = @IdEvento"; // Cambia TuTabla y Id según tu esquema
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@IdEvento", id);

                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("Login.aspx");
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