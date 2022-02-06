Public Class WebForm2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblAgregado.Visible = False
        Dim lbl As Label = Master.FindControl("lblUsuario")
        lbl.Text = "Usuario: " & Session("aaa")
        Master.FindControl("lblLogin").Visible = False
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'ProductName, UnitPrice, QuantityPerUnit
        Dim productName As String = Me.inputProductName.Text
        Dim unitPrice As Double = Me.inputUnitPrice.Text
        Dim quantityPerUnit As Integer = Me.inputQuantityPerUnit.Text

        Dim stringConexion As String = ConfigurationManager.ConnectionStrings("CadenaConex").ConnectionString
        Dim conexion As New OleDb.OleDbConnection(stringConexion)
        Dim sentencia As String = "INSERT INTO Products (ProductName, UnitPrice, QuantityPerUnit) VALUES (@nombre, @precio, @cantidad)"

        Dim comando As New OleDb.OleDbCommand(sentencia, conexion)
        comando.Parameters.AddWithValue("@nombre", productName)
        comando.Parameters.AddWithValue("@precio", unitPrice)
        comando.Parameters.AddWithValue("@cantidad", quantityPerUnit)

        Try
            conexion.Open()
            comando.ExecuteNonQuery()

            Me.inputProductName.Text = ""
            Me.inputUnitPrice.Text = ""
            Me.inputQuantityPerUnit.Text = ""
            lblAgregado.Visible = True

        Catch ex As Exception
            MsgBox("Error: " & ex.Message)

        Finally
            conexion.Close()

        End Try

    End Sub

    Private Sub inputProductName_TextChanged(sender As Object, e As EventArgs) Handles inputProductName.TextChanged
        lblAgregado.Visible = False
    End Sub

End Class