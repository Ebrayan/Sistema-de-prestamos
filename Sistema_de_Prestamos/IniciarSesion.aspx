<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="Sistema_de_Prestamos.IniciarSesion" %>

<!DOCTYPE html>
	<link rel="stylesheet" type="text/css" href="assets/css/sesion.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio de Sesion</title>
</head>
<body>
    <form id="form1" runat="server" class="login">
        <h1 class="login-title">Sistema de prestamos EBVM</h1>
    <asp:TextBox runat="server" type="text" class="login-input" placeholder="Nombre de Usuario" autofocus  ID="txtUser"></asp:TextBox>
    <asp:TextBox runat="server" input type="password" class="login-input" placeholder="Contraseña" ID="txtContra"></asp:TextBox>
        <asp:Button ID="btnEntrar" runat="server" Text="Iniciar Sesion" CssClass="login-button" OnClick="btnEntrar_Click"  />
        <asp:Label ID="txtError" runat="server" Text="Label"></asp:Label>
  <p class="login-lost"><a href="">Olvidaste la contraseña?</a></p>
    </form>
</body>
</html>
