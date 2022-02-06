<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="OrderIdForm.aspx.vb" Inherits="Proyecto_SGE_VB.OrderIdForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
                        <asp:Label ID="lblTitulo" runat="server" Text="Ordenar ID's" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CadenaConex %>" ProviderName="<%$ ConnectionStrings:CadenaConex.ProviderName %>" SelectCommand="SELECT DISTINCT [OrderID] FROM [OrderDetails] ORDER BY [OrderID]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="OrderID" DataValueField="OrderID">
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="lblInfo" runat="server" Text="No se ha encontrado nada"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True">
            <SelectedRowStyle BackColor="#00FF99" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
        <asp:TextBox ID="txtOrderID" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtProductID" runat="server"></asp:TextBox>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
