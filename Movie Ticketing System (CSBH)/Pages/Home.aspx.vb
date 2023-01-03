﻿
Public Class User
    Inherits System.Web.UI.Page
    Private Sub User_Init(sender As Object, e As EventArgs) Handles Me.Init
        If Session("username") = Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub


    Protected Sub LogoutButtonMobile_Click(sender As Object, e As EventArgs) Handles logoutButtonMobile.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("Login.aspx")

    End Sub

    Protected Sub LogoutButtonDesktop_Click(sender As Object, e As EventArgs) Handles logoutButtonDesktop.Click
        Session.Clear()
        Session.RemoveAll()
        Session.Abandon()
        Response.Redirect("Login.aspx")

    End Sub


End Class