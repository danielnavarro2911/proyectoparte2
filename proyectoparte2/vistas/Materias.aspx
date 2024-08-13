<%@ Page Title="" Language="C#" MasterPageFile="~/vistas/menu.Master" AutoEventWireup="true" CodeBehind="Materias.aspx.cs" Inherits="proyectoparte2.vistas.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Seleccione un grado
    <asp:DropDownList ID="grado_dropdown" runat="server"></asp:DropDownList>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Aceptar" OnClick="aceptar_click" />
    <br />
    <asp:GridView ID="materias_grid" runat="server"></asp:GridView>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Mostrar costos" OnClick="calcularcostos_click" />
    <br />
    <asp:GridView ID="gridcostos" runat="server"></asp:GridView>
    <br />
    <asp:Button ID="Button3" runat="server" Text="Matricular" OnClick="matricular_click"/>
</asp:Content>
