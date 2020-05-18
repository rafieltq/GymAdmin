<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="wfrm_utileria.aspx.vb" Inherits="WAPP_GYMADMIN.wfrm_utileria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" DataKeyNames="Id" DataSourceID="GymUtileria" 
        ForeColor="Black" GridLines="None" Height="147px" Width="449px" 
        AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#ff0000" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" 
                SortExpression="Nombre" />
            <asp:BoundField DataField="Categoria" HeaderText="Categoria" 
                SortExpression="Categoria" />
            <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" 
                SortExpression="Cantidad" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#000000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#000000" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#000" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#ff0000" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#ff0000" />
    </asp:GridView>
    <asp:AccessDataSource ID="GymUtileria" runat="server" 
        DataFile="~/App_Data/GymData.mdb" 
        SelectCommand="SELECT * FROM [Utileria] WHERE ([Categoria] LIKE '%' + ? + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtBuscarUtileria" Name="Categoria" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <p>
        <asp:TextBox ID="txtBuscarUtileria" runat="server" Width="446px"></asp:TextBox>
    </p>
</asp:Content>
