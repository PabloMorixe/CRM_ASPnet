using System;
using System.Collections.Generic;
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
            // sI SELECCIONO UN "Value" que esta dentro del Select que hice
            //no me da error...Claramente esto no es lo que queremos. Pero no pincha.
            //DropDownList1.SelectedValue = "CHINO";
                                                    
            
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


/*
 *  var resultado = FrameWork4.ConexionLogin.validarLogin(txtUsuario.Text.Trim(), txtPassword.Text.Trim());
if (resultado.Item1 > 0)
{
    Msg_Login.Text = "Login Valido";
    Msg_Login.Visible = true;
    Session["username"] = txtUsuario.Text.Trim();
    Session["sessionID"] = resultado.Item2;

    Response.Redirect("ReporteConsultoria.aspx");  // Acceso Concedido
}
else
{
    Msg_Login.Text = "Login InValido";
    Msg_Login.Visible = true;
    Session["username"] = txtUsuario.Text.Trim();
}


    */




}
}
}
 