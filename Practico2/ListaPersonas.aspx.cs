using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practico2
{
    public partial class Formulario_web2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if(this.documento.Text == "")
            this.P2net.SelectCommand = "SELECT * FROM [Personas]";
            else
                this.P2net.SelectCommand = "SELECT * FROM Personas WHERE Documento = "+this.documento.Text+" ;";
        }
    }
}