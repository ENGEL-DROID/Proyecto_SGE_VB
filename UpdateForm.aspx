<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="UpdateForm.aspx.vb" Inherits="Proyecto_SGE_VB.UpdateForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style9 {
            height: 36px;
        }
        .auto-style14 {
            height: 70px;
            width: 304px;
        }
        .auto-style15 {
            height: 70px;
            width: 251px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Modificar Registros"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </p>
        <table class="auto-style9">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label6" runat="server" Text="Buscar producto por ID"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="inputID" runat="server" Width="344px"></asp:TextBox>                                   
                </td>
            </tr>
            <tr>
                <td class="auto-style14">                    
                    <asp:Label ID="lblModificado" runat="server" Text="Producto modificado con éxito!"></asp:Label>
                </td>
                <td class="auto-style15">                       
                    <asp:Button ID="btnBuscar" runat="server" BackColor="#993366" ForeColor="White" Text="Buscar" Width="191px" Height="44px" />                    
                </td>
            </tr>       
             <tr>
                <td class="auto-style14">    
                    <%-- GRIDVIEW VACÍO: --%>

                    <asp:GridView ID="GridView1" runat="server" Width="316px">
                    </asp:GridView>

                </td>
            </tr> 
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label1" runat="server" Text="ProductName:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="inputProductName" runat="server" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label4" runat="server" Text="QuantityPerUnit:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="inputQuantity" runat="server" Width="345px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label3" runat="server" Text="UnitPrice:"></asp:Label>
                </td>
                <td class="auto-style15">
                    <asp:TextBox ID="inputUnitPrice" runat="server" Width="345px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    &nbsp;</td>
                <td class="auto-style15">
        <asp:Button ID="btnModRegistro" runat="server" BackColor="#993366" ForeColor="White" Height="45px" Text="Modificar Registro" />
                </td>
            </tr>
        </table>
    <p>
        &nbsp;</p>
</asp:Content>
