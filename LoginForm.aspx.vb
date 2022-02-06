Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Master.FindControl("menuCRUD").Visible = False
        Master.FindControl("lblUsuario").Visible = False
        lblErrorLogin.Visible = False
        inputNombreUsuario.Text = "Nancy"
        inputContrasenia.TextMode = TextBoxMode.Password.Password

    End Sub

    Protected Sub btnAcceder_Click(sender As Object, e As EventArgs) Handles btnAcceder.Click
        Dim usuario As String = inputNombreUsuario.Text
        Dim contrasenia As String = inputContrasenia.Text
        inputNombreUsuario.Text = ""
        inputContrasenia.Text = ""
        comprobarUsuario(usuario, contrasenia)
    End Sub

    Protected Sub comprobarUsuario(usuario As String, contrasenia As String)
        'la Cadena de Conexión se inicia con un sqldataset y luego se elimina el componente
        'luego se busca en el web.config connectionstring > name > "CadenaConex" (o el nombre por defecto)
        Dim stringConexion As String = ConfigurationManager.ConnectionStrings("CadenaConex").ConnectionString
        Dim conexion As New OleDb.OleDbConnection(stringConexion)
        Dim sentencia As String = "SELECT * FROM employees WHERE FirstName = 'Nancy' And LastName = 'Davolio'"
        Dim dr As OleDb.OleDbDataReader
        Dim comando As New OleDb.OleDbCommand(sentencia, conexion)
        Try
            conexion.Open()
            dr = comando.ExecuteReader
            If dr.HasRows Then
                Session("aaa") = "Nancy"
                Response.Redirect("ProductosForm.aspx")
            Else
                lblErrorLogin.Visible = True
            End If
        Catch ex As Exception
        Finally
            dr.Close()
        End Try
    End Sub

End Class