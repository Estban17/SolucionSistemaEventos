<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegiEvent.aspx.cs" Inherits="SistemaEventos.pantallas.RegiAct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="../estilos/Logi.css" rel="stylesheet" />
    <title>Registrar Actividad</title>
</head>
<body>

    <div class="wrapper">

        <form id="FormRegisEvent" runat="server">

            <div class="row">
                <asp:Label CssClass="hh1" ID="lblBienvenida" runat="server" Text="Registro para un evento"></asp:Label>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbEvent" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblEvent" CssClass="label" runat="server" Text="Evento"></asp:Label>
                <i class='bx bxs-calendar-event ii'></i>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbUser" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblUser" CssClass="label" runat="server" Text="Usuario"></asp:Label>
                <i class='bx bxs-user ii'></i>
            </div>

            <div class="row">
                <asp:Button CssClass="boton" ID="btnRegistrarEvent" runat="server" Text="Registrar" />
            </div>

        </form>

    </div>

</body>
</html>
