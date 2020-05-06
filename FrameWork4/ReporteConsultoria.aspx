<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteConsultoria.aspx.cs" Inherits="FrameWork4.ReporteConsultoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>dropdown</title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <strong><span class="auto-style1">OPCION: 1 DAR DE ALTA UN EMPLEADO</span></strong><br />
            <asp:Label ID="LabelNombre" runat="server" Text="Nombre"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TxtNombre" runat="server" OnTextChanged="TxtNombre_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LabelApellido" runat="server" Text="Apellido"></asp:Label>
        &nbsp;
            <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
        </p>
        <p>
        &nbsp;
            <asp:Label ID="LabelCatEmpleado" runat="server" Text="CatEmpleado"></asp:Label>
        </p>
        <p>
        &nbsp;<asp:TextBox ID="TxtCategoriaEmpleado" runat="server"></asp:TextBox>
        </p>
        <p>
            Empleado estado</p>
        <p>
            &nbsp;<asp:TextBox ID="TxtEmpleadoEstado" runat="server"></asp:TextBox>

        </p>
        <p>
            fecha ingreso<asp:Label ID="LblTxTFechaIngreso" runat="server" BorderStyle="Outset"></asp:Label>
                   <asp:Calendar ID="CalendarFechaIngreso" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="CalendarFechaIngreso_SelectionChanged">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
            </asp:Calendar>

        </p>
        <p>
            <asp:Label ID="LabelFechaNacimiento" runat="server" Text="Fecha Nacimiento"></asp:Label>
            <asp:Label ID="LblTxTFechaNacimiento" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Calendar ID="CalendarFechaNacimiento" runat="server" Height="82px" Width="194px" OnSelectionChanged="CalendarFechaNacimiento_SelectionChanged"></asp:Calendar>
        </p>
        <p>
            <asp:Label ID="LabelCorreoelectronico" runat="server" Text="Correo electronico"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtCorreoElectronico" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="LabelTelefono" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="CUIL" runat="server" Text="CUIL"></asp:Label>
            <asp:TextBox ID="TxtNroCuil" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="LabelDomicilio" runat="server" Text="Domicilio"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtEmpleadoDomicilio" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" Text="Guardar" />
        </p>
        <p style="margin-left: 80px">
            <asp:TextBox ID="Msg_AltaEmpleado" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
