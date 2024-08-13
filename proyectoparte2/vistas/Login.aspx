<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="proyectoparte2.vistas.Login" %>
<link href="../css/Log.css" rel="stylesheet" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
				<form id="password">
					<label for="chk" aria-hidden="true">Log in</label>
					<asp:TextBox ID="cedula_sign" placeholder="Cedula" runat="server"></asp:TextBox>
					<asp:TextBox ID="password_sign" placeholder="Contraseña" runat="server" TextMode="Password"></asp:TextBox>
					<asp:Button ID="signupButton" runat="server" Text="Log in" OnClick="Sign_Up_click" />
					<asp:Label ID="text_sign" runat="server" Text="" ForeColor="White"></asp:Label>
				</form>
			</div>

			<div class="login">
				<form>
					<label for="chk" aria-hidden="true">Sign Up</label>
					<asp:TextBox ID="cedula_log" placeholder="Cedula" runat="server"></asp:TextBox>
					<asp:TextBox ID="password_log" placeholder="Contraseña" runat="server"></asp:TextBox>
					<asp:TextBox ID="password_log_confirm" placeholder="Confirmar Contraseña" runat="server"></asp:TextBox>
					<asp:Button ID="Button2" runat="server" Text="Sign Up" OnClick="Log_in_click" />
					<asp:Label ID="text_log" runat="server" Text="" FareColor="Red"></asp:Label>
				</form>
			</div>
        </div>
    </form>
</body>
</html>