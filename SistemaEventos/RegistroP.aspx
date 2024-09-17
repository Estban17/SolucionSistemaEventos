﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroP.aspx.cs" Inherits="SistemaEventos.RegistroP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="Recursos/Estilos/Estilos.css" rel="stylesheet" />
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>

    <title>Registro de Participantes</title>
</head>
<body>
    <div class="wrapper">
        <form id="form1" runat="server">

            <div class="row">
                <asp:Label Class="hh1" ID="lblBienvenida" runat="server" Text="Registro de Participantes"></asp:Label>
            </div>

            <!-- Nombre de Usuario -->
            <div class="input-box">
                <asp:TextBox ID="tbUsuario" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblUsuario" CssClass="label" runat="server" Text="Nombre"></asp:Label>
                <i class='bx bxs-user ii'></i>
            </div>

            <!-- Correo Electrónico -->
            <div class="input-box">
                <asp:TextBox ID="tbCorreo" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblCorreo" CssClass="label" runat="server" Text="Correo Electrónico"></asp:Label>
                <i class='bx bxs-envelope ii'></i>
            </div>

            <!-- Contraseña -->
            <div class="input-box">
                <asp:TextBox ID="tbContrasena" CssClass="input" runat="server" TextMode="Password" placeholder=""></asp:TextBox>
                <asp:Label ID="lblContrasena" CssClass="label" runat="server" Text="Contraseña"></asp:Label>
                <i class='bx bxs-lock ii'></i>
            </div>

            <!-- Confirmación de Contraseña -->
            <div class="input-box">
                <asp:TextBox ID="tbConfirmarContrasena" CssClass="input" runat="server" TextMode="Password" placeholder=""></asp:TextBox>
                <asp:Label ID="lblConfirmarContrasena" CssClass="label" runat="server" Text="Confirmar Contraseña"></asp:Label>
                <i class='bx bxs-lock ii'></i>
            </div>

            <!-- Botón de Registro -->
            <div class="row">
                <asp:Button CssClass="boton" ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" />
            </div>
            <br />

            <!-- Enlace para volver al inicio de sesión -->
            <div class="row">
                <a href="LoginP.aspx" class="forgot-password-link">¿Ya tienes cuenta? Inicia sesión aquí</a>
            </div>

        </form>
    </div>
</body>
</html>

