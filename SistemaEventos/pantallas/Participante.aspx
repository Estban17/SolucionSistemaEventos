<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Participante.aspx.cs" Inherits="SistemaEventos.pantallas.Participante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="../estilos/Logi.css" rel="stylesheet" />
    <title>Participantes</title>
</head>
<body>
   <div class="wrapper">

     <form id="FormParti" runat="server">

         <div class="row">
             <asp:Label CssClass="hh1" ID="lblBienvenida" runat="server" Text="Datos del Participante"></asp:Label>
         </div>

         <div class="input-box">
    <asp:TextBox ID="tbUsuario" CssClass="input" runat="server" placeholder=""></asp:TextBox>
    <asp:Label ID="lblUsuario" CssClass="label" runat="server" Text="Usuario"></asp:Label>
    <i class='bx bxs-user ii'></i>
</div>

         <div class="input-box">
             <asp:TextBox ID="tbAPM" CssClass="input" runat="server" placeholder=""></asp:TextBox>
             <asp:Label ID="lblAPM" CssClass="label" runat="server" Text="Apellido Materno"></asp:Label>
              <i class='bx bxs-user ii'></i>
         </div>

         <div class="input-box">
             <asp:TextBox ID="tbAPP" CssClass="input" runat="server" placeholder=""></asp:TextBox>
             <asp:Label ID="lblAPP" CssClass="label" runat="server" Text="Apellido Paterno"></asp:Label>
              <i class='bx bxs-user ii'></i>
         </div>

         <div class="input-box">
             <asp:TextBox ID="tbDate" CssClass="input" runat="server" placeholder=""></asp:TextBox>
             <asp:Label ID="lblDate" CssClass="label" runat="server" Text="Telefono"></asp:Label>
             <i class='bx bxs-phone ii'></i>
         </div>

         <div class="input-box">
             <asp:TextBox ID="tbHour" CssClass="input" runat="server" placeholder=""></asp:TextBox>
             <asp:Label ID="lblHour" CssClass="label" runat="server" Text="Correo Electronico"></asp:Label>
            <i class='bx bxl-gmail ii'></i>
         </div>

         <div class="input-box">
             <asp:TextBox ID="TextBox2" CssClass="input" runat="server" placeholder=""></asp:TextBox>
             <asp:Label ID="Label2" CssClass="label" runat="server" Text="Estado"></asp:Label>
             <i class='bx bx-current-location ii' ></i>
         </div>

         <div class="row">
             <asp:Button CssClass="boton" ID="btnCreteAct" runat="server" Text="Crear" />
         </div>

     </form>

 </div>
</html>
