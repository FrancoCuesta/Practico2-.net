<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarPersona.aspx.cs" Inherits="Practico2.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br /> 
    ID: <asp:TextBox ID ="id" runat="server"/><br /> <br /> 
    Nombre: <asp:TextBox ID ="nombre" runat="server"/> <br /> <br /> 
    Apellido: <asp:TextBox ID ="apellido" runat="server"/> <br /> <br />
    Documento: <asp:TextBox ID ="documento" runat="server"/> <br /> <br />

    <asp:Button ID="btnBuscar" runat="server" Text="Agregar" OnClick="btnBuscar_Click"/>
    
    <asp:SqlDataSource ID="P2net" runat="server" ConnectionString="<%$ ConnectionStrings:P2netConnectionString %>" ></asp:SqlDataSource>
 
</asp:Content>
