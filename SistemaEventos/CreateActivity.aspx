<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateActivity.aspx.cs" Inherits="SistemaEventos.CreateActivity" %>

<!DOCTYPE html>
<html lang="es">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Crear Actividad</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Crear Actividad</h2>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre de la Actividad:</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" MaxLength="200" required="true"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción:</label>
                <asp:TextBox ID="txtDescripcion" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="500"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha:</label>
                <asp:TextBox ID="txtFecha" runat="server" CssClass="form-control" TextMode="Date" required="true"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtHora" class="form-label">Hora:</label>
                <asp:TextBox ID="txtHora" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtDuracion" class="form-label">Duración (en horas):</label>
                <asp:TextBox ID="txtDuracion" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtLugar" class="form-label">Lugar:</label>
                <asp:TextBox ID="txtLugar" runat="server" CssClass="form-control" MaxLength="200"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtTipoLugar" class="form-label">Tipo de Lugar:</label>
                <asp:TextBox ID="txtTipoLugar" runat="server" CssClass="form-control" MaxLength="50"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="txtObservaciones" class="form-label">Observaciones:</label>
                <asp:TextBox ID="txtObservaciones" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="500"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="ddlUsuarioId" class="form-label">Usuario Responsable:</label>
                <asp:DropDownList ID="ddlUsuarioId" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Seleccionar Usuario" Value="0"></asp:ListItem>
                    <!-- Aquí se deben agregar los usuarios disponibles de la base de datos -->
                </asp:DropDownList>
            </div>

            <div class="mb-3">
                <label for="txtFechaCreacion" class="form-label">Fecha de Creación:</label>
                <asp:TextBox ID="txtFechaCreacion" runat="server" CssClass="form-control" Text='<%= DateTime.Now.ToString("yyyy-MM-dd") %>' ReadOnly="true"></asp:TextBox>
            </div>

            <asp:Button ID="btnCrearActividad" runat="server" Text="Crear Actividad" CssClass="btn btn-primary" OnClick="btnCrearActividad_Click" />

        </div>
    </form>
</body>
</html>
