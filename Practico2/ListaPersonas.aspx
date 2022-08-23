<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPersonas.aspx.cs" Inherits="Practico2.Formulario_web2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:TextBox ID ="documento" runat="server"/>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click"/>
    <br />
    <br />
<asp:SqlDataSource ID="P2net" runat="server" ConnectionString="<%$ ConnectionStrings:P2netConnectionString %>" ></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="P2net">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
            <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento" />
        </Columns>
    </asp:GridView>
    
</asp:Content>
