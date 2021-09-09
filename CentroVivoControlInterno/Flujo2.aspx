<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flujo2.aspx.cs" Inherits="CentroVivoControlInterno.Flujo2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8">

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
          st=>start: Start|past:>https://localhost:44322/PNC?Notas_De_Cobro-Start
          e=>end: End|past:>https://localhost:44322/PNC?Notas_De_Cobro-End
          op1=>operation: Libro transaccions otros bancos|past:>https://localhost:44322/PNC?Notas_De_Cobro-Libro_transaccions_otros_bancos
          op2=>operation: Ingreso de Facturas|current:>https://localhost:44322/PNC?Notas_De_Cobro-Ingreso_de_Facturas
          op3=>operation: Actualización del libro de lecturas manuales|current:>https://localhost:44322/PNC?Notas_De_Cobro-Actualización_del_libro_de_lecturas_manuales
          op4=>operation: Confrontas enviadas por el Banco G&T|current:>https://localhost:44322/PNC?Notas_De_Cobro-Confrontas_enviadas_por_el_Banco_G&T
          sub=>subroutine: Nomenclatura|past:>https://localhost:44322/PNC?Notas_De_Cobro-Nomenclatura
          cond=>condition: Existe info?|approved:>https://localhost:44322/PNC?Notas_De_Cobro-Existe_info
          io1=>inputoutput: Ingreso de Lecturas|request:>https://localhost:44322/PNC?Notas_De_Cobro-Ingreso_de_Lecturas
          
          st->op1(right)->cond
          cond(yes, right)->op2
          cond(no)->io1->op4->e
          op2->op3->e

          st@>op1({"stroke":"Red"})@>cond({"stroke":"Red","stroke-width":6,"arrow-end":"classic-wide-long"})@>op2({"stroke":"Green"})@>e({"stroke":"Red"})
        </textarea>
    </div>
    <div hidden="false">
        <button id="run" type="button">Run</button></div>
    <div id="canvas"></div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
