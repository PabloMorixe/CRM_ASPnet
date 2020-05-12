using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrameWork4
{
    public partial class ReporteConsultoria : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)

        {
                  
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
            
        {
                       

        }

        protected void CRMasp_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void NombreCliente(object sender, EventArgs e)
        {
          
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            //Acá tenes que poner el codigo que ejecuta el Botón  


            var resultado = FrameWork4.AltaEmpleado.altaEmpleado(TxtNombre.Text.Trim(), TxtApellido.Text.Trim(), TxtCategoriaEmpleado.Text.Trim(),
                   TxtEmpleadoEstado.Text.Trim(), CalendarFechaIngreso.SelectedDate, CalendarFechaNacimiento.SelectedDate,
                   TxtCorreoElectronico.Text.Trim(), TxtTelefono.Text.Trim(), TxtNroCuil.Text.Trim(), TxtEmpleadoDomicilio.Text.Trim()) ;
            if (resultado.Item1 > 0)
            {
                Msg_AltaEmpleado.Text = "No se dio de alta al forro del empleado";
                Msg_AltaEmpleado.Visible = true;
                

                Response.Redirect("ReporteConsultoria.aspx");  // Acceso Concedido
            }
            else
            {
                Msg_AltaEmpleado.Text = "Usuario dado de alta correctamente ";
                Msg_AltaEmpleado.Visible = true;
            
            }

        }

        protected void TxtNombre_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CalendarFechaNacimiento_SelectionChanged(object sender, EventArgs e)
        {
            LblTxTFechaNacimiento.Text = CalendarFechaNacimiento.SelectedDate.ToString();
        }

        protected void CalendarFechaIngreso_SelectionChanged(object sender, EventArgs e)
        {
            LblTxTFechaIngreso.Text = CalendarFechaIngreso.SelectedDate.ToString();
        }


        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void TxtCategoriaEmpleado_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource2_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}
 