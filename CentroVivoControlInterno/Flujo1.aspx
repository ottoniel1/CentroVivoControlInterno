<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flujo1.aspx.cs" Inherits="CentroVivoControlInterno.Flujo1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .end-element {
            fill: #FFCCFF;
        }
    </style>
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
                        'end': {
                            'class': 'end-element'
                        }
                    },
                    'flowstate': {
                        'past': { 'fill': '#CCCCCC', 'font-size': 20 },
                        'current': { 'fill': 'yellow', 'font-color': 'red', 'font-weight': 'bold' },
                        'future': { 'fill': '#FFFF99' },
                        'request': { 'fill': 'blue', 'font-color': 'white' },
                        'invalid': { 'fill': '#444444', 'font-color': 'white' },
                        'approved': { 'fill': '#58C4A3', 'font-size': 12, 'yes-text': 'SI', 'no-text': 'NO' },
                        'rejected': { 'fill': '#C45879', 'font-size': 12, 'yes-text': 'n/a', 'no-text': 'REJECTED' }
                    }
                });

                $('[id^=sub1]').click(function () {
                    alert('info here');
                });
            })();

        };

        function myFunction(event, node) {
            console.log("You just clicked this node:", node);
        }

    </script>

    <div hidden="false">
        <textarea id="code" style="width: 100%;" rows="11">
          st=>start: Start|past:>https://localhost:44322/PNC?Control_de_lecturas-start
          e=>end: End|past:>https://localhost:44322/PNC?Control_de_lecturas-End
          op1=>operation: Toma de lecturas|past:>https://localhost:44322/PNC?Control_de_lecturas-Toma_de_lecturas
          op2=>operation: Notas de cobro|current:>https://localhost:44322/PNC?Control_de_lecturas-Toma_de_lecturas
          op3=>operation: Actualización del libro de lecturas manuales|current:>https://localhost:44322/PNC?Control_de_lecturas-Actualización_del_libro_de_lecturas_manuales
          op4=>operation: Libro Transacciones Otros Bancos|current:>https://localhost:44322/PNC?Control_de_lecturas-Libro_Transacciones_Otros_Bancos
          op5=>operation: Reportes|past:>https://localhost:44322/PNC?Control_de_lecturas-Reportes
          op6=>operation: Mantenimiento|current:>https://localhost:44322/PNC?Control_de_lecturas-Mantenimiento
          op7=>operation: Recibos Contables|current:>https://localhost:44322/PNC?Control_de_lecturas-Recibos_Contables
          sub=>subroutine: Nomenclatura|past:>https://localhost:44322/PNC?Control_de_lecturas-Nomenclatura
          cond=>condition: Pagó en G&T?|approved:>https://localhost:44322/PNC?Control_de_lecturas-Pagó_en_G&T
          io1=>inputoutput: Libro de lecturas manuales|request:>https://localhost:44322/PNC?Control_de_lecturas-Libro_de_lecturas_manuales
          
          st->op1(right)->io1
          io1(right)->op2(right)->cond
          cond(yes, right)->sub
          cond(no)->op4
          op4->sub
          sub->op6->op7
          op7(right)->op5->e
          

          
          

          st@>op1({"stroke":"Red"})@>cond({"stroke":"Red","stroke-width":6,"arrow-end":"classic-wide-long"})@>op2({"stroke":"Green"})@>e({"stroke":"Red"})
        </textarea>
    </div>
    <div hidden="false">
        <button id="run" type="button">Run</button>
    </div>
    <div id="canvas"></div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
