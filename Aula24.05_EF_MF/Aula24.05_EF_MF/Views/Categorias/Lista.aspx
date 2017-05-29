<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Aula24._05_EF_MF.Views.Categorias.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblNome" CssClass="form-control" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblDescricao" CssClass="form-control" runat="server" Text="Descrição:"></asp:Label>
    <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
    <asp:Button ID="btnCancelar"  CssClass="btn btn-primary" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />

    <h1>Categorias Ativas</h1>
    <asp:GridView ID="gvCategorias" runat="server"></asp:GridView>

    <h1>Categorias Excluidas</h1>
    <asp:GridView ID="gvCategoriasExcluidas" runat="server"></asp:GridView>
</asp:Content>
