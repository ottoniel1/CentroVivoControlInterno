<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CentroVivoControlInterno.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
<div id="form1" runat="server">

    <dic class="container">
        <h1>group </h1>
        <div class="well">
            <div class="col-lg-6">
                <input type="text" class="alert-info form-control" id="message" />

                    </div>
            <div class="col-lg-6">
                <input type="button" class="btn btn-primary" id="SendMessage" value="Send" />
            </div>
            <div >
                <input type="hidden" id="displayName" />
                <div class="panel panel-body"><h3><b>Chab</b></h3></div>
                <ul id="discussion">

                </ul>
            </div>
            

        </div>

    </dic>


</div>
    <script src="Scripts/jquery.signalR-2.4.2.js"></script>

  <script type="text/javascript">
      $(function () {
          var chat = $.connection.chatHub;
          chat.client.broadcastMessage = function (name, message) {
              var encodedName = $('<div />').text(name).html();
              var encodedMessage = $('<div />').text(message).html();
              $('#discussion').append('<li><string>' + encodedName + '</string>:  ' + encodedMessage + '</li>');
          };
          $('$displayName').val(prompt('Enter you name', ''));
          $('#message').focus();
          $.connection.hub.start().done(function () {
              $('#SendMessage').click(function () {
                  chat.server.send($('#displayName').vat(), $('#message').val());
                  $('#message').val('').focus();
              });
          });

      });

  </script>
</asp:Content>
