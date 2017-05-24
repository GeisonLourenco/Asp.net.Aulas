<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista.aspx.cs" Inherits="Aula24._05_EF_MF.Views.Categorias.Lista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblNome" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblDescricao" runat="server" Text="Descrição:"></asp:Label>
    <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
</asp:Content>
