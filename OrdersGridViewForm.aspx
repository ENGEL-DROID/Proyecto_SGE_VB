<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="OrdersGridViewForm.aspx.vb" Inherits="Proyecto_SGE_VB.OrdersGridViewForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionOrders %>" ProviderName="<%$ ConnectionStrings:ConnectionOrders.ProviderName %>" SelectCommand="SELECT [OrderID], [CustomerID], [ShipCity], [ShipCountry], [ShipRegion], [ShipPostalCode] FROM [Orders]"></asp:SqlDataSource>
        <br />
    </p>
    <p>
                        <asp:Label ID="lblTitulo" runat="server" Text="Orders GridView" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <div style="overflow-y: scroll;height: 350px; width: 550px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                <asp:BoundField DataField="ShipCity" HeaderText="ShipCity" SortExpression="ShipCity" />
                <asp:BoundField DataField="ShipCountry" HeaderText="ShipCountry" SortExpression="ShipCountry" />
                <asp:BoundField DataField="ShipRegion" HeaderText="ShipRegion" SortExpression="ShipRegion" />
                <asp:BoundField DataField="ShipPostalCode" HeaderText="ShipPostalCode" SortExpression="ShipPostalCode" />
            </Columns>
        </asp:GridView>
    </div>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
