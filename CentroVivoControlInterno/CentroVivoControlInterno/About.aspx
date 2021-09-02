<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="CentroVivoControlInterno.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
  

     <style type="text/css">
          .end-element { fill : #FFCCFF; }
        </style>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.3.0/raphael.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <script src="https://flowchart.js.org/flowchart-latest.js"></script>
        <!-- <script src="../release/flowchart.min.js"></script> -->
        <script>

            window.onload = function () {
                var btn = document.getElementById("run"),
                    cd = document.getElementById("code"),
                    chart;

                (btn.onclick = function () {
                    var code = cd.value;

                    if (chart) {
                      chart.clean();
                    }

                    chart = flowchart.parse(code);
                    chart.drawSVG('canvas', {
                      // 'x': 30,
                      // 'y': 50,
                      'line-width': 3,
                      'maxWidth': 3,//ensures the flowcharts fits within a certian width
                      'line-length': 50,
                      'text-margin': 10,
                      'font-size': 14,
                      'font': 'normal',
                      'font-family': 'Helvetica',
                      'font-weight': 'normal',
                      'font-color': 'black',
                      'line-color': 'black',
                      'element-color': 'black',
                      'fill': 'white',
                      'yes-text': 'yes',
                      'no-text': 'no',
                      'arrow-end': 'block',
                      'scale': 1,
                      'symbols': {
                        'start': {
                          'font-color': 'red',
                          'element-color': 'green',
                          'fill': 'yellow'
                        },
                        'end':{
                          'class': 'end-element'
                        }
                      },
                      'flowstate' : {
                        'past' : { 'fill' : '#CCCCCC', 'font-size' : 20},
                        'current' : {'fill' : 'yellow', 'font-color' : 'red', 'font-weight' : 'bold'},
                        'future' : { 'fill' : '#FFFF99'},
                        'request' : { 'fill' : 'blue','font-color': 'white'},
                        'invalid': {'fill' : '#444444','font-color': 'white'},
                        'approved' : { 'fill' : '#58C4A3', 'font-size' : 12, 'yes-text' : 'SI', 'no-text' : 'NO' },
                        'rejected' : { 'fill' : '#C45879', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' }
                      }
                    });

                    $('[id^=sub1]').click(function(){
                      alert('info here');
                    });
                })();

            };

            function myFunction(event, node) {
              console.log("You just clicked this node:", node);
            }
            
        </script>
  
        <div hidden="true">
          <textarea id="code" style="width: 100%;" rows="11">
          st=>start: Start|past:>https://localhost:44322/PNC/betomorro-otravezbetomorro [blank]
          e=>end: End|past:>http://www.google.com
          op1=>operation: Libro transaccions otros bancos|past:$myFunction
          op2=>operation: Ingreso de Facturas|current
          op3=>operation: Actualización del libro de lecturas manuales|current
          op4=>operation: Confrontas enviadas por el Banco G&T|current
          sub=>subroutine: Nomenclatura|past
          cond=>condition: Existe info?|approved:>http://www.google.com
          io1=>inputoutput: Ingreso de Lecturas|request
          
          st->op1(right)->cond
          cond(yes, right)->op2
          cond(no)->io1->op4->e
          op2->op3->e

          st@>op1({"stroke":"Red"})@>cond({"stroke":"Red","stroke-width":6,"arrow-end":"classic-wide-long"})@>op2({"stroke":"Green"})@>e({"stroke":"Red"})
        </textarea>
      </div>
                  <div hidden="true"><button id="run" type="button">Run</button></div>
        <div id="canvas"></div>
   
    
</asp:Content>


