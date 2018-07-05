using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Prestamos.Modelos
{
    public class Garante
    {
        public Garante(String nombre, String cedula,String empresa, int sueldo, String residencia, String correo, String contacto)
        {
            Nombre = nombre;
            Cedula = cedula;
            Empresa = empresa;
            Sueldo = sueldo;
            Residencia = residencia;
            Contacto = contacto;
            Correo = correo;
        }

        public void insertarGarante()
        {


               Conexion.insertar("insert into garante values ('"+Nombre+"', '"+Residencia+"', "+Sueldo+", '"+Cedula+"', '"+Empresa+"', '"+Empresa+"', '"+Contacto+"')");

        }

        public int idGarante { get; set; }
        public String  Nombre { get; set; }
        public String Cedula { get; set; }
        public String Empresa { get; set; }
        public int Sueldo { get; set; }
        public String Residencia{ get; set; }
        public String Correo { get; set; }
        public String Contacto { get; set; }
    }
}