using CentroVivoControlInterno.Controladores;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentroVivoControlInterno
{
    public partial class PNC : System.Web.UI.Page
    {
        string url = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["usuario"] = "otto";
            if (!IsPostBack)
            {

            }
            url = HttpContext.Current.Request.Url.AbsoluteUri;
            string[] modulo = url.Split('?');
            string parametros = modulo[1].ToString();
            string[] par = parametros.Split('-');
            //string[] parametros = par.Split('-');

            txtModulo.Text = par[0];
            txtPaso.Text = par[1];
        }

        protected void btnIngresarContenido_Click(object sender, EventArgs e)
        {
            PncM pnc = new PncM();
            PncC pnc1 = new PncC();
            pnc.usuario = Session["usuario"].ToString();
            pnc.modulo = txtModulo.Text;
            pnc.paso = txtPaso.Text;
            pnc.descripcion = txtDescipcion.Text;
            pnc1.IngresoPnc(pnc);

            limpiarCampos();

        }

        public void limpiarCampos()
        {

            txtModulo.Text = string.Empty;
            txtPaso.Text = string.Empty;
            txtDescipcion.Text = string.Empty;


        }

    }
}