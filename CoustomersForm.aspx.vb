Public Class CoustomersForm
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.TextBox1.Text = ""
        Me.TextBox2.Text = ""
        Me.TextBox3.Text = ""
        Me.GridView1.SelectedIndex = -1
        Dim lbl As Label = Master.FindControl("lblUsuario")
        lbl.Text = "Usuario: " & Session("aaa")
        Master.FindControl("lblLogin").Visible = False
    End Sub

    Private Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Me.TextBox1.Text = GridView1.SelectedRow.Cells(2).Text
        Me.TextBox2.Text = GridView1.SelectedRow.Cells(1).Text
        Me.TextBox3.Text = GridView1.SelectedRow.Cells(3).Text
    End Sub
End Class