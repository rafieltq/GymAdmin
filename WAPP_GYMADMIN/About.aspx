<%@ Page Title="Acerca de nosotros" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="About.aspx.vb" Inherits="WAPP_GYMADMIN.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 563px;
        }
        .style3
        {
            width: 563px;
            height: 174px;
        }
        .style4
        {
            height: 174px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>GYM ADMIN©</h2>
    
    <div class="About">
        
        <table class="style1">
            <tr>
                <td class="style3">
                    <div class="text1">
                        La app fue desarrollada con la intención de manejar de una manera mas eficaz 
                        todo lo que conlleva a la administración de un gimnasio, llevar cuentas de los 
                        pagos de los clientes, llevar un inventario para tener todo lo que se necesite 
                        saber a la mano, porque para administrar bien su gimnasio necesita una fuente 
                        fiable de información.
                    </div>
                </td>
                    
                <td class="style4">
                     <img src="img/logo.png" style="width:353px; height:200px;" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <div class="text1">
                         Rafiel Taveras #23 6to A de Informática.
                     </div>
                </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="img/Pesas.png" style="width:225px; height:204px;" />
                </td>
            </tr>
        </table>
        
    </div>
    
</asp:Content>
