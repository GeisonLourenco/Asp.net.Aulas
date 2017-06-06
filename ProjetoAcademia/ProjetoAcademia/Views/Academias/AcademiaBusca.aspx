<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademiaBusca.aspx.cs" Inherits="ProjetoAcademia.Views.Academias.BuscaAcademia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="lblBuscar" runat="server" Text="Buscar:"></asp:Label>
    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
    <asp:Button ID="btnBuscar" CssClass="btn btn-primary" runat="server" Text="Buscar" />
    <br />

    <asp:Label ID="lblEditAcademia" runat="server" Text="Editar campos:"></asp:Label>
    <asp:TextBox ID="txtEditAcademia" runat="server"></asp:TextBox>
    <asp:Button ID="btnEditAcademia" CssClass="btn btn-primary" runat="server" Text="Editar" />
</asp:Content>
