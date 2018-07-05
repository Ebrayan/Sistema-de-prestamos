using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Prestamos
{
    public class Aplicacion
    {
        public static Modelos.Empleado usuarioActive = null;

        public static void iniciarSecion(Modelos.Empleado usuarioActivo)
        {
            usuarioActive = usuarioActivo;
        }


        public static Modelos.Empleado GetEmpleadoActivo()
        {       
            if (usuarioActive == null)
            {
                usuarioActive = new Modelos.Empleado();
            }
            return usuarioActive;
        }
    }

}