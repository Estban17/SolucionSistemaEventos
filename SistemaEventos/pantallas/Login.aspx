<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SistemaEventos.pantallas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="../estilos/Logi.css" rel="stylesheet" />

    <title>Inicio de Seción</title>
</head>
<body>

    <div class="wrapper">

        <form id="FormLogi" runat="server">

            <div class="row">
                <asp:Label CssClass="hh1" ID="lblBienvenida" runat="server" Text="Iniciar sesion"></asp:Label>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbUsuario" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblUsuario" CssClass="label" runat="server" Text="Usuario"></asp:Label>
                <i class='bx bxs-user ii'></i>
            </div>
            
            <div class="input-box">
                <asp:TextBox ID="tbContrasena" CssClass="input" runat="server" TextMode="Password" placeholder=""></asp:TextBox>
                <asp:Label ID="lblContrasena" CssClass="label" runat="server" Text="Contraseña"></asp:Label>
                <i class='bx bxs-lock ii'></i>
            </div>
          
            <div class="row">
                <asp:Button CssClass="boton" ID="btnIngresar" runat="server" Text="Ingresar"/>
            </div>

        </form>

    </div>

</body>
</html>
