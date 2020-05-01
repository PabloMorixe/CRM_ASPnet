<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteConsultoria.aspx.cs" Inherits="FrameWork4.ReporteConsultoria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>dropdown</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CRMasp" DataTextField="NombreCliente" DataValueField="NombreCliente" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem Selected="True">Seleccione Cliente</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="CRMasp" runat="server" ConnectionString="<%$ ConnectionStrings:CRM_aspConnectionString %>" 
            SelectCommand="SELECT [NombreCliente] FROM [Cliente]" OnSelecting="CRMasp_Selecting"></asp:SqlDataSource>
    </form>
</body>
</html>
