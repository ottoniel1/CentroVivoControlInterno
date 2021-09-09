using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentroVivoControlInterno
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["error"] = string.Empty;
           // Session["id_tipo"] = 0;
            string sesion = string.Empty;
            if (!IsPostBack)
            {
                if (HttpContext.Current.Session["sesion"] != null)
                {
                     sesion = Session["sesion"].ToString();

                }
                if (sesion.Length > 0)
                {
                    int id_tipo = int.Parse(Session["id_tipo"].ToString());
                    if (id_tipo == 1 )
                    {
                        panel1.Visible = false;
                        panel2.Visible = true;
                    }

                }
                else
                {
                    Session["error"] = "!Es obligatorio Iniciar Session";
                    Response.Redirect("~/Login");
                    
                }

            }
        }
    }
}