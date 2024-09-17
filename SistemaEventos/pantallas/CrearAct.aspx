﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearAct.aspx.cs" Inherits="SistemaEventos.pantallas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="../estilos/Logi.css" rel="stylesheet" />
    <title>Crear Actividad</title>
</head>
<body>


    <div class="wrapper">

        <form id="FormCreateAct" runat="server">

            <div class="row">
                <asp:Label CssClass="hh1" ID="lblBienvenida" runat="server" Text="Crear Actividad"></asp:Label>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbEvent" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblEvent" CssClass="label" runat="server" Text="Evento al que pertenece"></asp:Label>
                <i class='bx bxs-calendar-event ii'></i>
            </div>

            <div class="input-box">
                <asp:TextBox ID="TextBox1" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="Label1" CssClass="label" runat="server" Text="Actividad"></asp:Label>
                <i class='bx bxs-calendar-event ii'></i>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbPlace" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblPlace" CssClass="label" runat="server" Text="Lugar"></asp:Label>
                <i class='bx bxs-edit-location ii'></i>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbDate" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblDate" CssClass="label" runat="server" Text="Fecha"></asp:Label>
                <i class='bx bxs-calendar ii'></i>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbHour" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblHour" CssClass="label" runat="server" Text="Hora"></asp:Label>
                <i class='bx bxs-watch ii'></i>
            </div>

            <div class="input-box">
                <asp:TextBox ID="TextBox2" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="Label2" CssClass="label" runat="server" Text="Dirección"></asp:Label>
                <i class='bx bxs-directions ii'></i>
            </div>

            <div class="row">
                <asp:Button CssClass="boton" ID="btnCreteAct" runat="server" Text="Crear" />
            </div>

        </form>

    </div>

</body>
</html>