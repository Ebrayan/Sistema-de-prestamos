using System;
using System.Collections;
using System.Data.SqlClient;

namespace Sistema_de_Prestamos
{
    public class Conexion
    {
      static  SqlConnection conexion = new SqlConnection("server=THEBRYAN-PC\\SQLEXPRESS ; database=sistemaDePrestamos; integrated security = true");



        public static void insertar(String comando)
        {
            
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
            cmd.ExecuteNonQuery();
            SqlDataAdapter Adaptador = new SqlDataAdapter(cmd);
            conexion.Close();
            
            
        }
        public static void actualizar(String comando)
        {
            
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
            cmd.ExecuteNonQuery();
            SqlDataAdapter Adaptador = new SqlDataAdapter(cmd);
            conexion.Close();
                
            
        }
        public static Boolean iniciarSesion(String contra, String comando)
        {
            Boolean acceso =false;
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
             SqlDataReader lector = cmd.ExecuteReader();
            
            if (lector.Read())
            {
                    if (Convert.ToString(lector["Contra"]) == contra && Convert.ToString(lector["Categoria"]) == "Administrador")
                    {
                        acceso = true;
                        String nombre = Convert.ToString(lector["Nombre"]);
                        String celular = Convert.ToString(lector["Celular"]);
                        String sueldo = Convert.ToString(lector["Sueldo"]);
                        String usuario = Convert.ToString(lector["Usuario"]);
                        String contrasena = Convert.ToString(lector["Contra"]);
                        String categoria = Convert.ToString(lector["Categoria"]);
                        Modelos.Empleado empleado = new Modelos.Empleado(nombre, celular, sueldo, usuario, contrasena, categoria);
                        Aplicacion.iniciarSecion(empleado);
                    }
                }
                else
                {
                    acceso = false;
                }
                conexion.Close();

                return acceso;
        }

        public static Modelos.Garante buscarGarante( String comando)
        {
            Modelos.Garante  garante = null;
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
             SqlDataReader lector = cmd.ExecuteReader();
            
            if (lector.Read())
            {
                        String nombre = Convert.ToString(lector["Nombre"]);
                        String cedula= Convert.ToString(lector["cedula"]);
                        String empresa = Convert.ToString(lector["empresa"]);
                        String sueldo = Convert.ToString(lector["Sueldo"]);
                        String residencia= Convert.ToString(lector["redidencia"]);
                        String correo= Convert.ToString(lector["correo"]);
                        String contacto= Convert.ToString(lector["contacto"]);
                        int  idGarante= Convert.ToInt32(lector["idGarante"]);
                garante = new Modelos.Garante(nombre, cedula, empresa, Convert.ToInt32(sueldo), residencia, correo, contacto);
                garante.idGarante = idGarante;
            }
                conexion.Close();
            return garante;
        }
        public static Clientes buscarCliente( String comando)
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
             SqlDataReader lector = cmd.ExecuteReader();
            Clientes Client = new Clientes();

            if (lector.Read())
            {
                int idCliente = Convert.ToInt32(lector["idCliente"]);
                String nombre = Convert.ToString(lector["Nombre"]);
                String Telefono= Convert.ToString(lector["Telefono"]);
                String Celular= Convert.ToString(lector["Celular"]);
                String Cedula= Convert.ToString(lector["Cedula"]);
                        String residencia= Convert.ToString(lector["Residencia"]);
                        String correo= Convert.ToString(lector["Correo"]);
                        String Sexo= Convert.ToString(lector["Sexo"]);
                        String Empresa= Convert.ToString(lector["Empresa"]);
                String Telefono_Empresa = Convert.ToString(lector["Telefono_Empresa"]);
                String Puesto = Convert.ToString(lector["Puesto"]);
                String Ingreso = Convert.ToString(lector["Ingreso"]);
                String Supervisor= Convert.ToString(lector["Supervisor"]);
                String Otro_Ingreso= Convert.ToString(lector["Otro_Ingreso"]);
                Client.idCliente = idCliente;
                Client.Nombre= nombre;
                Client.Telefono= Telefono;
                Client.Celular= Celular;
                Client.Cedula= Cedula;
                Client.Residencia= residencia;
                Client.Correo= correo;
                Client.Sexo= Sexo;
                Client.Empresa= Empresa;
                Client.Telefono_Empresa= Telefono_Empresa;
                Client.Puesto= Puesto;
                Client.Ingreso= Ingreso;
                Client.Supervisor= Supervisor;
                Client.Otro_Ingreso= Otro_Ingreso;        
            }
                conexion.Close();
            return Client;
        }
        public static ArrayList buscarCuota( String comando)
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
             SqlDataReader lector = cmd.ExecuteReader();
            ArrayList lista = new ArrayList();
            while (lector.Read())
            {
                Modelos.Cuota cuota = new Modelos.Cuota();

                int idPrestamo = Convert.ToInt32(lector["prestamo"]);
                int idCuota = Convert.ToInt32(lector["id_cuota"]);
                int no_cuota= Convert.ToInt32(lector["no_cuota"]);
                int monto = Convert.ToInt32(lector["monto"]);
                int montoCuota = Convert.ToInt32(lector["monto_cuota"]);
                int interes_cuota = Convert.ToInt32(lector["interes_cuota"]);
                int estado = Convert.ToInt32(lector["estado"]);
                DateTime fecha_de_pago =Convert.ToDateTime(lector["fecha_de_pago"]);
                cuota.idPrestamo = idPrestamo;
                cuota.idCuota = idCuota;
                cuota.monto = monto;
                cuota.montoCuota = montoCuota;
                cuota.interes_cuota = interes_cuota;
                cuota.estado = estado;
                cuota.no_cuota= no_cuota;
                cuota.fecha_de_pago = fecha_de_pago;
                lista.Add(cuota);
                    }
                conexion.Close();
            return lista;
        }

        public static Modelos.Prestamos buscarPrestamo( String comando)
        {
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
             SqlDataReader lector = cmd.ExecuteReader();
            Modelos.Prestamos prest =  null;
            Modelos.Garante garante_p;
            Clientes clientes_P;

            if (lector.Read())
            {
                int  idSolicitud= Convert.ToInt32(lector["id_solicitud"]);
                int cant_cuota = Convert.ToInt32(lector["cantidad_cuota"]);
                int cantidad_solicitadas = Convert.ToInt32(lector["cantidad_solicitada"]);
                int intere= Convert.ToInt32(lector["interes_prestamos"]);
                int aprobacion = Convert.ToInt32(lector["aprobacion"]);
                int forma_de_pago = Convert.ToInt32(lector["forma_de_pago"]);
                int idcliente= Convert.ToInt32(lector["cliente"]);
                int idgarante= Convert.ToInt32(lector["garantes"]);
                DateTime fecha= Convert.ToDateTime(lector["fecha_de_solicitud"]);
                

                conexion.Close();
                garante_p = buscarGarante("select * from garante where idGarante =" +
                    ""+idgarante);
                clientes_P = buscarCliente("select * from Clietes where idCliente ="+idcliente);
                prest = new Modelos.Prestamos(cant_cuota, cantidad_solicitadas, intere, aprobacion, forma_de_pago, garante_p, clientes_P);
                prest.fecha_de_solicitud = fecha;
            }
            return prest;
        }


        public static ArrayList buscarNotificaciones( String comando)
        {
            ArrayList notis = new ArrayList();
            conexion.Open();
            SqlCommand cmd = new SqlCommand(comando, conexion);
             SqlDataReader lector = cmd.ExecuteReader();
            int cotador=0;
            Modelos.Notificacio notificacio = new Modelos.Notificacio();

            while (lector.Read())
            {
                
                int idNotificacion = Convert.ToInt32(lector["idNotificacion"]);
                int tipo = Convert.ToInt32(lector["tipo"]);
                String empleado = Convert.ToString(lector["empleado"]);
                String cliente = Convert.ToString(lector["cliente"]);
                int cantidad = Convert.ToInt32(lector["cantidad"]);
                String descripcion = Convert.ToString(lector["descripcion"]);
                String fecha =Convert.ToString(lector["fecha"]);

                notificacio.idNotificacion = idNotificacion;
                notificacio.tipo = tipo;
                notificacio.empleado = empleado;
                notificacio.cliente = cliente;
                notificacio.cantidad = cantidad;
                notificacio.descripcion = descripcion;
                notificacio.fecha = fecha;
                if (cotador < 10)
                {
                    notis.Add( notificacio.generaString());
                }
                cotador++;
            }
            conexion.Close();
            return notis;
        }

    }
}