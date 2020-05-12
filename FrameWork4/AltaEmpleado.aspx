<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaEmpleado.aspx.cs" Inherits="FrameWork4.ReporteConsultoria" %>

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
            <asp:Label ID="LabelCatEmpleado" runat="server" Text="Categoria empleado:" style="text-align: left"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="Descripcion" DataValueField="Descripcion">
            </asp:DropDownList>
            <asp:TextBox ID="TxtCategoriaEmpleado" runat="server" OnTextChanged="TxtCategoriaEmpleado_TextChanged"></asp:TextBox>
            <asp:Label ID="LabelCategoriaEmpleado" runat="server" Text="LabelCategoriaEmpleado"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CRM_aspConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="sp_categoriaEmpleado" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <p>
        &nbsp;</p>
        <p>
            Empleado estado PUTO&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="EmpleadoEstado" DataTextField="DescripcionEstado" DataValueField="IdEmpleadoEstado">
            </asp:DropDownList>
            <asp:SqlDataSource ID="EmpleadoEstado" runat="server" ConnectionString="<%$ ConnectionStrings:CRM_aspConnectionString %>" SelectCommand="SELECT [IdEmpleadoEstado], [DescripcionEstado] FROM [EmpleadoEstado]"></asp:SqlDataSource>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CRM_aspConnectionString %>" SelectCommand="SELECT [DescripcionEstado] FROM [EmpleadoEstado]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;<asp:TextBox ID="TxtEmpleadoEstado" runat="server"></asp:TextBox>

        </p>
        <p>
            EZE PUTO
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="EzePuto" DataTextField="ServicioNombre" DataValueField="IdServicio">
            </asp:DropDownList>
            <asp:SqlDataSource ID="EzePuto" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CRM_aspConnectionString %>" DeleteCommand="DELETE FROM [Servicios] WHERE [IdServicio] = @original_IdServicio AND (([ServicioNombre] = @original_ServicioNombre) OR ([ServicioNombre] IS NULL AND @original_ServicioNombre IS NULL))" InsertCommand="INSERT INTO [Servicios] ([IdServicio], [ServicioNombre]) VALUES (@IdServicio, @ServicioNombre)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [IdServicio], [ServicioNombre] FROM [Servicios]" UpdateCommand="UPDATE [Servicios] SET [ServicioNombre] = @ServicioNombre WHERE [IdServicio] = @original_IdServicio AND (([ServicioNombre] = @original_ServicioNombre) OR ([ServicioNombre] IS NULL AND @original_ServicioNombre IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_IdServicio" Type="Int32" />
                    <asp:Parameter Name="original_ServicioNombre" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="IdServicio" Type="Int32" />
                    <asp:Parameter Name="ServicioNombre" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ServicioNombre" Type="String" />
                    <asp:Parameter Name="original_IdServicio" Type="Int32" />
                    <asp:Parameter Name="original_ServicioNombre" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            fecha ingreso<asp:Label ID="LblTxTFechaIngreso" runat="server" BorderStyle="Outset" style="height: 27px"></asp:Label>
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
