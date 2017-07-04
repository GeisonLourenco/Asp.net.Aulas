<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlunoEditar.aspx.cs" Inherits="SistAcademia.Views.Aluno_View.AlunoEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Preencha os campos desejados para editar</h2>
    <div class ="form-group">
         <asp:Label ID="lblNomeAluno" runat="server" Text="Aluno a ser editado:  "></asp:Label>
        <br />
        <asp:TextBox ID="txtNomeAluno" runat="server"></asp:TextBox>
        <br /><br />
        </div>
                <br />
                <br />
        <div class ="form-group">
                <label for="lblNome" class="col-lg-2 control-label">Novo Nome:</label>
                <asp:TextBox ID="txtNovoNome" placeholder="Nome" runat="server" ReadOnly="true"></asp:TextBox>
                <br /><br />
                <label for="lblPeso" class="col-lg-2 control-label">Novo Peso:</label>
                <asp:TextBox ID="txtNovoPeso" placeholder="Peso" runat="server" ReadOnly="true"></asp:TextBox>
                <br /><br />
                <label for="lblAltura" class="col-lg-2 control-label">Nova Altura:</label>
                <asp:TextBox ID="txtNovaAltura" placeholder="Altura" runat="server" ReadOnly="true"></asp:TextBox>
                <br /><br />
                <label for="lblIdade" class="col-lg-2 control-label">Nova Idade:</label>
                <asp:TextBox ID="txtNovaIdade" placeholder="Idade" runat="server" ReadOnly="true"></asp:TextBox>
                <br /><br />
                <label for="lblEndereco" class="col-lg-2 control-label">Novo Endereço:</label>
                <asp:TextBox ID="txtNovoEnd" placeholder="Endereco" runat="server"></asp:TextBox>
                <br /><br />
                 <label for="lblTelefone" class="col-lg-2 control-label">Novo Telefone:</label>
                <asp:TextBox ID="txtNovoTel" placeholder="Telefone" runat="server" ReadOnly="true"></asp:TextBox>
                <br /><br />
                 <label for="lblObjetivo" class="col-lg-2 control-label">Novo Objetivo:</label>
                <asp:TextBox ID="txtNovoObjetivo" placeholder="Objetivo" runat="server"></asp:TextBox>
                <br /><br />
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEditarAlunos" CssClass="btn btn-primary" runat="server" Text="Editar" Height="36px" Width="68px" OnClick="btnEditarAlunos_Click"/>
        <br /><br />
        <asp:Label ID="lblAlunos" runat="server" Text="Alunos cadastrados: "></asp:Label><br />
        <asp:GridView ID="gdvAlunos" runat="server" BorderStyle="Outset" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Altura" HeaderText="Altura" SortExpression="Altura" />
                <asp:BoundField DataField="Peso" HeaderText="Peso" SortExpression="Peso" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                <asp:BoundField DataField="Idade" HeaderText="Idade" SortExpression="Idade" />
                <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                <asp:BoundField DataField="Objetivo" HeaderText="Objetivo" SortExpression="Objetivo" />
                <asp:BoundField DataField="AcademiaId" HeaderText="AcademiaId" SortExpression="AcademiaId" />
                <asp:CheckBoxField DataField="Ativo" HeaderText="Ativo" SortExpression="Ativo" />
            </Columns>
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BasedeDadosConnectionString %>" SelectCommand="SELECT [Id], [Nome], [Altura], [Peso], [Endereco], [Idade], [Telefone], [Objetivo], [AcademiaId], [Ativo] FROM [Alunos]"></asp:SqlDataSource>
            </div>
</asp:Content>
