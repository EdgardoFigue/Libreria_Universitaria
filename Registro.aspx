<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Libreria_Universitaria.Registro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro - Librería Universitaria</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registro de Alumno</h2>
            
            <asp:Label ID="lblNombre" runat="server" Text="Nombre Completo:"></asp:Label><br />
            <asp:TextBox ID="txbNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txbNombre" 
                ErrorMessage="El nombre es obligatorio" Text="Por favor Ingrese un Nombre" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

           <asp:Label ID="lblPais" runat="server" Text="País:"></asp:Label><br />
            <asp:DropDownList ID="ddlPais" runat="server"></asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvPais" runat="server" 
                ControlToValidate="ddlPais" 
                InitialValue="" 
                ErrorMessage="Debe Seleccionar un Pais Valido" 
                Text="*" 
                ForeColor="Red">
            </asp:RequiredFieldValidator>
            <br /><br />

            <asp:Label ID="lblCarnet" runat="server" Text="Carnet (Ej: 00123422):"></asp:Label><br />
            <asp:TextBox ID="txbCarnet" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCarnet" runat="server" ControlToValidate="txbCarnet" 
                ErrorMessage="El carnet es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revCarnet" runat="server" ControlToValidate="txbCarnet" 
                ValidationExpression="^\d{8}$" ErrorMessage="El carnet debe tener 8 dígitos" Text="*" ForeColor="Red">
            </asp:RegularExpressionValidator>
            <br /><br />

            <asp:Label ID="lblCorreo" runat="server" Text="Correo Institucional:"></asp:Label><br />
            <asp:TextBox ID="txbCorreo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txbCorreo" 
                ErrorMessage="El correo es obligatorio" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txbCorreo" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ErrorMessage="Formato de correo inválido" ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />

            <asp:Label ID="lblPassword" runat="server" Text="Contraseña:"></asp:Label><br />
            <asp:TextBox ID="txbPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txbPassword" 
                ErrorMessage="La contraseña es obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" style="height: 26px" />
            <br />
            <br />
            <asp:Label ID="lblResultado" runat="server" Text="Resultado"></asp:Label>
            <br /><br />

            <asp:ValidationSummary ID="vsErrores" runat="server" HeaderText="Por favor corrija los siguientes errores:" 
                ForeColor="Red" DisplayMode="BulletList" />
        </div>
    </form>
</body>
</html>