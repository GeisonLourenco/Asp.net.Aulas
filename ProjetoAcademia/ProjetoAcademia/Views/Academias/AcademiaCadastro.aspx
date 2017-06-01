<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademiaCadastro.aspx.cs" Inherits="ProjetoAcademia.Views.Academias.AcademiaCadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblNome" CssClass="form-control" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblEndereco" CssClass="form-control" runat="server" Text="Endereço:"></asp:Label>
    <asp:TextBox ID="txtEndereco" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Label ID="lblTelefone" CssClass="form-control" runat="server" Text="Telefone:"></asp:Label>
    <asp:TextBox ID="txtTelefone" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Label ID="lblProfessor" CssClass="form-control" runat="server" Text="Professor:"></asp:Label>
    <asp:TextBox ID="txtProfessor" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Button ID="btnSalvar" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" OnClick="btnCancelar_Click" />
    </asp:Content>
