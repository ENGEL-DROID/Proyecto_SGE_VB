<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="ProductosForm.aspx.vb" Inherits="Proyecto_SGE_VB.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CadenaConex %>" ProviderName="<%$ ConnectionStrings:CadenaConex.ProviderName %>" SelectCommand="SELECT [ProductID], [ProductName], [SupplierID], [CategoryID], [QuantityPerUnit], [UnitPrice] FROM [Products]"></asp:SqlDataSource>
    <br />
</p>
<p>
    <asp:Label ID="Label1" runat="server" Text="PRODUCTOS:"></asp:Label>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True">
    </asp:GridView>
</p>
<p>
    &nbsp;</p>
<p>
    <asp:Label ID="lblTotal" runat="server"></asp:Label>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
