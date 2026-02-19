using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Libreria_Universitaria
{
    public partial class Home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
  
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
         
            string consulta = txtConsulta.Text;
            Response.Write("<script>alert('Buscando productos relacionados con: " + consulta + "');</script>");
        }
    }
}