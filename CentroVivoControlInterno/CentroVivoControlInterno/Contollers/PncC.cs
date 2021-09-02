using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


namespace CentroVivoControlInterno.Controladores
{
    public class PncC
    {
        ConexionDB conexion;


        public DataTable IngresoPnc(PncM pnc)
        {
            string query = string.Format("CALL so_pnc('{0}','{1}','{2}',0, '{3}', 1  );", pnc.usuario, pnc.modulo,pnc.paso,pnc.descripcion);
            DataTable dt = new DataTable();

            conexion = new ConexionDB();
            try
            {
                conexion.AbrirConexion();
                MySqlDataAdapter consulta = new MySqlDataAdapter(query, conexion.conectar);
                consulta.Fill(dt);
                conexion.CerrarConexion();

            }
            catch (Exception e)
            {

             
            }

            return dt;
        }
    }
}