<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SistemaEventos.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">
    <title>Inicio</title>
</head>
<body>
    <form id="form2" class="d-center m-0" runat="server">
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
            <div id="page-content-wrapper" class="p-4 mt-4 container-fluid">

                <div>
                    <h1 class="mb-4">Sistema de Gestion de Eventos</h1>
                    <h4>Agrega, consulta, modifica, elimina y administra eventos institucionales.</h4>
                </div>
                <asp:Button ID="btnCreate" runat="server" Text="Nuevo" CssClass="btn btn-primary" OnClick="btnNewEvent_Click" />
                <table class="table table-bordered table-responsive">
                    <thead>
                        <tr>
                            <th>Evento</th>
                            <th>Descripción</th>
                            <th>Editar</th>
                            <th>Eventos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Reunión de Jóvenes</td>
                            <td>Únete a nosotros para una reunión inspiradora con jóvenes de la comunidad.</td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton1" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Taller de Música</td>
                            <td>Aprende a tocar instrumentos y mejora tus habilidades musicales.</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton2" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Charla Motivacional</td>
                            <td>Inspírate con historias de éxito y superación personal.</td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton3" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Cine Foro</td>
                            <td>Disfruta de una película seguida de un debate interesante.</td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton4" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Excursión a la Naturaleza</td>
                            <td>Explora la belleza de la naturaleza en una emocionante excursión.</td>
                            <td>
                                <asp:Button ID="Button5" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton5" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Torneo de Fútbol</td>
                            <td>Participa en un emocionante torneo de fútbol con amigos.</td>
                            <td>
                                <asp:Button ID="Button6" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton6" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Encuentro de Lectura</td>
                            <td>Disfruta de la lectura y comparte tus libros favoritos.</td>
                            <td>
                                <asp:Button ID="Button7" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton7" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Clases de Cocina</td>
                            <td>Aprende nuevas recetas y técnicas de cocina en un ambiente divertido.</td>
                            <td>
                                <asp:Button ID="Button8" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton8" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Conferencia de Tecnología</td>
                            <td>Descubre las últimas tendencias y avances en el mundo de la tecnología.</td>
                            <td>
                                <asp:Button ID="Button9" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton9" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                        <tr>
                            <td>Noche de Juegos</td>
                            <td>Diviértete con una variedad de juegos de mesa y videojuegos.</td>
                            <td>
                                <asp:Button ID="Button10" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" /></td>
                            <td>
                                <asp:Button ID="EventButton10" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" /></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
