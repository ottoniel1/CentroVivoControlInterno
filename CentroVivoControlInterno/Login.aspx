<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CentroVivoControlInterno.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        .shadow{
          box-shadow: 2px 2px 5px #999;

        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class=" container">
            <br />
            <br />
            <br />
            <br />
            <br />
            <center>
                <div class="row   ">


                    <div class="col-lg-4"></div>
                    <div class="col-lg-4 panel panel-default shadow ">
                        <br />
                        <br />
                        <h2 class="">Inicio de Sesion</h2>
                        <br/>
                        <br />
                        <br />
                        <div clas="row">
                            <div class="col-lg-12">
                                <asp:Label ID="lblUsuario" runat="server" Width="100%" CssClass="text-left">Usuario:</asp:Label>
                                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control shadow"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <br />
                            <div class="col-lg-12">
                                <asp:Label ID="Label1" runat="server" CssClass="text-left" Width="100%" >Contraseña:</asp:Label>
                                <asp:TextBox ID="txtContrasena" TextMode="Password" runat="server" CssClass="form-control shadow" Width="100%"></asp:TextBox>
                            </div>
                            <br />
                            <br />
                            <br />
                            <br />
                            <div class="col-lg-12">
                                <asp:Button ID="btnInicioSession" runat="server" OnClick="btnInicioSession_Click" CssClass="btn btn-primary shadow" Width="100%" Text="INICIO SESION" />
                            </div>
                            <br />
                            <br />
                            <br />
                            <div class="col-lg-12">
                                <asp:Label ID="lblError" runat="server" CssClass="alert alert-danger" Width="100%" Height="38px" Visible="false"></asp:Label>
                                <asp:Label ID="lblSuccess" runat="server" CssClass="alert alert-success" Width="100%" Height="38px" Visible="false"></asp:Label>
                                <asp:Label ID="lblWarning" runat="server" CssClass=" form-control alert alert-warning " Width="100%" Height="38px" Visible="false"></asp:Label>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </center>

        </div>
    </form>
</body>
</html>
