<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginP.aspx.cs" Inherits="SistemaEventos.Participante.LoginP" %>

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

    <title>Inicio de Sesion Participantes</title>
</head>
<body>
    <div class="wrapper">

        <form id="form1" runat="server">

            <div class="row">
                <asp:Label Class="hh1" ID="lblBienvenida" runat="server" Text="Iniciar sesion como Participante"></asp:Label>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbCURP" CssClass="input" runat="server" placeholder=""></asp:TextBox>
                <asp:Label ID="lblCURP" CssClass="label" runat="server" Text="CURP"></asp:Label>
                <i class='bx bxs-id-card ii'></i>
            </div>

            <div class="input-box">
                <asp:TextBox ID="tbContrasena" CssClass="input" runat="server" TextMode="Password" placeholder=""></asp:TextBox>
                <asp:Label ID="lblContrasena" CssClass="label" runat="server" Text="Contraseña"></asp:Label>
                <i class='bx bxs-lock ii'></i>
            </div>
            <div>
                <a href="RecPass.aspx" class="forgot-password-link">¿Olvidaste tu contraseña?</a>
            </div>
            <br />
            <div>
                <div class="g-recaptcha" data-sitekey="6LdewAMqAAAAAEkDaxlLoMlDRbto_w3-rDN4CPyH"></div>
            </div>

            <br />
            <div class="row">
                <asp:Button CssClass="boton" ID="btnIngresar" runat="server" Text="Ingresar" OnClick="btnIngresar_Click" />
            </div>
            <br />
            <div>
                <a href="RegistroP.aspx" class="forgot-password-link">¿Aun no tienes cuenta? Registrate aqui</a>
            </div>
        </form>

    </div>
    
</body>
</html>
