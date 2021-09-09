using CentroVivoControlInterno.Contollers;
using CentroVivoControlInterno.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentroVivoControlInterno
{
    public partial class Login : System.Web.UI.Page
    {
        private UsuarioC usuarioC;
        private UsuarioM usuarioM;
        private DataTable data;

        protected void Page_Load(object sender, EventArgs e)
        {
            ViewState["id_tipo"] = string.Empty;


            if (!IsPostBack)
            {
                if (HttpContext.Current.Session["error"] != null)
                {
                    lblWarning.Text = Session["error"].ToString();
                    lblWarning.Visible = true;
                    txtUsuario.Focus();

                }else
                    limpiarAlert();
            }

            
        }
        void limpiarAlert()
        {
            lblSuccess.Text = lblError.Text = lblWarning.Text = string.Empty;
            lblSuccess.Visible = lblError.Visible = lblWarning.Visible = false;
        }

        protected void btnInicioSession_Click(object sender, EventArgs e)
        {
            limpiarAlert();

            if (txtUsuario.Text !=string.Empty && txtContrasena.Text != string.Empty)
            {
                usuarioM = new UsuarioM();
                usuarioC = new UsuarioC();
                data = new DataTable();
                usuarioM.usuario = txtUsuario.Text.TrimEnd();
                usuarioM.contrasena = txtContrasena.Text.TrimEnd();
                data = usuarioC.InicioSesion(usuarioM);

                if (data.Rows.Count > 0)
                {
                    int id_tipo = int.Parse(data.Rows[0]["tipo_usuario"].ToString());
                    Session["id_tipo"] = id_tipo;
                    Session["sesion"] = data.Rows[0]["usuario"].ToString();
                    Response.Redirect("/");

                }
                else
                {
                    txtContrasena.Text = txtUsuario.Text = string.Empty;
                    txtUsuario.Focus();
                    lblError.Text = "El usuario o Contraseña no exixten!!!";
                    lblError.Visible = true;
                }

            }
        }
    }
}