Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnEnviar_Click(sender As Object, e As EventArgs) Handles btnEnviar.Click

        Dim c As Cadastro = New Cadastro()

        c.nome = nome.Value
        c.tel = {telFixo.Value, telMovel.Value}

        Response.Write("<p>Nome : " & c.nome & "<p/><p>Tel-Fixo : " & c.tel(0) & "<p/><p>Celular : " & c.tel(1) & "<p/>")

    End Sub
End Class