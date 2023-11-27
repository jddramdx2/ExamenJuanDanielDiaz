<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ExamenCompleto.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formulario CRUD</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Azul claro */
            color: #333; /* Color de texto oscuro */
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff; /* Fondo blanco */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #0066cc; /* Azul oscuro */
        }

        label {
            margin: 10px 0 5px;
            color: #0066cc; /* Azul oscuro */
            display: block;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
        }

        input[type="button"] {
            background-color: #0066cc; 
            color: #fff; 
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="button"]:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Buscar y Agregar Registros</h2>
            <label for="txtNombre">Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server" ClientIDMode="Static"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" />
            <br />
            <label for="txtAgregarNombre">Agregar Nombre:</label>
            <asp:TextBox ID="txtAgregarNombre" runat="server" ClientIDMode="Static" OnTextChanged="txtAgregarNombre_TextChanged"></asp:TextBox>
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <br />
            <label for="txtAgregarEquipo">Agregar Equipo:</label>
            <asp:TextBox ID="txtAgregarEquipo" runat="server" ClientIDMode="Static" OnTextChanged="txtAgregarEquipo_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <br />
            <label for="txtAgregarTecnico">Agregar Técnico:</label>
            <asp:TextBox ID="txtAgregarTecnico" runat="server" ClientIDMode="Static" OnTextChanged="txtAgregarTecnico_TextChanged"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <br />
            <label for="txtAgregarUsuario">Agregar Usuario:</label>
            <asp:TextBox ID="txtAgregarUsuario" runat="server" ClientIDMode="Static" OnTextChanged="txtAgregarUsuario_TextChanged"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            <br />
            <!-- Mostrar Resultados de Búsqueda, pero no funciona -->
            <asp:GridView ID="gvResultados" runat="server" AutoGenerateColumns="true" OnSelectedIndexChanged="gvResultados_SelectedIndexChanged"></asp:GridView>
        </div>
    </form>
</body>
</html>