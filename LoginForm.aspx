<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/master.Master" CodeBehind="LoginForm.aspx.vb" Inherits="Proyecto_SGE_VB.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
<br />
<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Iniciar Sesión:"></asp:Label>
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Nombre Usuario:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="inputNombreUsuario" runat="server" Width="341px"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="inputContrasenia" runat="server" Width="341px"></asp:TextBox>
<br />
<br />
<asp:Label ID="lblErrorLogin" runat="server" ForeColor="#FF0066" Text="ERROR: Los datos no son correctos!"></asp:Label>
<br />
<br />
<asp:CheckBox ID="CheckBox1" runat="server" Text="Recordar datos de acceso" />
<br />
<br />
<asp:Button ID="btnAcceder" runat="server" BackColor="#993366" ForeColor="White" Height="49px" Text="Acceder" Width="196px" />
<br />
<br />
</asp:Content>
