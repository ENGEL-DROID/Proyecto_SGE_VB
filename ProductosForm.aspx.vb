Public Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim lbl As Label = Master.FindControl("lblUsuario")
        lbl.Text = "Usuario: " & Session("aaa")
        Master.FindControl("lblLogin").Visible = False

        'la Cadena de Conexión se inicia con un sqldataset y luego se elimina el componente
        'luego se busca en el web.config connectionstring > name > "CadenaConex" (o el nombre por defecto)
        Dim stringConexion As String = ConfigurationManager.ConnectionStrings("CadenaConex").ConnectionString
        Dim conexion As New OleDb.OleDbConnection(stringConexion)
        Dim sentencia As String = "SELECT ProductID, ProductName, UnitPrice, QuantityPerUnit FROM products"

        Dim adap As New OleDb.OleDbDataAdapter(sentencia, conexion)
        Dim das As New DataSet
        Dim contador As Integer


        Try
            contador = adap.Fill(das, "tabla")
            Me.GridView1.DataSource = das.Tables(0)
            Me.GridView1.DataBind()

            Me.lblTotal.Text = "Hay un total de " & contador & " líneas"

        Catch ex As Exception
            Me.lblTotal.Text = ex.Message
        End Try
    End Sub

    Private Sub GridView1_PageIndexChanging(sender As Object, e As GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        ' el indice de la pagina es una nueva pagina
        GridView1.PageIndex = e.NewPageIndex
        Me.GridView1.DataBind()
        Page_Load(sender, e)
    End Sub
End Class