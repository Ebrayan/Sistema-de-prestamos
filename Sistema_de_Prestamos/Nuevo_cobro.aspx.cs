using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class Nuevo_cobro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            muestra_Cuotas();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            muestra_Cuotas();
        }

        int idPrestamo;
        public void muestra_Cuotas()
        {
            try
            {
                Modelos.Prestamos prestamoSeleccionado;
                idPrestamo = Convert.ToInt32(ListBox1.SelectedValue);
                txtApellido.Text = idPrestamo + "";
                prestamoSeleccionado = Conexion.buscarPrestamo("select * from solicitud_prestamo where id_solicitud =" + idPrestamo);
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
                float interes = prestamoSeleccionado.interes;
                float interesM = interes / 100;
                float cantidad = prestamoSeleccionado.cantidad_Solicitada;
                float interesMo = interesM * cantidad;
                txtnombre.Text = prestamoSeleccionado.cliente.Nombre;
                float total = interesMo + cantidad;
                txtApellido.Text = "" + total;

                DataTable tabla = new DataTable();
                //  tabla.Columns.Add("idCuota", typeof(int));
                tabla.Columns.Add("No.  Cuota ", typeof(String));
                tabla.Columns.Add("Monto", typeof(String));
                tabla.Columns.Add("Monto Cuota  ", typeof(String));
                tabla.Columns.Add("Interes cuota", typeof(String));
                tabla.Columns.Add("Fecha de pago", typeof(String));
                tabla.Columns.Add("Estado", typeof(String));

                double idCuota = 0;
                double No_cuota = 0;
                double monto = 0;
                double Monto_cuota;
                double interes_cuota = 0;
                double estado = 0;
                DateTime Fecha;
                String Estado = "";

                ArrayList listaCuota = Conexion.buscarCuota("select * from cuotas where prestamo=" + idPrestamo);
                txtnombre.Text = "" + listaCuota.Count;


                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Asegurese  cuota" +cuota+ "')</script>");
                Modelos.Cuota[] cuotas = (Modelos.Cuota[])listaCuota.ToArray(typeof(Modelos.Cuota));
                DropDownList1.Items.Clear();
                for (int i = 0; i < cuotas.Length; i++)
                {

                    idCuota = cuotas[i].idCuota;
                    No_cuota = cuotas[i].no_cuota;
                    monto = cuotas[i].monto;
                    Monto_cuota = cuotas[i].montoCuota;
                    interes_cuota = cuotas[i].interes_cuota;
                    estado = cuotas[i].estado;
                    Fecha = cuotas[i].fecha_de_pago;

                    //Conexion.insertar("insert into ");

                    Int32 dia = Fecha.Day;
                    Int32 mes = Fecha.Month;
                    Int32 anio = Fecha.Year;
                    switch (estado)
                    {
                        case 0: Estado = "No pagado"; break;
                        case 1: Estado = "Pagado"; break;
                        case 2: Estado = "Atrasado"; break;
                        default: Estado = "Desconocido"; break;
                    }
                    if (estado != 1) {
                        DropDownList1.Items.Add(new ListItem("Cuota No" + No_cuota, idCuota + ""));
                    }
                    
                    
                    tabla.Rows.Add(No_cuota, monto, Monto_cuota, interes_cuota, dia + "/" + mes + "/" + anio, Estado);
                }
                grid.DataSource = tabla;
                grid.DataBind();

            }
            catch (Exception a)
            {

                txtInteres.Text = "Debe seleccionar un prestamo";
                txtCCuota.Text = "Debe seleccionar un prestamo";
                txtCSolisitada.Text = "Debe seleccionar un prestamo";

            }
        }

        protected void btnAprobar_Click(object sender, EventArgs e)
        {
            string valor="";
            if(DropDownList1.SelectedValue!="")
            {
                  valor = DropDownList1.SelectedValue;
                Conexion.actualizar("update cuotas set estado=1 where id_cuota=" + valor);
                muestra_Cuotas();
                Modelos.Prestamos pre = Conexion.buscarPrestamo("select * from solicitud_prestamo where id_solicitud =" + idPrestamo);
                Conexion.insertar("insert into  Notificacion(tipo ,empleado,cliente,cantidad ,descripcion) values (3,'" + Aplicacion.usuarioActive.Nombre + "','" + pre.cliente.Nombre + "',0,'"+DropDownList1.SelectedItem+"')");
            }
            else 
            {
                ClientScript.RegisterStartupScript(GetType(), "hola", "<script> alert('debe seleccionar una cuota')</script>");
            }

            
        }

        protected void btnNoAprobar_Click(object sender, EventArgs e)
        {
            string valor = "";
            if (DropDownList1.SelectedValue != "")
            {
                valor = DropDownList1.SelectedValue;
                Conexion.actualizar("update cuotas set estado=2 where id_cuota=" +valor);
                muestra_Cuotas();
            }
            else
            {
                ClientScript.RegisterStartupScript(GetType(), "hola", "<script> alert('debe seleccionar una cuota')</script>");

            }
        }
    }
}