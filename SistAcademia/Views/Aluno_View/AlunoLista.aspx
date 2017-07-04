<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlunoLista.aspx.cs" Inherits="SistAcademia.Views.Aluno_View.AlunoLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <h1>Alunos cadastrados na Rede:</h1>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server"><ContentTemplate>
    <asp:GridView ID="gdvAlunos" runat="server" BorderStyle="Outset" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Altura" HeaderText="Altura" SortExpression="Altura" />
            <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
            <asp:BoundField DataField="Idade" HeaderText="Idade" SortExpression="Idade" />
            <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
            <asp:BoundField DataField="Objetivo" HeaderText="Objetivo" SortExpression="Objetivo" />
            <asp:BoundField DataField="AcademiaId" HeaderText="AcademiaId" SortExpression="AcademiaId" />
            <asp:CheckBoxField DataField="Ativo" HeaderText="Ativo" SortExpression="Ativo" />
        </Columns>
        </asp:GridView>
     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BasedeDadosConnectionString %>" SelectCommand="SELECT [Id], [Peso], [Nome], [Altura], [Endereco], [Idade], [Telefone], [Objetivo], [AcademiaId], [Ativo] FROM [Alunos]"></asp:SqlDataSource>
     </ContentTemplate>
     </asp:UpdatePanel>

    <asp:Label ID="lblExcAluno" runat="server" Text="Digite o ID do Aluno a ser deletado:"></asp:Label>
    <asp:TextBox ID="txtExcAluno" runat="server"></asp:TextBox>
    <asp:Button ID="btnExcAluno" CssClass="btn btn-primary" runat="server" Text="Excluir" OnClick="btnExcAluno_Click" />

    <br />
    <br />

</asp:Content>
