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

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://blog.paralideres.org/wp-content/uploads/2014/05/hillsong.jpg" class="card-img-top" alt="Reunión de Jóvenes">
            <div class="card-body">
                <h5 class="card-title">Reunión de Jóvenes</h5>
                <p class="card-text">Únete a nosotros para una reunión inspiradora con jóvenes de la comunidad.</p>
                <p><strong>Fecha de inicio:</strong> 01/12/2023</p>
                <p><strong>Fecha de fin:</strong> 01/12/2023</p>
                <p><strong>Lugar:</strong> Centro Comunitario</p>
                <p><strong>Hora de inicio:</strong> 18:00</p>
                <asp:Button ID="Button1" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Reunión de Jóvenes" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://th.bing.com/th/id/R.dd01cd7820dc3d9cb34972d8acaa0bf2?rik=5kYeLnG%2b8GKdKg&pid=ImgRaw&r=0" class="card-img-top" alt="Taller de Música">
            <div class="card-body">
                <h5 class="card-title">Taller de Música</h5>
                <p class="card-text">Aprende a tocar instrumentos y mejora tus habilidades musicales.</p>
                <p><strong>Fecha de inicio:</strong> 05/12/2023</p>
                <p><strong>Fecha de fin:</strong> 05/12/2023</p>
                <p><strong>Lugar:</strong> Sala de Música</p>
                <p><strong>Hora de inicio:</strong> 10:00</p>
                <asp:Button ID="Button2" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Taller de Música" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://th.bing.com/th/id/R.7822c4a1c670f2d1c3228eea3d3aeace?rik=N5eunFXI4PNXjQ&pid=ImgRaw&r=0" class="card-img-top" alt="Charla Motivacional">
            <div class="card-body">
                <h5 class="card-title">Charla Motivacional</h5>
                <p class="card-text">Inspírate con historias de éxito y superación personal.</p>
                <p><strong>Fecha de inicio:</strong> 10/12/2023</p>
                <p><strong>Fecha de fin:</strong> 10/12/2023</p>
                <p><strong>Lugar:</strong> Auditorio Principal</p>
                <p><strong>Hora de inicio:</strong> 16:00</p>
                <asp:Button ID="Button3" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Charla Motivacional" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://th.bing.com/th/id/OIP.MSrZNMlIeTUSITIB2f7QLQHaEK?rs=1&pid=ImgDetMain" class="card-img-top" alt="Cine Foro">
            <div class="card-body">
                <h5 class="card-title">Cine Foro</h5>
                <p class="card-text">Disfruta de una película seguida de un debate interesante.</p>
                <p><strong>Fecha de inicio:</strong> 15/12/2023</p>
                <p><strong>Fecha de fin:</strong> 15/12/2023</p>
                <p><strong>Lugar:</strong> Sala de Cine</p>
                <p><strong>Hora de inicio:</strong> 19:00</p>
                <asp:Button ID="Button4" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Cine Foro" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://th.bing.com/th/id/R.be965e0c4cf450d4f654c426890a44b4?rik=xO%2f6MN2lhsb03Q&pid=ImgRaw&r=0" class="card-img-top" alt="Excursión a la Naturaleza">
            <div class="card-body">
                <h5 class="card-title">Excursión a la Naturaleza</h5>
                <p class="card-text">Explora la belleza de la naturaleza en una emocionante excursión.</p>
                <p><strong>Fecha de inicio:</strong> 20/12/2023</p>
                <p><strong>Fecha de fin:</strong> 20/12/2023</p>
                <p><strong>Lugar:</strong> Parque Nacional</p>
                <p><strong>Hora de inicio:</strong> 08:00</p>
                <asp:Button ID="Button5" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Excursión a la Naturaleza" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://th.bing.com/th/id/OIP.RZSQQrSByspDpmmQaj-xWQHaE7?rs=1&pid=ImgDetMain" class="card-img-top" alt="Torneo de Fútbol">
            <div class="card-body">
                <h5 class="card-title">Torneo de Fútbol</h5>
                <p class="card-text">Participa en un emocionante torneo de fútbol con amigos.</p>
                <p><strong>Fecha de inicio:</strong> 25/12/2023</p>
                <p><strong>Fecha de fin:</strong> 25/12/2023</p>
                <p><strong>Lugar:</strong> Campo de Fútbol</p>
                <p><strong>Hora de inicio:</strong> 15:00</p>
                <asp:Button ID="Button6" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Torneo de Fútbol" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://th.bing.com/th/id/OIP.VfVWgLe9Cb99e1aD_x0NoQHaFA?w=263&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7" class="card-img-top" alt="Encuentro de Lectura">
            <div class="card-body">
                <h5 class="card-title">Encuentro de Lectura</h5>
                <p class="card-text">Disfruta de la lectura y comparte tus libros favoritos.</p>
                <p><strong>Fecha de inicio:</strong> 30/12/2023</p>
                <p><strong>Fecha de fin:</strong> 30/12/2023</p>
                <p><strong>Lugar:</strong> Biblioteca Municipal</p>
                <p><strong>Hora de inicio:</strong> 11:00</p>
                <asp:Button ID="Button7" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Encuentro de Lectura" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://lungarnofirenze.it/wp-content/uploads/2020/01/MT_Laboratorio-cucina-di-Bulli-e-Balene_-ph.-Giovanni-Savi.jpg" class="card-img-top" alt="Clases de Cocina">
            <div class="card-body">
                <h5 class="card-title">Clases de Cocina</h5>
                <p class="card-text">Aprende nuevas recetas y técnicas de cocina en un ambiente divertido.</p>
                <p><strong>Fecha de inicio:</strong> 05/01/2024</p>
                <p><strong>Fecha de fin:</strong> 05/01/2024</p>
                <p><strong>Lugar:</strong> Cocina Comunitaria</p>
                <p><strong>Hora de inicio:</strong> 17:00</p>
                <asp:Button ID="Button8" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Clases de Cocina" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://th.bing.com/th/id/OIP.sUiybo4LYkcmi2_a7UiMLgHaEK?rs=1&pid=ImgDetMain" class="card-img-top" alt="Conferencia de Tecnología">
            <div class="card-body">
                <h5 class="card-title">Conferencia de Tecnología</h5>
                <p class="card-text">Descubre las últimas tendencias y avances en el mundo de la tecnología.</p>
                <p><strong>Fecha de inicio:</strong> 10/01/2024</p>
                <p><strong>Fecha de fin:</strong> 10/01/2024</p>
                <p><strong>Lugar:</strong> Sala de Conferencias</p>
                <p><strong>Hora de inicio:</strong> 14:00</p>
                <asp:Button ID="Button9" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Conferencia de Tecnología" />
            </div>
        </div>
    </div>

    <div class="col-4">
        <div class="card mb-4">
            <img src="https://as01.epimg.net/meristation/imagenes/2020/03/16/reportajes/1584351464_550287_1586779530_noticia_normal.jpg" class="card-img-top" alt="Noche de Juegos">
            <div class="card-body">
                <h5 class="card-title">Noche de Juegos</h5>
                <p class="card-text">Diviértete con una variedad de juegos de mesa y videojuegos.</p>
                <p><strong>Fecha de inicio:</strong> 15/01/2024</p>
                <p><strong>Fecha de fin:</strong> 15/01/2024</p>
                <p><strong>Lugar:</strong> Sala de Juegos</p>
                <p><strong>Hora de inicio:</strong> 19:00</p>
                <asp:Button ID="Button10" runat="server" Text="Registrarse" CssClass="btn btn-primary" OnClick="btnVerEvent_Click" CommandArgument="Noche de Juegos" />
            </div>
        </div>
    </div>

</div>


        </div>
    </form>
</body>
</html>
