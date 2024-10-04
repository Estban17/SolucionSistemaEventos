<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SistemaEventos.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Selección de Usuario</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('Recursos/puerta.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            background-color: #f4f4f4;
            text-align: center;
        }
        .container {
            margin-top: 150px;
        }
        .box {
            display: inline-block;
            background-color: #800000;
            color: white;
            padding: 20px;
            width: 200px;
            height: 100px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            cursor: pointer;
        }
        .box:hover {
            background-color: #a00000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="box" onclick="window.location.href='LoginP.aspx';">
                <h2>Participante</h2>
            </div>
            <div class="box" onclick="window.location.href='Login.aspx';">
                <h2>Administrador</h2>
            </div>
        
        </div>
    </form>
</body>
</html>
