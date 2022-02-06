<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="InnovacionForm.aspx.vb" Inherits="Proyecto_SGE_VB.InnovacionForm" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CadenaConex %>" ProviderName="<%$ ConnectionStrings:CadenaConex.ProviderName %>" SelectCommand="SELECT [CategoryName], [CategorySales] FROM [Category Sales for 1995]"></asp:SqlDataSource>
        <br />
    </p>
    <p>
                        <asp:Label ID="lblTitulo" runat="server" Text="Innovación: Charts" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <p>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                                <asp:BoundField DataField="CategorySales" HeaderText="CategorySales" SortExpression="CategorySales" />
                            </Columns>
                        </asp:GridView>
    </p>
    <p>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" Height="472px" Width="472px">
            <series>
                <asp:Series ChartType="Pie" Name="Series1" XValueMember="CategoryName" YValueMembers="CategorySales">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
