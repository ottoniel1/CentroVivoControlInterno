<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flujo5.aspx.cs" Inherits="CentroVivoControlInterno.Flujo5" %>

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
                        'approved': { 'fill': '#58C4A3', 'font-size': 12, 'yes-text': 'Apartamentos', 'no-text': 'Arrendatarios' },
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
          st=>start: Start|past:>https://localhost:44322/PNC?Reporteria-Start
          e=>end: End|past:>https://localhost:44322/PNC?Reporteria-End
          op1=>operation: Estado de cuentas|past:>https://localhost:44322/PNC?Reporteria-Estado_de_Cuentas
          op2=>operation: Frecuencia de incumplimientos|current:>https://localhost:44322/PNC?Reporteria-Frecuencia_de_Incumplimientos
          op3=>operation: Reportes Contables|current:>https://localhost:44322/PNC?Reporteria-Reportes_Contables
          op4=>operation: Generación de Reportes|current:>https://localhost:44322/PNC?Reporteria-Generacion_de_Reportes
          op5=>operation: Buscar nombre|current:>https://localhost:44322/PNC?Reporteria-Buscar_Nombre
          sub=>subroutine: Nomenclatura|past:>https://localhost:44322/PNC?Reporteria-Nomenclatura
          sub1=>subroutine: Reportes Administrativos|past:>https://localhost:44322/PNC?Reporteria-Reportes_Administrativos
          cond=>condition: Existe confronta de pago|approved:>https://localhost:44322/PNC?Reporteria-Existe_Confronta_de_Pago
          io1=>inputoutput: Interfaz de reportería|request:>https://localhost:44322/PNC?Reporteria-Interfaz_de_Reporteria
          
          st->sub(right)->op1
          op1(right)->op2(right)->op3->op4
          op4->sub1->cond
          cond(yes, right)->op5->io1
          cond(no)->io1
          io1->e

          st@>op1({"stroke":"Red"})@>cond({"stroke":"Red","stroke-width":6,"arrow-end":"classic-wide-long"})@>op2({"stroke":"Green"})@>e({"stroke":"Red"})
        </textarea>
    </div>
    <div hidden="false">
        <button id="run" type="button">Run</button>
    </div>
    <div id="canvas"></div>

<%--    op2->cond
cond(yes, right)->op1
cond(no)->op4
op4->op2(right)->op3->e
op1->op3->e--%>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
