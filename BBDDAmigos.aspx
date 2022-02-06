<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="BBDDAmigos.aspx.vb" Inherits="Proyecto_SGE_VB.BdAmigosForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionAmigosNew %>" ProviderName="<%$ ConnectionStrings:ConnectionAmigosNew.ProviderName %>" SelectCommand="SELECT * FROM [Contactos]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" SortExpression="FechaNacimiento" DataFormatString="{0:d}" />
                <asp:CheckBoxField DataField="Carnet" HeaderText="Carnet" SortExpression="Carnet" />
                <asp:BoundField DataField="Cuota" HeaderText="Cuota" SortExpression="Cuota" DataFormatString="{0:C}" />
                <asp:BoundField DataField="Foto" HeaderText="Foto" SortExpression="Foto" Visible="False" />
                <asp:BoundField DataField="Url" HeaderText="Url" SortExpression="Url" Visible="False" />
                <asp:ImageField DataImageUrlField="Foto" DataImageUrlFormatString="~/Images/amigos/{0}" HeaderText="Imagen">
                </asp:ImageField>
                <asp:HyperLinkField DataTextField="Url" HeaderText="Link" DataNavigateUrlFields="Url" />
            </Columns>
        </asp:GridView>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="BBDD Amigos"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
