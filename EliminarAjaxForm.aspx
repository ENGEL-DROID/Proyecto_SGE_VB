<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="EliminarAjaxForm.aspx.vb" Inherits="Proyecto_SGE_VB.EliminarAjaxForm" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <p>
                        <asp:Label ID="lblTitulo" runat="server" Text="Eliminar Ajax" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CadenaConex %>" 
            ProviderName="<%$ ConnectionStrings:CadenaConex.ProviderName %>" 
            SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [Country], [City] FROM [Customers]" 
            DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = ?" 
            InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName], [ContactName], [Country], [City]) VALUES (?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Customers] SET [CompanyName] = ?, [ContactName] = ?, [Country] = ?, [City] = ? WHERE (([CustomerID] = ?) OR ([CustomerID] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerID" Type="String" />
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="City" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="CustomerID" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField ShowHeader="False">

                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" 
                            CausesValidation="False" CommandName="Delete" 
                            Text="Eliminar"></asp:LinkButton>
                        <%-- Control AJAX --%>
                        <ajaxToolkit:ConfirmButtonExtender 
                            ID="ConfirmButtonExtender1" runat="server" 
                            TargetControlID="LinkButton1" 
                            ConfirmText="Desea Eliminar?" />
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
    </p>
</asp:Content>
