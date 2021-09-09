<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PNC.aspx.cs" Inherits="CentroVivoControlInterno.PNC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <div class="container">
     <div class="row" >
        <div class="col">
            <asp:Label ID="lblTitulo" runat="server">Formulario</asp:Label>
        </div>
         </div>
        <div class="row">
           
           
            <div class="col">
                <asp:Label ID="lblusuario" runat="server">Usuario:</asp:Label>
            </div>
           

        </div>
        <br />
        <div class="row">
           
           
            <div class="col">
                <asp:Label ID="Label1" runat="server" Width="100%">Modulo:</asp:Label>
                <asp:TextBox ID="txtModulo" runat="server" CssClass="form-control " Width="100%" ></asp:TextBox>
                <asp:DropDownList ID="ddlProceso" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlProceso_SelectedIndexChanged" AutoPostBack="true" ></asp:DropDownList>

            </div>
           

         
        </div>
        <br />
        <div class="row">
           
           
            <div class="col">
                <asp:Label ID="lblPaso" runat="server" Width="100%" >Paso:</asp:Label>
                <asp:TextBox ID="txtPaso" runat="server" CssClass="form-control" Width="100%" ></asp:TextBox>
                <asp:DropDownList ID="ddlDetalleProceso" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlDetalleProceso_SelectedIndexChanged"></asp:DropDownList>

            </div>
          

        </div>
        <br />
           <div class="row">
           
           
            <div class="col">
                <asp:Label ID="lblDescripcion" runat="server" Width="100%"  >Comentario:</asp:Label>
                <asp:TextBox ID="txtDescipcion" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" ></asp:TextBox>
            </div>
            

        </div>
        
        <br />
           <div class="row">
           
           
            <div class="col">
              
              <asp:Button ID="btnIngresarContenido" runat="server" CssClass="btn btn-success" Text="Ingresar Contenido" OnClick="btnIngresarContenido_Click" Width="100%" />
                </div>
           

        </div>

   

        </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FooterContent" runat="server">




</asp:Content>
