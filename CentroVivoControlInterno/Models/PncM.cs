using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CentroVivoControlInterno
{
    public class PncM
    {

        public string usuario { get; set; }
        public string modulo { get; set; }
        public string paso { get; set; }

        public string descripcion { get; set; }

        public int estado { get; set; }
        public DateTime fecha { get; set; }

        public int idProceso { get; set; }
        public int idDetalleProceso { get; set; }
        public string proceso { get; set; }
        public string descripionProceso { get; set; }

    }
}