﻿Public Class WebForm4
    Inherits System.Web.UI.Page

    Private Sub WebForm4_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub LogoutButton_Click(sender As Object, e As EventArgs) Handles logoutButton.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("login.aspx")
    End Sub

End Class