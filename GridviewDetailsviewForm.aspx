<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="GridviewDetailsviewForm.aspx.vb" Inherits="Proyecto_SGE_VB.GridviewDetailsviewForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.ACE.OLEDB.12.0;Data Source=|DataDirectory|\Amigos.accdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT * FROM [Contactos]"></asp:SqlDataSource>
    </p>
    <p>
                        <asp:Label ID="lblTitulo" runat="server" Text="Gridview-Detailsview" Font-Bold="True" Font-Size="Medium"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <SelectedRowStyle BackColor="#00FF99" />
        </asp:GridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionAmigosNew %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionAmigosNew.ProviderName %>" 
            SelectCommand="SELECT * FROM [Contactos] WHERE ([Id] = ?)">

            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters> 

        </asp:SqlDataSource>
    </p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource2" Height="50px" Width="634px">
        </asp:DetailsView>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
