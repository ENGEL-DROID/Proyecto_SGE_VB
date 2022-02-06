Public Class ColorPostalCodeForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        postalColor()
        Dim lbl As Label = Master.FindControl("lblUsuario")
        lbl.Text = "Usuario: " & Session("aaa")
        Master.FindControl("lblLogin").Visible = False
    End Sub

    Private Sub postalColor()
        For i = 0 To GridView1.Rows.Count - 1
            Try
                Dim x As Integer = Convert.ToInt32(GridView1.Rows(i).Cells(3).Text)
                If x Mod 2 = 0 Then
                    GridView1.Rows(i).BackColor = Drawing.Color.LightGreen
                Else
                    GridView1.Rows(i).BackColor = Drawing.Color.LightPink
                End If
            Catch ex As Exception
                GridView1.Rows(i).BackColor = Drawing.Color.LightBlue
            End Try

        Next
    End Sub
End Class