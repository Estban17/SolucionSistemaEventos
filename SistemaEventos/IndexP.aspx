﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexP.aspx.cs" Inherits="SistemaEventos.Participante.IndexP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="Recursos/Estilos/Estilos1.css" rel="stylesheet" />
    <title>Inicio</title>
</head>
<body>
    <form id="form2" class="d-center m-0" runat="server">
        <div class="d-flex">
            <!-- Barra Lateral -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-center">
                    <a class="navbar-brand" href="IndexP.aspx">
                        <img src="Recursos/dif.png" alt="Logo" width="100" height="100" class="d-inline-block align-top">                        
                    </a>
                    <div class="sidebar-header p-3">
                        <h4>Menú</h4>
                    </div>
                </div>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="#createEvento" data-bs-toggle="collapse">
                            <i class="bi bi-search"></i>Consultar
                            <i class="bi bi-chevron-down ms-2"></i>
                        </a>
                        <ul class="collapse" id="createEvento">
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="Gestion.aspx">Ver eventos</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#readEvento" data-bs-toggle="collapse">
                            <i class="bi bi-file-earmark-plus"></i>Registrarme
                            <i class="bi bi-chevron-down ms-2"></i>
                        </a>
                        <ul class="collapse" id="readEvento">
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="FormRegP.aspx">Registrase a evento</a>
                            </li>
                            <%--<li class="nav-item">
                                <a class="nav-link ms-3" href="Menu1.aspx">Actualizar eventos</a>
                            </li>--%>
                        </ul>
                    </li>
                   <%-- <li class="nav-item">
                        <a class="nav-link" href="#option2Menu" data-bs-toggle="collapse">
                            <i class="bi bi-file-earmark-text"></i>Opción 2
                            <i class="bi bi-chevron-down ms-2"></i>
                        </a>
                        <ul class="collapse" id="option2Menu">
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="Menu2.aspx">Subopción 1</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#printMenu" data-bs-toggle="collapse">
                            <i class="bi bi-file-earmark-text"></i>Imprimir
                            <i class="bi bi-chevron-down ms-2"></i>
                        </a>
                        <ul class="collapse" id="printMenu">
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="EPP.aspx">Excel</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="PDF.aspx">PDF</a>
                            </li>
                        </ul>
                    </li>--%>
                </ul>
            </div>

            <!-- Barra de Navegación Superior -->
            <nav class="navbar navbar-expand-lg navbar-dark bg-custom fixed-top">
                <div class="container-fluid">
                    <asp:Label ID="lblBienvenida" runat="server" Text="" CssClass="h4 text-white"></asp:Label>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                        <div class="dropdown">
                            <button class="btn btn-transparent dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="bi bi-box-arrow-right"></i>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownMenuButton">
                                <li>
                                    <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesión" CssClass="btn btn-transparent dropdown-item" OnClick="btnCerrar_Click" />
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>

            <!-- Contenido Principal -->
            <div id="page-content-wrapper" class="p-4">
                <h1 class="mb-4">Registro de Eventos</h1>
                <h4>Registrate a un evento DIF.</h4>
            </div>
        </div>
    </form>
</body>
</html>