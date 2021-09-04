using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentroVivoControlInterno.Controladores
{
    public class ConexionDB
    {


        private String contenido = "server=localhost; database =db_solucion; user=root; password =admin";
        //private String contenido = "Server=centrovivo.mysql.database.azure.com; Port=3306; Database=db_solucion; Uid=cvroot@centrovivo; Pwd=Centr0Viv0; SslMode=Preferred;";
        public MySqlConnection conectar;// = new MySqlConnection();
        public void AbrirConexion()
        {
            string sConn;
            sConn = contenido;
            conectar = new MySqlConnection();
            conectar.ConnectionString = sConn;

            try
            {
                conectar.Open();
                Console.WriteLine("Conexión Exitosa");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex + "Fallo en la Conexión");

                throw;
            }
        }

        public void CerrarConexion()
        {
            if (conectar.State == System.Data.ConnectionState.Open)
            {
                conectar.Close();
            }
        }
    }
}