using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Prestamos.Modelos
{
    public class Empleado
    {
        public Empleado(String nombre,String celular, String sueldo,String usuario, String contra,String categoria)
        {
            Nombre = nombre;
            Celular = celular;
            Sueldo = sueldo;
            Usuario = usuario;
            Contra = contra;
            Categoria = categoria;
        }
        public Empleado()
        {
            Nombre = "";
            Celular = "";
            Sueldo = "";
            Usuario = "";
            Contra = "";
            Categoria = "";
        }

        public String Nombre { get; set; }
        String Celular { get; set; }
        String Sueldo { get; set; }
        String Usuario { get; set; }
        String Contra { get; set; }
        public String Categoria { get; set; }
    }
}