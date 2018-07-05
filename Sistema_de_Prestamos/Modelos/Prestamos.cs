using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Prestamos.Modelos
{
    public class Prestamos
    {
        public int id_solicitud { get; set; }
        public int Cuota { get; set; }
        public int cantidad_Solicitada { get; set; }
        public int interes { get; set; }
        public int aprobacion { get; set; }
        public int forma_de_pago { get; set; }
        public Clientes cliente { get; set; }
        public Garante garante { get; set; }
        public DateTime fecha_de_solicitud { get; set;}

        public Prestamos(int cuota, int cantidad_solicitada, int intere, int aprobacio, int forma_de_pag, Garante garant,Clientes client)
        {
            //id_solicitud = id_solicitud;
            Cuota = cuota;
            cantidad_Solicitada = cantidad_solicitada;
            interes = intere;
            aprobacion = aprobacio;
            forma_de_pago = forma_de_pag;
            cliente = client;
            garante = garant;
            //fecha_de_solicitud = fecha_de_solicitud;
        }

        public static  String GetFechasDeCuotas()
        {
            DateTime hoy = DateTime.Today;

            Console.WriteLine(hoy.ToString("d"));
            Console.WriteLine(hoy.ToString("D"));
            Console.WriteLine(hoy.ToString("g"));
            return hoy.ToString("d")+"+" + hoy.ToString("D")+"+ " + hoy                 .ToString("g");
        }


        public void insertarPrestamos()
        {
            Conexion.insertar("insert into  solicitud_prestamo values ("+Cuota+","+cantidad_Solicitada+","+interes+","+aprobacion+","+forma_de_pago+","+cliente.idCliente+","+garante.idGarante+",getdate())");
            

        }
    }




}   