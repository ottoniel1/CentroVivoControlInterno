using CentroVivoControlInterno.Controladores;
using CentroVivoControlInterno.Models;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace CentroVivoControlInterno.Contollers
{
    public class UsuarioC
    {
        ConexionDB conexion;
        DataTable data;


        public DataTable InicioSesion (UsuarioM usuario)
        {
            conexion = new ConexionDB();
            try
            {
                conexion.AbrirConexion();

                data = new DataTable();
                string query = string.Format("CALL sp_iniciarSession(0, '{0}', '{1}', 0,5) ", usuario.usuario, usuario.contrasena);
                MySqlDataAdapter dp = new MySqlDataAdapter(query, conexion.conectar);
                dp.Fill(data);
            }
            catch (Exception)
            {

                //throw;
            }
            finally
            {
                conexion.CerrarConexion();
            }


            return data;
        }


    }
}