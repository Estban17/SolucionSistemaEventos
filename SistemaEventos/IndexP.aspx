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
            <!-- Barra Lateral -->
            <!-- <div class="sidebar" id="sidebar">
                <div class="sidebar-center">´53
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
            </div> -->

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

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Reunión+de+Jóvenes" class="card-img-top" alt="Reunión de Jóvenes">
                        <div class="card-body">
                            <h5 class="card-title">Reunión de Jóvenes</h5>
                            <p class="card-text">Únete a nosotros para una reunión inspiradora con jóvenes de la comunidad.</p>
                            <asp:Button ID="Button1" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Taller+de+Música" class="card-img-top" alt="Taller de Música">
                        <div class="card-body">
                            <h5 class="card-title">Taller de Música</h5>
                            <p class="card-text">Aprende a tocar instrumentos y mejora tus habilidades musicales.</p>
                            <asp:Button ID="Button2" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Charla+Motivacional" class="card-img-top" alt="Charla Motivacional">
                        <div class="card-body">
                            <h5 class="card-title">Charla Motivacional</h5>
                            <p class="card-text">Inspírate con historias de éxito y superación personal.</p>
                            <asp:Button ID="Button3" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Cine+Foro" class="card-img-top" alt="Cine Foro">
                        <div class="card-body">
                            <h5 class="card-title">Cine Foro</h5>
                            <p class="card-text">Disfruta de una película seguida de un debate interesante.</p>
                            <asp:Button ID="Button4" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Excursión+a+la+Naturaleza" class="card-img-top" alt="Excursión a la Naturaleza">
                        <div class="card-body">
                            <h5 class="card-title">Excursión a la Naturaleza</h5>
                            <p class="card-text">Explora la belleza de la naturaleza en una emocionante excursión.</p>
                            <asp:Button ID="Button5" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Torneo+de+Fútbol" class="card-img-top" alt="Torneo de Fútbol">
                        <div class="card-body">
                            <h5 class="card-title">Torneo de Fútbol</h5>
                            <p class="card-text">Participa en un emocionante torneo de fútbol con amigos.</p>
                            <asp:Button ID="Button6" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Encuentro+de+Lectura" class="card-img-top" alt="Encuentro de Lectura">
                        <div class="card-body">
                            <h5 class="card-title">Encuentro de Lectura</h5>
                            <p class="card-text">Disfruta de la lectura y comparte tus libros favoritos.</p>
                            <asp:Button ID="Button7" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Clases+de+Cocina" class="card-img-top" alt="Clases de Cocina">
                        <div class="card-body">
                            <h5 class="card-title">Clases de Cocina</h5>
                            <p class="card-text">Aprende nuevas recetas y técnicas de cocina en un ambiente divertido.</p>
                            <asp:Button ID="Button8" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Conferencia+de+Tecnología" class="card-img-top" alt="Conferencia de Tecnología">
                        <div class="card-body">
                            <h5 class="card-title">Conferencia de Tecnología</h5>
                            <p class="card-text">Descubre las últimas tendencias y avances en el mundo de la tecnología.</p>
                            <asp:Button ID="Button9" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-4">
                    <div class="card mb-4">
                        <img src="https://via.placeholder.com/300x200?text=Noche+de+Juegos" class="card-img-top" alt="Noche de Juegos">
                        <div class="card-body">
                            <h5 class="card-title">Noche de Juegos</h5>
                            <p class="card-text">Diviértete con una variedad de juegos de mesa y videojuegos.</p>
                            <asp:Button ID="Button10" runat="server" Text="Ver" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" />
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
