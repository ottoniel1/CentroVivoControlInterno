<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Flujo3.aspx.cs" Inherits="CentroVivoControlInterno.Flujo3" %>

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
        st=>start: Start|past:>https://localhost:44322/PNC?Constancias_De_Pago-Start
        e=>end: End|past:>https://localhost:44322/PNC?Constancias_De_Pago-End
        op1=>operation: Cobro de Cuota|past:>https://localhost:44322/PNC?Constancias_De_Pago-Cobro_de_Cuota
        op2=>operation: Consulta de datos|current:>https://localhost:44322/PNC?Constancias_De_Pago-Consulta_de_Datos
        op3=>operation: Llenado de información|current:>https://localhost:44322/PNC?Constancias_De_Pago-Llenado_de_Informacion
        op4=>operation: Generación de constancia de pago|current:>https://localhost:44322/PNC?Constancias_De_Pago-Generacion_de_Constancia_de_Pago
        sub=>subroutine: Nomenclatura|invalid:>https://localhost:44322/PNC?Constancias_De_Pago-Nomenclatura
        cond=>condition: Existe info?|approved:>https://localhost:44322/PNC?Constancias_De_Pago-Existe_Info
        io1=>inputoutput: Cuota de Apto...|request:>https://localhost:44322/PNC?Constancias_De_Pago-Cuota_de_Apto
        
        st->sub->cond
        cond(yes, right)->op2
        cond(no)->io1->op1(right)->e
        op2->op3->op4(left)->e

        st@>op1({"stroke":"Red"})@>cond({"stroke":"Red","stroke-width":6,"arrow-end":"classic-wide-long"})@>op2({"stroke":"Green"})@>e({"stroke":"Red"})
      </textarea>
    </div>
    <div hidden="false">
        <button id="run" type="button">Run</button></div>
    <div id="canvas"></div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
