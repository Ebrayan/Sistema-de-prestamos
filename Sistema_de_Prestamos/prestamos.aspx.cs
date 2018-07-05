using System;
using System.Data;

namespace Sistema_de_Prestamos
{
    public partial class prestamos : System.Web.UI.Page
    {
        public static int suma = 0;
        public static int Cantidad_a_suma = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            muestraDato();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            muestraDato();
        }

        private void muestraDato()
        {
            Modelos.Prestamos prestamoSeleccionado;
            int idPrestamo = Convert.ToInt32(ListBox1.SelectedValue);
            // datos de cliente
            txtApellido.Text = idPrestamo + "";
            prestamoSeleccionado = Conexion.buscarPrestamo("select * from solicitud_prestamo where id_solicitud =" + idPrestamo);
            txtnombre.Text = prestamoSeleccionado.cliente.Nombre;
            txtPuesto.Text = prestamoSeleccionado.cliente.Puesto;
            txtCedula.Text = prestamoSeleccionado.cliente.Cedula;
            txtTelefono.Text = prestamoSeleccionado.cliente.Telefono;
            txtCelular.Text = prestamoSeleccionado.cliente.Celular;
            txtResidencia.Text = prestamoSeleccionado.cliente.Residencia;
            txtemail.Text = prestamoSeleccionado.cliente.Correo;
            txtSexo.Text = prestamoSeleccionado.cliente.Sexo;
            txtEmpresa.Text = prestamoSeleccionado.cliente.Empresa;
            txtTEmpresa.Text = prestamoSeleccionado.cliente.Telefono_Empresa;
            txtIngreso.Text = prestamoSeleccionado.cliente.Ingreso;
            txtSupervisor.Text = prestamoSeleccionado.cliente.Supervisor;
            txtOtroIngreso.Text = prestamoSeleccionado.cliente.Otro_Ingreso;

            // datos de prestamos

            txtInteres.Text = "" + prestamoSeleccionado.interes;
            txtCCuota.Text = "" + prestamoSeleccionado.Cuota;
            txtCSolisitada.Text = "" + prestamoSeleccionado.cantidad_Solicitada;
            switch (prestamoSeleccionado.aprobacion)
            {

                case 1:
                    txtAprobacion.Text = "Aprobado";
                    txtAprobacion.ForeColor = System.Drawing.Color.Green;

                    break;
                case 2:
                    txtAprobacion.Text = " No Aprobado";
                    txtAprobacion.ForeColor = System.Drawing.Color.Red;
                    break;

                default:
                    txtAprobacion.Text = " No evaluado";
                    txtAprobacion.ForeColor = System.Drawing.Color.Orange;
                    break;
            }

            switch (prestamoSeleccionado.forma_de_pago)
            {

                case 1:
                    txtFormaPago.Text = "Diario";

                    break;
                case 7:
                    txtFormaPago.Text = "Semanal";
                    break;
                case 15:
                    txtFormaPago.Text = "Quincenal";
                    break;

                case 30:
                    txtFormaPago.Text = "Mensual";
                    break;
                default:
                    txtFormaPago.Text = "Desconocido";
                    break;
            }
            // datos de garantia 
            txtResidenciaG.Text = prestamoSeleccionado.garante.Residencia;
            txtGarante.Text = prestamoSeleccionado.garante.Nombre;
            txtSueldoG.Text = "" +prestamoSeleccionado.garante.Sueldo;
            txtCedulaG.Text = prestamoSeleccionado.garante.Cedula;
            txtEmpresaG.Text = prestamoSeleccionado.garante.Empresa;
            txtCorreoG.Text = prestamoSeleccionado.garante.Correo;
            txtContactoG.Text = prestamoSeleccionado.garante.Contacto;




        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            int idPrestamo = Convert.ToInt32(ListBox1.SelectedValue);   
            Conexion.actualizar("UPDATE solicitud_prestamo SET aprobacion= 1  WHERE id_solicitud =" + idPrestamo);
            txtAprobacion.Text = "Aprobado";
            txtAprobacion.ForeColor = System.Drawing.Color.Green;
            Modelos.Prestamos  prestamo=  Conexion.buscarPrestamo("select * from solicitud_prestamo where id_solicitud =" + idPrestamo);
            ClientScript.RegisterStartupScript(GetType(), "hola", "<script> alert('fecha solicitud'"+prestamo.fecha_de_solicitud+")</script>");

            switch (prestamo.forma_de_pago)
            {
                case 15:
                    Cantidad_a_suma = 15;
                    break;
                case 1:
                    Cantidad_a_suma = 1;
                    break;

                case 7:
                    Cantidad_a_suma = 7;
                    break;
                case 30:
                    Cantidad_a_suma = 30;
                    break;
            }



            DataTable tabla = new DataTable();
            tabla.Columns.Add("Cuota", typeof(int));
            tabla.Columns.Add("Fechas de pago", typeof(String));
            tabla.Columns.Add("Interes", typeof(String));
            tabla.Columns.Add("Monto ", typeof(String));
            tabla.Columns.Add("Monto a pagar", typeof(String));
            tabla.Columns.Add("Interes a pagar", typeof(String));
            double monto = 0;
            double intere = 0;
            double interesEnPor;
            double monto_a_pagar = 0;
            double cuota = 0;
            double cuota_a_pagar = 0;

            monto = prestamo.cantidad_Solicitada;
            interesEnPor = prestamo.interes/100;
            intere = monto * interesEnPor;
            monto_a_pagar = monto + intere;
            cuota = prestamo.Cuota;
            cuota_a_pagar = monto_a_pagar / cuota;
            DateTime date;

            
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Asegurese  cuota" +cuota+ "')</script>");

            for (int i = 0; i < cuota; i++)
            {
                date = prestamo.fecha_de_solicitud;
            
                suma = suma + Cantidad_a_suma;
                DateTime otroDia = date.AddDays(suma);
                Int32 dia = otroDia.Day;
                Int32 mes = otroDia.Month;
                Int32 anio = otroDia.Year;
                Conexion.insertar("insert into cuotas values (" + i+1 + "," + monto + "," + monto_a_pagar + "," + intere + ","+ anio + "-" + mes + "-" + dia+ ",0,"+idPrestamo+")");
                
            }
            
            Conexion.insertar("insert into  Notificacion(tipo ,empleado,cliente,cantidad ,descripcion) values (2,'" + Aplicacion.usuarioActive.Nombre + "','" + prestamo.cliente.Nombre + "'," + prestamo.cantidad_Solicitada + ",'a')");



        }

        protected void btnNoAprobar_Click(object sender, EventArgs e)
        {
            int idPrestamo = Convert.ToInt32(ListBox1.SelectedValue);
            Conexion.actualizar("UPDATE solicitud_prestamo SET aprobacion= 2  WHERE id_solicitud =" + idPrestamo);
            txtAprobacion.Text = " No Aprobado";
            txtAprobacion.ForeColor = System.Drawing.Color.Red;
        }

        protected void btnPendiente_Click(object sender, EventArgs e)
        {
            int idPrestamo = Convert.ToInt32(ListBox1.SelectedValue);
            Conexion.actualizar("UPDATE solicitud_prestamo SET aprobacion= 0  WHERE id_solicitud =" + idPrestamo);

        }
    }
}