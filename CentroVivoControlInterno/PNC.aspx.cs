using CentroVivoControlInterno.Controladores;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentroVivoControlInterno
{
    public partial class PNC : System.Web.UI.Page
    {
        string url = "";
        PncC pncC; //= new PncC();
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["usuario"] = "otto";
            var wb = new WebClient();
            var data = new NameValueCollection();
            int idProceso = 0;
            if (!IsPostBack)
            {
                try
                {
                    url = HttpContext.Current.Request.Url.AbsoluteUri;
                    llenarProceso(ddlProceso);
                    if (int.Parse(ddlProceso.SelectedValue.ToString()) > 0)
                        idProceso = int.Parse(ddlProceso.SelectedValue);
                    llenarProcesoDetalle(ddlDetalleProceso, idProceso);
                    {
                        string[] modulo = url.Split('?');
                        string parametros = modulo[1].ToString();
                        string[] par = parametros.Split('-');
                        //string[] parametros = par.Split('-');

                        txtModulo.Text = par[0];
                        txtPaso.Text = par[1];

                        ddlProceso.SelectedValue = par[0];
                        ddlDetalleProceso.SelectedValue = par[1];
                    }

                }
                catch (Exception ex)
                {

                    //Response.Redirect("~/PNC.aspx");
                }

            }
            else
            {
                try
                {
                    url = HttpContext.Current.Request.Url.AbsoluteUri;

                    {
                        string[] modulo = url.Split('?');
                        string parametros = modulo[1].ToString();
                        string[] par = parametros.Split('-');
                        //string[] parametros = par.Split('-');

                        txtModulo.Text = par[0];
                        txtPaso.Text = par[1];
                    }

                }
                catch (Exception ex)
                {

                  //  Response.Redirect("~/PNC.aspx");
                }


            }
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


        public void llenarProceso(DropDownList drop)
        {
            DataTable dt = new DataTable();
            pncC = new PncC();
            drop.ClearSelection();
            drop.Items.Clear();
            drop.AppendDataBoundItems = true;
            drop.Items.Add("Elija un valor");
            drop.Items[0].Value = "0";
            drop.DataSource = pncC.CatalogoProceso(0,1);
            drop.DataTextField = "proceso";
            drop.DataValueField = "id_catProceso";
            drop.DataBind();

        }
        public int  llenarProcesoDetalle(DropDownList drop, int idProceso)
        {
            DataTable dt = new DataTable();
            pncC = new PncC();
            int idProcesoDetalle = 0;
            drop.ClearSelection();
            drop.Items.Clear();
            drop.AppendDataBoundItems = true;
            drop.Items.Add("Elija un valor");
            drop.Items[0].Value = "0";
            drop.DataSource = pncC.CatalogoProceso(idProceso, 2);
            drop.DataTextField = "descripcion";
            drop.DataValueField = "id_detalleproceso";
            drop.DataBind();
            return idProcesoDetalle;
        }

        protected void ddlProceso_SelectedIndexChanged(object sender, EventArgs e)
        {
            //llenarProceso(ddlProceso);
            int idProceso = 0;
            if (int.Parse(ddlProceso.SelectedValue.ToString()) > 0)
                idProceso = int.Parse(ddlProceso.SelectedValue);
            llenarProcesoDetalle(ddlDetalleProceso, idProceso);
            
        }

        protected void ddlDetalleProceso_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int idProceso = 0;
            //if (int.Parse(ddlProceso.SelectedValue.ToString()) > 0)
            //    idProceso = int.Parse(ddlProceso.SelectedValue);
            //llenarProcesoDetalle(ddlDetalleProceso, idProceso);
            
        }
    }
}