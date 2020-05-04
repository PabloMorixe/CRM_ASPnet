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
        </p>
        <p>
            <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LabelApellido" runat="server" Text="Apellido"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="CUIL" runat="server" Text="CUIL"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtCUIT" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LabelFechaNacimiento" runat="server" Text="Fecha Nacimiento"></asp:Label>
        </p>
        <p>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        </p>
        <p>
            <asp:Label ID="LabelCorreoelectronico" runat="server" Text="Correo electronico"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtCorreoElectronico" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Legajo" runat="server" Text="Legajo"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LabelCatEmpleado" runat="server" Text="CatEmpleado"></asp:Label>
        </p>
        <p>
        <asp:DropDownList ID="DropDownCatEmpleado" runat="server" DataSourceID="CRMasp" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataTextFormatString="CatEmpleado">
            <asp:ListItem Selected="True">Seleccione Cliente</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="CRMasp" runat="server" ConnectionString="<%$ ConnectionStrings:CRM_aspConnectionString %>" 
            SelectCommand="SELECT [Descripcion] FROM [EmpleadoCategoria]" OnSelecting="CRMasp_Selecting"></asp:SqlDataSource>
        </p>
        <p>
            <asp:Label ID="LabelDomicilio" runat="server" Text="Domicilio"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="LabelTelefono" runat="server" Text="Telefono"></asp:Label>
        </p>
        <p>
            <asp:TextBox ID="TxtTelefono" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="BtnGuardar" runat="server" OnClick="BtnGuardar_Click" Text="Guardar" />
        </p>
    </form>
</body>
</html>
