<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="wfrm_cliente.aspx.vb" Inherits="WAPP_GYMADMIN.wfrm_cliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" 
        DataSourceID="GymDatos" ForeColor="Black" GridLines="None" Height="125px" 
            Width="446px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#000000" />
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" 
                SortExpression="Apellido" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
            <asp:BoundField DataField="Cedula" HeaderText="Cedula" 
                SortExpression="Cedula" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#000" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#F94B4B" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#000" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#ff0000" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#ff0000" />
    </asp:GridView>
    <asp:AccessDataSource ID="GymDatos" runat="server" DataFile="~/App_Data/GymData.mdb" 
        OldValuesParameterFormatString="original_{0}" 
        
        SelectCommand="SELECT * FROM [Cliente] WHERE ([Apellido] LIKE '%' + ? + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtBuscar" Name="Apellido" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <br />
    <asp:TextBox ID="txtBuscar" runat="server" Width="446px"></asp:TextBox>
</asp:Content>
