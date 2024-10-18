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
        <h1 class="mb-4">Sistema de Gestión de Eventos</h1>
        <h4>Agrega, consulta, modifica, elimina y administra eventos institucionales.</h4>
    </div>
    <asp:Button ID="btnCreate" runat="server" Text="Nuevo" CssClass="btn btn-primary" OnClick="btnNewEvent_Click" />
    <table class="table table-bordered table-responsive">
        <thead>
            <tr>
                <th>Evento</th>
                <th>Descripción</th>
                <th>Imagen</th>
                <th>Fecha de Inicio</th>
                <th>Fecha de Fin</th>
                <th>Lugar</th>
                <th>Hora de Inicio</th>
                <th>Visibilidad</th>
                <th>Estado</th>
                <th>Género</th>
                <th>Registrados / Asistentes</th>
                <th>Editar</th>
                <th>Eventos</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Reunión de Jóvenes</td>
                <td>Únete a nosotros para una reunión inspiradora con jóvenes de la comunidad.</td>
                <td><img src="https://blog.paralideres.org/wp-content/uploads/2014/05/hillsong.jpg" alt="Reunión de Jóvenes" width="100" /></td>
                <td>01/12/2023</td>
                <td>01/12/2023</td>
                <td>Centro Comunitario</td>
                <td>18:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>Jóvenes</td>
                <td>50 / 30</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton1" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Taller de Música</td>
                <td>Aprende a tocar instrumentos y mejora tus habilidades musicales.</td>
                <td><img src="https://th.bing.com/th/id/R.dd01cd7820dc3d9cb34972d8acaa0bf2?rik=5kYeLnG%2b8GKdKg&pid=ImgRaw&r=0" alt="Taller de Música" width="100" /></td>
                <td>05/12/2023</td>
                <td>05/12/2023</td>
                <td>Sala de Música</td>
                <td>10:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>30 / 20</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton2" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Charla Motivacional</td>
                <td>Inspírate con historias de éxito y superación personal.</td>
                <td><img src="https://th.bing.com/th/id/R.7822c4a1c670f2d1c3228eea3d3aeace?rik=N5eunFXI4PNXjQ&pid=ImgRaw&r=0" alt="Charla Motivacional" width="100" /></td>
                <td>10/12/2023</td>
                <td>10/12/2023</td>
                <td>Auditorio Principal</td>
                <td>16:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>100 / 80</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton3" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Cine Foro</td>
                <td>Disfruta de una película seguida de un debate interesante.</td>
                <td><img src="https://th.bing.com/th/id/OIP.MSrZNMlIeTUSITIB2f7QLQHaEK?rs=1&pid=ImgDetMain" alt="Cine Foro" width="100" /></td>
                <td>15/12/2023</td>
                <td>15/12/2023</td>
                <td>Sala de Cine</td>
                <td>19:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>40 / 30</td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton4" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Excursión a la Naturaleza</td>
                <td>Explora la belleza de la naturaleza en una emocionante excursión.</td>
                <td><img src="https://th.bing.com/th/id/R.be965e0c4cf450d4f654c426890a44b4?rik=xO%2f6MN2lhsb03Q&pid=ImgRaw&r=0" alt="Excursión a la Naturaleza" width="100" /></td>
                <td>20/12/2023</td>
                <td>20/12/2023</td>
                <td>Parque Nacional</td>
                <td>08:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>25 / 15</td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton5" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Torneo de Fútbol</td>
                <td>Participa en un emocionante torneo de fútbol con amigos.</td>
                <td><img src="https://th.bing.com/th/id/OIP.RZSQQrSByspDpmmQaj-xWQHaE7?rs=1&pid=ImgDetMain" alt="Torneo de Fútbol" width="100" /></td>
                <td>25/12/2023</td>
                <td>25/12/2023</td>
                <td>Campo de Fútbol</td>
                <td>15:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>60 / 40</td>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton6" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Encuentro de Lectura</td>
                <td>Disfruta de la lectura y comparte tus libros favoritos.</td>
                <td><img src="https://th.bing.com/th/id/OIP.VfVWgLe9Cb99e1aD_x0NoQHaFA?w=263&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" alt="Encuentro de Lectura" width="100" /></td>
                <td>30/12/2023</td>
                <td>30/12/2023</td>
                <td>Biblioteca Municipal</td>
                <td>11:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>20 / 15</td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton7" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Clases de Cocina</td>
                <td>Aprende nuevas recetas y técnicas de cocina en un ambiente divertido.</td>
                <td><img src="https://th.bing.com/th/id/OIP.d2FUXC6hYOYQ-qcpS2Qz8wHaE7?pid=ImgDet&w=290&h=163" alt="Clases de Cocina" width="100" /></td>
                <td>05/01/2024</td>
                <td>05/01/2024</td>
                <td>Cocina Comunitaria</td>
                <td>17:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>15 / 10</td>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton8" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Conferencia de Tecnología</td>
                <td>Descubre las últimas tendencias y avances en el mundo de la tecnología.</td>
                <td><img src="https://th.bing.com/th/id/OIP.W9VMuD0g9Wb_sRJtP_PF9wHaFj?pid=ImgDet&w=288&h=162" alt="Conferencia de Tecnología" width="100" /></td>
                <td>10/01/2024</td>
                <td>10/01/2024</td>
                <td>Sala de Conferencias</td>
                <td>14:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>80 / 60</td>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton9" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
            <tr>
                <td>Noche de Juegos</td>
                <td>Diviértete con una variedad de juegos de mesa y videojuegos.</td>
                <td><img src="https://th.bing.com/th/id/R.b3fc83f0f18ae20c98b2da36645278c7?rik=Z1U9VJ7o9WcrCA&pid=ImgRaw&r=0" alt="Noche de Juegos" width="100" /></td>
                <td>15/01/2024</td>
                <td>15/01/2024</td>
                <td>Sala de Juegos</td>
                <td>19:00</td>
                <td>Público</td>
                <td>Activo</td>
                <td>General</td>
                <td>50 / 40</td>
                <td>
                    <asp:Button ID="Button10" runat="server" Text="Editar" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                </td>
                <td>
                    <asp:Button ID="EventButton10" runat="server" Text="Eventos" CssClass="btn btn-secondary" OnClick="btnEventos_Click" />
                </td>
            </tr>
        </tbody>
    </table>
</div>

        </div>
    </form>
</body>
</html>
