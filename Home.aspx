<%@ Page Title="Inicio - Librería Universitaria" Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Libreria_Universitaria.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Inicio - Librería Universitaria</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bienvenidos a la Librería Universitaria</h1>
            <p>Explora nuestros productos y consulta el catálogo completo.</p>

            <div class="search-container">
                <label for="txtConsulta">Buscar Producto:</label>
                <asp:TextBox ID="txtConsulta" runat="server" placeholder="Buscar libro..." CssClass="form-control" />
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary mt-2" OnClick="btnBuscar_Click" />
            </div>

            <br />

            <div id="resultados">
                <h4>Resultados de búsqueda:</h4>
                <img src="IMG/ChatGPT%20Image%2018%20feb%202026,%2009_12_14%20p.m..png" style="width: 351px; height: 269px" />
            </div>
        </div>
    </form>
</body>
</html>