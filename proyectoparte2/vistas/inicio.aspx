<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/menu.Master" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="proyectoparte2.vistas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Sistema de matricula - Colegio Politecnico
    <br />
    <br />
    <label for="TextBoxCedulaEstudiante">Cédula del Estudiante:</label>
    <asp:TextBox ID="TextBoxCedulaEstudiante" runat="server" placeholder="Cédula del Estudiante"></asp:TextBox>
    <br/>

    <label for="TextBoxNombreEstudiante">Nombre del Estudiante:</label>
    <asp:TextBox ID="TextBoxNombreEstudiante" runat="server" placeholder="Nombre del Estudiante"></asp:TextBox>
    <br/>

    <label for="TextBoxNacimientoEstudiante">Fecha de Nacimiento del Estudiante:</label>
    <asp:TextBox ID="TextBoxNacimientoEstudiante" runat="server" placeholder="Fecha YYYY-MM-DD"></asp:TextBox>
    <br/>

    <label for="TextBoxTutorNombre">Nombre del Tutor:</label>
    <asp:TextBox ID="TextBoxTutorNombre" runat="server" placeholder="Nombre del Tutor"></asp:TextBox>
    <br/>

    <label for="TextBoxTutorCedula">Cédula del Tutor:</label>
    <asp:TextBox ID="TextBoxTutorCedula" runat="server" placeholder="Cédula del Tutor"></asp:TextBox>
    <br/>

    <label for="TextBoxDireccion">Dirección:</label>
    <asp:TextBox ID="TextBoxDireccion" runat="server" placeholder="Dirección"></asp:TextBox>
    <br/>

    <label for="TextBoxTutorTelefono">Teléfono del Tutor:</label>
    <asp:TextBox ID="TextBoxTutorTelefono" runat="server" placeholder="Teléfono del Tutor"></asp:TextBox>
    <br/>

    <label for="TextBoxTutorCorreo">Correo del Tutor:</label>
    <asp:TextBox ID="TextBoxTutorCorreo" runat="server" placeholder="Correo del Tutor"></asp:TextBox>
    <br/>

    <label for="TextBoxRelacionTutorEstudiante">Relación con el Estudiante:</label>
    <asp:TextBox ID="TextBoxRelacionTutorEstudiante" runat="server" placeholder="Relación con el Estudiante"></asp:TextBox>
    <br/>

    <label for="TextBoxSegundosEncargados">Segundos Encargados:</label>
    <asp:TextBox ID="TextBoxSegundosEncargados" runat="server" placeholder="Segundos Encargados"></asp:TextBox>
    <br/>

    <asp:Button ID="Guardar" runat="server" Text="Guardar Datos" OnClick="Guardar_click" />
    <br />
&nbsp;
</asp:Content>
