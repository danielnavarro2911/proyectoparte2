<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/menu.Master" AutoEventWireup="true" CodeBehind="resumen.aspx.cs" Inherits="proyectoparte2.vistas.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="resumengrid" runat="server"></asp:GridView>
    <asp:GridView ID="resultadosgrid" runat="server"></asp:GridView>
    Resumen
    <br />
    Datos Estudiante
    <br />
    <asp:GridView ID="grid_resumen" runat="server"></asp:GridView>
    <br />
    Grado
    <asp:GridView ID="grid_grado" runat="server"></asp:GridView>
    <br />
    Horario
    <asp:GridView ID="grid_horario" runat="server"></asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Salir" OnClick="salir_click" />
</asp:Content>
