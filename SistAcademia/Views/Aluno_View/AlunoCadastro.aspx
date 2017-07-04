<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlunoCadastro.aspx.cs" Inherits="SistAcademia.Views.Aluno_View.AlunoCadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <h3>Cadastro de Alunos</h3>
    <br />
    <asp:Label ID="lblNome" CssClass="form-control" runat="server" Text="Nome:"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPeso" CssClass="form-control" runat="server" Text="Peso:"></asp:Label>
    <asp:TextBox ID="txtPeso" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblAltura" CssClass="form-control" runat="server" Text="Altura:"></asp:Label>
    <asp:TextBox ID="txtAltura" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblIdade" CssClass="form-control" runat="server" Text="Idade:"></asp:Label>
    <asp:TextBox ID="txtIdade" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblEndereco" CssClass="form-control" runat="server" Text="Endereço:"></asp:Label>
    <asp:TextBox ID="txtEndereco" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Label ID="lblTelefone" CssClass="form-control" runat="server" Text="Telefone:"></asp:Label>
    <asp:TextBox ID="txtTelefone" runat="server" TextMode="SingleLine"></asp:TextBox>
    <br />
    <asp:Label ID="lblObjetivo" CssClass="form-control" runat="server" Text="Objetivo:"></asp:Label>
    <asp:TextBox ID="txtObjetivo" runat="server" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Button ID="btnSalvarAluno" CssClass="btn btn-primary" runat="server" Text="Salvar" OnClick="btnSalvarAluno_Click" />
    <asp:Button ID="btnCancelarAluno" CssClass="btn btn-primary" runat="server" Text="Cancelar" OnClick="btnCancelarAluno_Click" />
</asp:Content>
