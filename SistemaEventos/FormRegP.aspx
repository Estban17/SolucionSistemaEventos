<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormRegP.aspx.cs" Inherits="SistemaEventos.FormRegP" %>

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
                                <a class="nav-link ms-3" href="FormRegP.aspx">Registrarse a evento</a>
                            </li>
                        </ul>
                    </li>
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

                <!-- Formulario de Registro -->
                <div class="container mt-5">
                    <h2 class="text-center mb-4">Registro a Evento</h2>

                    <!-- Nombre -->
                    <div class="mb-3">
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre: " CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Nombre es requerido" ForeColor="Red" CssClass="form-text"></asp:RequiredFieldValidator>--%>
                    </div>

                    <!-- Apellido -->
                    <div class="mb-3">
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido: " CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="Apellido es requerido" ForeColor="Red" CssClass="form-text"></asp:RequiredFieldValidator>--%>
                    </div>

                    <!-- Email -->
                    <div class="mb-3">
                        <asp:Label ID="lblEmail" runat="server" Text="Email: " CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <%--<asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email es requerido" ForeColor="Red" CssClass="form-text"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email inválido" ValidationExpression="\w+@\w+\.\w+" ForeColor="Red" CssClass="form-text"></asp:RegularExpressionValidator>--%>
                    </div>

                    <!-- Teléfono -->
                    <div class="mb-3">
                        <asp:Label ID="lblTelefono" runat="server" Text="Teléfono: " CssClass="form-label"></asp:Label>
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <!-- Selección de Evento -->
                    <div class="mb-3">
                        <asp:Label ID="lblEvento" runat="server" Text="Seleccionar Evento: " CssClass="form-label"></asp:Label>
                        <asp:DropDownList ID="ddlEvento" runat="server" CssClass="form-select"></asp:DropDownList>
                        <%--<asp:RequiredFieldValidator ID="rfvEvento" runat="server" ControlToValidate="ddlEvento" InitialValue="0" ErrorMessage="Seleccione un evento" ForeColor="Red" CssClass="form-text"></asp:RequiredFieldValidator>--%>
                    </div>

                    <!-- Botón Registrar -->
                    <div class="d-grid gap-2">
                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" CssClass="btn btn-primary" />
                    </div>

                    <!-- Mensaje de Confirmación -->
                    <div class="mt-3">
                        <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Green" CssClass="form-text"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
