using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Sistema_de_Prestamos
{
    public partial class Prestamo : System.Web.UI.Page
    {
        public static int suma = 0;
        public static int Cantidad_a_suma = 0;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (Aplicacion.GetEmpleadoActivo().Nombre == "") Response.Redirect("IniciarSesion.aspx");
            else if (Aplicacion.GetEmpleadoActivo().Categoria == "Normal") {
                Response.Redirect("Noacceso.aspx");
            }


        }

        protected void btnVerificar_Click(object sender, EventArgs e)
        {
            switch (DropDownList2.Text )
            {
                case "Quicenal":
                    Cantidad_a_suma = 15;
                    break;
                case "Diario":
                    Cantidad_a_suma = 1;
                    break;

                case "Semanal":
                    Cantidad_a_suma = 7;
                    break;
                case "Mensual":
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
            double monto=0;
            double intere=0;
            double interesEnPor;
            double monto_a_pagar=0;
            double  cuota =0;
            double cuota_a_pagar =0;
            
                monto = Convert.ToDouble(txtCantidad.Text);
                interesEnPor = Convert.ToDouble(txtInteres.Text)/100;
                intere = monto*interesEnPor;
                monto_a_pagar =   monto+intere;
                cuota = Convert.ToInt32(txtCuotas.Text);
                cuota_a_pagar = monto_a_pagar / cuota;
          

            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Asegurese  cuota" +cuota+ "')</script>");

            for (int i = 0; i < cuota; i++)
            {

                //Conexion.insertar("insert into ");
                DateTime date = DateTime.Now;
                suma = suma + Cantidad_a_suma;
                DateTime otroDia = date.AddDays(suma);
                Int32 dia = otroDia.Day;
                Int32 mes = otroDia.Month;
                Int32 anio = otroDia.Year;
                tabla.Rows.Add(i+1,dia+"/"+mes+"/"+anio ,txtInteres.Text+" % ", monto/cuota, cuota_a_pagar, intere);
            }
            grid.DataSource = tabla;
            grid.DataBind();
            


        }

        protected void btnPrestamo_Click(object sender, EventArgs e)
        {
            try {
                Modelos.Garante garantes = new Modelos.Garante(txtGarante.Text, txtCedulaG.Text, txtEmpresaG.Text, Convert.ToInt32(txtSueldoG.Text), txtResidenciaG.Text, txtCorreoG.Text, txtContactoG.Text);
                garantes.insertarGarante();
                ListBox2.DataBind();
                //Response.Redirect("Nuevo_prestamo.aspx");
            }
            catch (Exception es) {

            }
            

        }

        protected void btnRalizarPrestamo_Click(object sender, EventArgs e)
        {
            Modelos.Garante gara = Conexion.buscarGarante("select * from garante where idGarante = "+ ListBox2.SelectedValue );
            Clientes clie =Conexion.buscarCliente("select * from Clietes where idCliente = "+ DropDownList1.SelectedValue);
            int cuota=0;
            int cantidad_solicitada=0;
            int intere =0;
            int firma_pago = 0;

            try {
               cuota = Convert.ToInt32(txtCuotas.Text);
               cantidad_solicitada = Convert.ToInt32(txtCantidad.Text);
               intere = Convert.ToInt32(txtInteres.Text);
               firma_pago = Convert.ToInt32(txtCuotas.Text);
               

            }
            catch (Exception es)
            {

            }

            Modelos.Prestamos prestamos = new Modelos.Prestamos(cuota, cantidad_solicitada, intere, 0, firma_pago,gara,clie);
            prestamos.insertarPrestamos();
        }
        // Convert.ToString(DropDownList1.SelectedItem);
    }
    }
