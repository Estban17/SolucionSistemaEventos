﻿using System;
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
            
        }
    }
}