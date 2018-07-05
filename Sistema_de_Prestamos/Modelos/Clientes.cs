using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_de_Prestamos
{
    public class Clientes
    {
        public int idCliente { get; set; }
        public string Nombre { get; set; }
        public string Telefono { get; set; }
        public string Celular { get; set; }
        public string Cedula { get; set; }
        public string Residencia { get; set; }
        public string Correo{ get; set; }
        public string Sexo { get; set; }
        public string Empresa{ get; set; }
        public string Telefono_Empresa{ get; set; }
        public string Puesto{ get; set; }
        public string Ingreso { get; set; }
        public string Supervisor{ get; set; }
        public string Otro_Ingreso { get; set; }

        public void insertarCliente() {

            
            Conexion.insertar("insert into Clietes values('"+Nombre+"','"+Telefono+"','"+Celular+"','"+Cedula+"','"+Residencia+"','"+Correo+"','"+Sexo+"','"+Empresa+"','"+Telefono_Empresa+"','"+Puesto+"','"+Ingreso+"','"+Supervisor+"','"+Otro_Ingreso+"')");
            Conexion.insertar("insert into  Notificacion(tipo ,empleado,cliente,cantidad ,descripcion) values (4,'"+Aplicacion.usuarioActive.Nombre+"','"+Nombre+"',0,'a')");

        }
    }

    
}