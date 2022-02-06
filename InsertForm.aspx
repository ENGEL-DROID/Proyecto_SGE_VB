<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="InsertForm.aspx.vb" Inherits="Proyecto_SGE_VB.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            height: 36px;
        }
        .auto-style13 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Insertar Producto" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <table class="auto-style9">
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label2" runat="server" Text="ProductName:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="inputProductName" runat="server" Width="345px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label3" runat="server" Text="UnitPrice:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="inputUnitPrice" runat="server" Width="345px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label4" runat="server" Text="QuantityPerUnit:"></asp:Label>
                </td>
                <td class="auto-style13">
                    <asp:TextBox ID="inputQuantityPerUnit" runat="server" Width="345px" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
        </table>
    </p>
<p>
        &nbsp;</p>
<p>
        <asp:Button ID="Button1" runat="server" BackColor="#993366" ForeColor="White" Height="49px" Text="Insertar" Width="158px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblAgregado" runat="server" Text="Producto agregado con éxito!"></asp:Label>
</p>
<p>
        &nbsp;</p>
    </asp:Content>
