Public Class UpdateForm
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblModificado.Visible = False
        Dim lbl As Label = Master.FindControl("lblUsuario")
        lbl.Text = "Usuario: " & Session("aaa")
        Master.FindControl("lblLogin").Visible = False
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        buscarID()
    End Sub

    Protected Sub buscarID()
        Dim stringConexion As String = ConfigurationManager.ConnectionStrings("CadenaConex").ConnectionString
        Dim conexion As New OleDb.OleDbConnection(stringConexion)
        Dim id As Integer
        id = Me.inputID.Text
        Dim sql As String = "SELECT ProductID, ProductName, QuantityPerUnit, UnitPrice FROM Products WHERE ProductID =" & id

        Dim adap As New OleDb.OleDbDataAdapter(sql, conexion)
        Dim das As New DataSet
        Dim contador As Integer

        Try
            contador = adap.Fill(das, "tabla")
            Me.GridView1.DataSource = das.Tables(0)
            Me.GridView1.DataBind()

        Catch ex As Exception
            MsgBox("Error: " & ex.Message)

        Finally
            conexion.Close()

        End Try
    End Sub

    Protected Sub btnModRegistro_Click(sender As Object, e As EventArgs) Handles btnModRegistro.Click
        'ProductName, UnitPrice, QuantityPerUnit
        Dim productName As String = Me.inputProductName.Text
        Dim unitPrice As Double = Me.inputUnitPrice.Text
        Dim quantityPerUnit As Integer = Me.inputQuantity.Text
        Dim id As Integer
        id = Me.inputID.Text

        Dim stringConexion As String = ConfigurationManager.ConnectionStrings("CadenaConex").ConnectionString
        Dim conexion As New OleDb.OleDbConnection(stringConexion)
        'UPDATE table_name
        'SET column1 = value1, column2 = value2, ...
        'WHERE condition;
        'UPDATE Products SET ProductName=@a2,QuantityPerUnit=@a3,UnitPrice=@a4 WHERE ProductID=@a1
        Dim sentencia As String = "UPDATE Products SET ProductName = @nombre, QuantityPerUnit = @cantidad, UnitPrice = @precio  WHERE ProductID = @id"

        Dim comando As New OleDb.OleDbCommand(sentencia, conexion)
        comando.Parameters.AddWithValue("@nombre", productName)
        comando.Parameters.AddWithValue("@precio", unitPrice)
        comando.Parameters.AddWithValue("@cantidad", quantityPerUnit)
        comando.Parameters.AddWithValue("@id", id)

        Try
            conexion.Open()
            comando.ExecuteNonQuery()

            Me.inputProductName.Text = ""
            Me.inputUnitPrice.Text = ""
            Me.inputQuantity.Text = ""

            lblModificado.Visible = True

            buscarID()

        Catch ex As Exception
            MsgBox("Error: " & ex.Message)

        Finally
            conexion.Close()

        End Try
    End Sub

End Class