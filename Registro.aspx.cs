using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria_Universitaria
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                LlenarPaises();


            }
        }

        private void LlenarPaises()
        {
            ddlPais.Items.Clear();
            ddlPais.Items.Add(new ListItem("Seleccione...", ""));
            ddlPais.Items.Add(new ListItem("El Salvador", "SV"));
            ddlPais.Items.Add(new ListItem("Guatemala", "GT"));
            ddlPais.Items.Add(new ListItem("Honduras", "HN"));
            ddlPais.Items.Add(new ListItem("México", "MX"));
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = txbNombre.Text;
                string carnet = txbCarnet.Text;
                string correo = txbCorreo.Text;
                string pais = ddlPais.SelectedItem.Text; 

                lblResultado.ForeColor = System.Drawing.Color.Green;
                lblResultado.Text = "Registro exitoso<br />" +
                                    "Nombre: " + nombre + "<br />" +
                                    "Carnet: " + carnet + "<br />" +
                                    "Correo: " + correo + "<br />" +
                                    "País: " + pais;
            }
        }
    }
}