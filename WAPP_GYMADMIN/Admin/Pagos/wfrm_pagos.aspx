<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="wfrm_pagos.aspx.vb" Inherits="WAPP_GYMADMIN.wfrm_pagos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" 
        DataSourceID="GymPagos" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#ff0000" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre_Cliente" HeaderText="Nombre_Cliente" 
                SortExpression="Nombre_Cliente" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo" />
            <asp:BoundField DataField="Monto" HeaderText="Monto" SortExpression="Monto" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#000" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#000" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#ff0000" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#ff0000" />
    </asp:GridView>
    <asp:AccessDataSource ID="GymPagos" runat="server" 
        DataFile="~/App_Data/GymData.mdb" 
        SelectCommand="SELECT * FROM [Pagos] WHERE ([Fecha] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtBuscarPago" Name="Fecha" 
                PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:TextBox ID="txtBuscarPago" runat="server" Width="446px"></asp:TextBox>
</asp:Content>
