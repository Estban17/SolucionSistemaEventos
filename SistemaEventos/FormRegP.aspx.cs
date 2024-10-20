﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaEventos
{
    public partial class FormRegP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Response.Redirect("LoginP.aspx");
        }
        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Registro Finalizado";

            string script = "Swal.fire({ title: 'Registro a la Atividad', text: 'Has sido registrado', icon: 'success', confirmButtonText: 'Confirmar' });";
            ClientScript.RegisterStartupScript(this.GetType(), "RegistrarParticipante", script, true);
        }
    }
}