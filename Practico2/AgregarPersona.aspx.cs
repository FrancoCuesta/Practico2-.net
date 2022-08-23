using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Practico2
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (this.id.Text != "" && this.nombre.Text != "" && this.apellido.Text != "" && this.documento.Text != "")
                P2net.InsertCommandType = SqlDataSourceCommandType.Text;
            P2net.InsertCommand = "Insert into Personas (id,Nombre,Apellido,Documento) VALUES (@id,@Nombre,@Apellido, @Documento)";

            P2net.InsertParameters.Add("id", id.Text);
            P2net.InsertParameters.Add("Nombre", nombre.Text);
            P2net.InsertParameters.Add("Apellido", apellido.Text);
            P2net.InsertParameters.Add("Documento", documento.Text);
            P2net.Insert();

            id.Text = "";
            nombre.Text = "";
            apellido.Text = "";
            documento.Text = "";
            //this.P2net.InsertCommand = "insert into Persona values (" + this.id.Text + "," + this.nombre.Text + "" + this.apellido.Text + "," + this.documento.Text + ")";
        }
    }
}