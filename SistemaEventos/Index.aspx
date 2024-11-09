<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SistemaEventos.Index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" rel="stylesheet">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="Recursos/Estilos/icon.css" rel="stylesheet" />
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
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
                    <a href="CreateEvent.aspx" class="icon-button">
                        <i class='bx bxs-add-to-queue'></i>
                    </a>

                </div>
                <br />

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="IdEvento" HeaderText="IdEvento" ReadOnly="True" SortExpression="IdEvento" Visible="false"></asp:BoundField>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre"></asp:BoundField>
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
                        <asp:BoundField DataField="TipoEvento" HeaderText="TipoEvento" SortExpression="TipoEvento"></asp:BoundField>
                        <asp:BoundField DataField="EstadoEvento" HeaderText="EstadoEvento" SortExpression="EstadoEvento"></asp:BoundField>
                        <asp:BoundField DataField="NumAsistentes" HeaderText="NumAsistentes" SortExpression="NumAsistentes"></asp:BoundField>
                        <asp:BoundField DataField="RanEdadAsistentes" HeaderText="RanEdadAsistentes" SortExpression="RanEdadAsistentes"></asp:BoundField>
                        <asp:BoundField DataField="GeneroAsistentes" HeaderText="GeneroAsistentes" SortExpression="GeneroAsistentes"></asp:BoundField>
                        <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio"></asp:BoundField>
                        <asp:BoundField DataField="FechaFin" HeaderText="FechaFin" SortExpression="FechaFin"></asp:BoundField>
                        <asp:BoundField DataField="Lugar" HeaderText="Lugar" SortExpression="Lugar"></asp:BoundField>
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario"></asp:BoundField>
                        <asp:BoundField DataField="FechaCreacion" HeaderText="FechaCreacion" SortExpression="FechaCreacion"></asp:BoundField>
                        <asp:BoundField DataField="FechaModificacion" HeaderText="FechaModificacion" SortExpression="FechaModificacion"></asp:BoundField>

                        <asp:TemplateField HeaderText="Ver Eventos">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButtonVer" runat="server" CommandName="Select" CommandArgument='<%# Eval("IdEvento") %>' CssClass="icon-button">
            <i class='bx bx-list-ol'></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Editar">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButtonEditar" runat="server" CommandName="Edit" CommandArgument='<%# Eval("IdEvento") %>' CssClass="icon-button">
            <i class='bx bxs-pencil'></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Eliminar">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButtonEliminar" runat="server" CommandName="Delete" CommandArgument='<%# Eval("IdEvento") %>' CssClass="icon-button" OnClientClick="return confirm('¿Estás seguro de que deseas eliminar este elemento?');">
           <i class='bx bxs-trash' ></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <editrowstyle backcolor="#7C6F57"></editrowstyle>

                        <footerstyle backcolor="#1C5E55" font-bold="True" forecolor="White"></footerstyle>

                        <headerstyle backcolor="#1C5E55" font-bold="True" forecolor="White"></headerstyle>

                        <pagerstyle horizontalalign="Center" backcolor="#666666" forecolor="White"></pagerstyle>

                        <rowstyle backcolor="#E3EAEB"></rowstyle>

                        <selectedrowstyle backcolor="#C5BBAF" font-bold="True" forecolor="#333333"></selectedrowstyle>

                        <sortedascendingcellstyle backcolor="#F8FAFA"></sortedascendingcellstyle>

                        <sortedascendingheaderstyle backcolor="#246B61"></sortedascendingheaderstyle>

                        <sorteddescendingcellstyle backcolor="#D4DFE1"></sorteddescendingcellstyle>

                        <sorteddescendingheaderstyle backcolor="#15524A"></sorteddescendingheaderstyle>


                    </Columns>
                </asp:GridView>

            </div>
        </div>
    </form>
</body>
</html>
