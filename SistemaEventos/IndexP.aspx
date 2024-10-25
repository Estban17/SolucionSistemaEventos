<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IndexP.aspx.cs" Inherits="SistemaEventos.Participante.IndexP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>

    <title>Inicio</title>
</head>
<body>
    <form id="form2" class="d-center m-0" runat="server">
        <div class="container-fluid">

            <!-- Barra de Navegación Superior -->
            <nav class="navbar container-fluid navbar-expand-lg navbar-dark bg-black fixed-top">
                <div class="container-fluid">
                    <asp:Label ID="lblBienvenida" runat="server" Text="" CssClass="h4 text-white"></asp:Label>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                        <div class="dropdown">
                            <button class="btn btn-link text-white dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
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
            <div id="page-content-wrapper" class="col p-4 row mt-4">
                <h1 class="mb-4">Registro de Eventos</h1>
                <h4>Regístrate a un evento DIF.</h4>

                <!-- Repeater para mostrar los eventos de la base de datos -->
                <asp:Repeater ID="repeaterEventos" runat="server" OnItemCommand="repeaterEventos_ItemCommand">
                    <ItemTemplate>
                        <div class="col-4">
                            <div class="card mb-4">
                                <img src='<%# Eval("Imagen") %>' class="card-img-top" alt='<%# Eval("Nombre") %>' />
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Nombre") %></h5>
                                    <p class="card-text"><%# Eval("Descripcion") %></p>
                                    <p><strong>Fecha de inicio:</strong> <%# Eval("FechaInicio", "{0:dd/MM/yyyy}") %></p>
                                    <p><strong>Fecha de fin:</strong> <%# Eval("FechaFin", "{0:dd/MM/yyyy}") %></p>
                                    <p><strong>Lugar:</strong> <%# Eval("Lugar") %></p>
                                    <p><strong>Numero de Asistentes:</strong> <%# Eval("NumAsistentes") %></p>
                                    <p><strong>Genero de Asistentes:</strong> <%# Eval("GeneroAsistentes") %></p>
                                    <p><strong>Edad de Asistentes:</strong> <%# Eval("RanEdadAsistentes") %></p>
                                    <asp:Button ID="btnVerEvent" runat="server" Text="Ver Evento" CommandName="VerEvento" CommandArgument='<%# Eval("Nombre") %>' CssClass="btn btn-primary" />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </form>
</body>
</html>
