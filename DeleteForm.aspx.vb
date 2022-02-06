Public Class DeleteForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblBorrado.Visible = False
        Dim lbl As Label = Master.FindControl("lblUsuario")
        lbl.Text = "Usuario: " & Session("aaa")
        Master.FindControl("lblLogin").Visible = False
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        lblBorrado.Visible = False
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
            If contador > 0 Then
                Me.GridView1.DataSource = das.Tables(0)
                Me.GridView1.DataBind()

            Else
                lblBorrado.Text = "Producto no encontrado!"
                lblBorrado.Visible = True

            End If

        Catch ex As Exception
            MsgBox("Error: " & ex.Message)

        Finally
            conexion.Close()

        End Try
    End Sub

    Protected Sub btnDelRegistro_Click(sender As Object, e As EventArgs) Handles btnDelRegistro.Click
        lblBorrado.Visible = False
        Dim id As Integer
        id = Me.inputID.Text

        Dim stringConexion As String = ConfigurationManager.ConnectionStrings("CadenaConex").ConnectionString
        Dim conexion As New OleDb.OleDbConnection(stringConexion)

        Dim sentencia As String = "DELETE FROM Products WHERE ProductID = @id"

        Dim comando As New OleDb.OleDbCommand(sentencia, conexion)
        comando.Parameters.AddWithValue("@id", id)

        Try
            conexion.Open()
            comando.ExecuteNonQuery()

            lblBorrado.Visible = True

            buscarID()

        Catch ex As Exception
            MsgBox("Error: " & ex.Message)

        Finally
            conexion.Close()

        End Try
    End Sub

End Class