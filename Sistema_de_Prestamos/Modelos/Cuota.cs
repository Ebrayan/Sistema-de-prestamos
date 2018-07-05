using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Prestamos.Modelos
{
    public class Cuota
    {
        public int idPrestamo { get; set; }
        public int idCuota { get; set; }
        public int monto { get; set; }
        public int montoCuota { get; set; }
        public int interes_cuota { get; set; }
        public int estado { get; set; }
        public int no_cuota{ get; set; }
        public DateTime fecha_de_pago { get; set; }
    }
}