<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateActivity.aspx.cs" Inherits="SistemaEventos.CreateActivity" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">

    <title>Crear Actividad</title>
</head>
<body>
    <form id="form2" class="d-center m-0" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <div class="d-flex">

            <!-- Barra de Navegación Superior -->
            <nav class="navbar container-fluid navbar-expand-lg navbar-dark bg-dark fixed-top">
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
            <div id="page-content-wrapper" class="p-4 mt-4">
                <h1 class="mb-4">Crear Actividad</h1>

                <!-- Formulario de Creación de Actividad -->
                <div class="container">

                    <!-- Nombre de la Actividad -->
                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Nombre de la Actividad:</label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" MaxLength="200" required="true"></asp:TextBox>
                    </div>

                    <!-- Descripción de la Actividad -->
                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label">Descripción:</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" MaxLength="500"></asp:TextBox>
                    </div>

                    <!-- Fecha de la Actividad -->
                    <div class="mb-3">
                        <label for="txtFecha" class="form-label">Fecha de la Actividad:</label>
                        <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="ceFecha" runat="server" TargetControlID="txtFecha" Format="yyyy-MM-dd" />
                    </div>

                    <!-- Hora de la Actividad -->
                    <div class="mb-3">
                        <label for="txtHora" class="form-label">Hora de la Actividad:</label>
                        <asp:TextBox ID="txtHora" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                    </div>

                    <!-- Duración de la Actividad -->
                    <div class="mb-3">
                        <label for="txtDuracion" class="form-label">Duración (en horas):</label>
                        <asp:TextBox ID="txtDuracion" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <!-- Lugar de la Actividad -->
                    <div class="mb-3">
                        <label for="txtLugar" class="form-label">Lugar:</label>
                        <asp:TextBox ID="txtLugar" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                    </div>

                    <!-- Tipo de Lugar -->
                    <div class="mb-3">
                        <label for="txtTipoLugar" class="form-label">Tipo de Lugar:</label>
                        <asp:TextBox ID="txtTipoLugar" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                    <!-- Observaciones -->
                    <div class="mb-3">
                        <label for="txtObservaciones" class="form-label">Observaciones:</label>
                        <asp:TextBox ID="txtObservaciones" runat="server" TextMode="MultiLine" CssClass="form-control" MaxLength="500"></asp:TextBox>
                    </div>

                    <!-- Usuario Responsable -->
                    <div class="mb-3">
                        <label for="ddlUsuarioId" class="form-label">Usuario Responsable:</label>
                        <asp:DropDownList ID="ddlUsuarioId" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="Usuario" DataValueField="IdUsuario">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT DISTINCT [IdUsuario], [Usuario] FROM [Usuario]"></asp:SqlDataSource>
                    </div>

                    <!-- Botón para Crear Actividad -->
                    <asp:Button ID="btnCrearActividad" runat="server" Text="Crear Actividad" CssClass="btn btn-primary" OnClick="btnCrearActividad_Click" />
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
