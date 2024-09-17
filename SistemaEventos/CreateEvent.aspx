<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="SistemaEventos.CreateEvent" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href="Recursos/Estilos/Estilos1.css" rel="stylesheet" />
    <title>Crear Evento</title>
</head>
<body>
    <form id="form2" class="d-center m-0" runat="server">
        <div class="d-flex">
            <!-- Barra Lateral -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-center">
                    <a class="navbar-brand" href="Index.aspx">
                        <img src="Recursos/dif.png" alt="Logo" width="100" height="100" class="d-inline-block align-top">
                    </a>
                    <div class="sidebar-header p-3">
                        <h4>Menú</h4>
                    </div>
                </div>
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="#createEvento" data-bs-toggle="collapse">
                            <i class="bi bi-file-earmark-plus"></i>Agregar
                            <i class="bi bi-chevron-down ms-2"></i>
                        </a>
                        <ul class="collapse" id="createEvento">
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="CreateEvent.aspx">Crear evento</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#readEvento" data-bs-toggle="collapse">
                            <i class="bi bi-search"></i>Consultar
                            <i class="bi bi-chevron-down ms-2"></i>
                        </a>
                        <ul class="collapse" id="readEvento">
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="Menu1.aspx">Ver eventos</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link ms-3" href="Menu1.aspx">Actualizar eventos</a>
                            </li>
                        </ul>
                    </li>
                    <%--<li class="nav-item">
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
                <h1 class="mb-4">Crear Evento</h1>

                <!-- Formulario de Creación de Evento -->
                <div class="container">

                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Nombre del Evento:</label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre del evento es requerido" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                    </div>

                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label">Descripción:</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtFechaInicio" class="form-label">Fecha de Inicio:</label>
                        <asp:TextBox ID="txtFechaInicio" runat="server" CssClass="form-control"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvFechaInicio" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="Fecha de inicio es requerida" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revFechaInicio" runat="server" ControlToValidate="txtFechaInicio" ErrorMessage="Fecha inválida" ValidationExpression="\d{4}-\d{2}-\d{2}" CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                    </div>

                    <div class="mb-3">
                        <label for="txtFechaFin" class="form-label">Fecha de Fin:</label>
                        <asp:TextBox ID="txtFechaFin" runat="server" CssClass="form-control"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvFechaFin" runat="server" ControlToValidate="txtFechaFin" ErrorMessage="Fecha de fin es requerida" CssClass="text-danger" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revFechaFin" runat="server" ControlToValidate="txtFechaFin" ErrorMessage="Fecha inválida" ValidationExpression="\d{4}-\d{2}-\d{2}" CssClass="text-danger" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                    </div>

                    <div class="mb-3">
                        <label for="txtLugar" class="form-label">Lugar:</label>
                        <asp:TextBox ID="txtLugar" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <asp:Button ID="btnCrearEvento" runat="server" Text="Crear Evento" CssClass="btn btn-primary" OnClick="btnCrearEvento_Click" />
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
