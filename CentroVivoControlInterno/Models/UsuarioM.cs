using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentroVivoControlInterno.Models
{
    public class UsuarioM
    {
        public string usuario { get; set; }
        public string contrasena { get; set; }
        public string habilitado { get; set; }
        public int id_tipo { get; set; }
        public string  tipo_usuario{ get; set; }




    }
}