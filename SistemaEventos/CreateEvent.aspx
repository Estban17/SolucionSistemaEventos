<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateEvent.aspx.cs" Inherits="SistemaEventos.CreateEvent" %>
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

    <title>Crear Evento</title>
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
                <h1 class="mb-4">Crear Evento</h1>

                <!-- Formulario de Creación de Evento -->
                <div class="container">

                    <div class="mb-3">
                        <label for="txtNombre" class="form-label">Nombre del Evento:</label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="fuImagen" class="form-label">Imagen del Evento:</label>
                        <asp:FileUpload ID="fuImagen" runat="server" CssClass="form-control" />
                    </div>

                    <div class="mb-3">
                        <label for="txtDescripcion" class="form-label">Descripción:</label>
                        <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" MaxLength="500"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="ddlTipoEvento" class="form-label">Tipo de Evento:</label>
                        <asp:DropDownList ID="ddlTipoEvento" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="TipoEvento" DataValueField="IdTipoEvento">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT DISTINCT * FROM [cg_TipoEvento]"></asp:SqlDataSource>
                    </div>

                    <div class="mb-3">
                        <label for="ddlEstadoEvento" class="form-label">Estado del Evento:</label>
                        <asp:DropDownList ID="ddlEstadoEvento" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="EstadoEvento" DataValueField="IdEstadoEvento">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT DISTINCT * FROM [cg_EstadoEvento]"></asp:SqlDataSource>
                    </div>

                    <div class="mb-3">
                        <label for="txtNumAsistentes" class="form-label">Número de Asistentes:</label>
                        <asp:TextBox ID="txtNumAsistentes" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtRanEdadAsistentes" class="form-label">Rango de Edad de Asistentes:</label>
                        <asp:TextBox ID="txtRanEdadAsistentes" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtGeneroAsistentes" class="form-label">Género de Asistentes:</label>
                        <asp:TextBox ID="txtGeneroAsistentes" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="txtFechaInicio" class="form-label">Fecha de Inicio:</label>
                        <asp:TextBox ID="txtFechaInicio" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="ceFechaInicio" runat="server" TargetControlID="txtFechaInicio" Format="yyyy-MM-dd" />
                    </div>

                    <div class="mb-3">
                        <label for="txtFechaFin" class="form-label">Fecha de Fin:</label>
                        <asp:TextBox ID="txtFechaFin" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:CalendarExtender ID="ceFechaFin" runat="server" TargetControlID="txtFechaFin" Format="yyyy-MM-dd" />
                    </div>

                    <div class="mb-3">
                        <label for="txtLugar" class="form-label">Lugar:</label>
                        <asp:TextBox ID="txtLugar" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label for="ddlUsuarioId" class="form-label">ID del Usuario:</label>
                        <asp:DropDownList ID="ddlUsuarioId" runat="server" CssClass="form-control" DataSourceID="SqlDataSource3" DataTextField="Usuario" DataValueField="IdUsuario">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:DefaultConnection %>' SelectCommand="SELECT DISTINCT [IdUsuario], [Usuario] FROM [Usuario]"></asp:SqlDataSource>
                    </div>

                    

                    <asp:Button ID="btnCrearEvento" runat="server" Text="Crear Evento" CssClass="btn btn-primary" OnClick="btnCrearEvento_Click" />
                    <asp:Label ID="lblMessage" runat="server" CssClass="text-success mt-3"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
