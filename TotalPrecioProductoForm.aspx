<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="TotalPrecioProductoForm.aspx.vb" Inherits="Proyecto_SGE_VB.TotalPrecioProductoForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CadenaConex %>" ProviderName="<%$ ConnectionStrings:CadenaConex.ProviderName %>" SelectCommand="SELECT OrderID, ProductID, UnitPrice, Quantity, Discount, (UnitPrice * Quantity) - Discount AS Total FROM [Order Details]"></asp:SqlDataSource>
        <br />
                        <asp:Label ID="lblTitulo" runat="server" Text="Total Precio" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="OrderID,ProductID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="UnitPrice" DataFormatString="{0:C}" HeaderText="UnitPrice" SortExpression="UnitPrice" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Discount" DataFormatString="{0:C}" HeaderText="Discount" SortExpression="Discount" />
                <asp:BoundField DataField="Total" DataFormatString="{0:C}" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
