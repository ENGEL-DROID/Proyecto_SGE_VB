Public Class OrderIdForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.lblInfo.Visible = False
        Dim lbl As Label = Master.FindControl("lblUsuario")
        lbl.Text = "Usuario: " & Session("aaa")
        Master.FindControl("lblLogin").Visible = False
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        Dim stringConexion As String = ConfigurationManager.ConnectionStrings("CadenaConex").ConnectionString
        Dim conexion As New OleDb.OleDbConnection(stringConexion)
        Dim id As Integer
        id = Me.DropDownList1.SelectedValue
        Dim sql As String = "SELECT OrderID, ProductID, UnitPrice, Quantity, Discount FROM OrderDetails WHERE OrderID =" & id

        Dim adap As New OleDb.OleDbDataAdapter(sql, conexion)
        Dim das As New DataSet
        Dim contador As Integer

        Try
            contador = adap.Fill(das, "tabla")
            If contador > 0 Then
                Me.GridView1.DataSource = das.Tables(0)
                Me.GridView1.DataBind()

                Dim total As Double
                For a As Integer = 0 To GridView1.Rows.Count - 1
                    GridView1.SelectRow(a)
                    Dim row As GridViewRow = GridView1.SelectedRow
                    total += Convert.ToDouble(row.Cells(3).Text) * Convert.ToDouble(row.Cells(4).Text)
                Next
                GridView1.SelectRow(0)

                Me.lblInfo.Visible = True
                Me.lblInfo.Text = "Filas: " & contador & "    El Total es: " & total.ToString("C")


            Else
                Me.lblInfo.Text = "No se ha encontrado data"
                Me.lblInfo.Visible = True

            End If

        Catch ex As Exception
            MsgBox("Error: " & ex.Message)

        Finally
            conexion.Close()

        End Try
    End Sub

    Private Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim rowS As GridViewRow = GridView1.SelectedRow
        Me.txtOrderID.Text = rowS.Cells(1).Text
        Me.txtProductID.Text = rowS.Cells(2).Text
    End Sub
End Class