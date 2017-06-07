<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AlunoBusca.aspx.cs" Inherits="ProjetoAcademia.Views.Alunos.AlunoBusca" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <div class="form-group">
                <label for="lblBuscarAluno" class="col-lg-2 control-label">Buscar Aluno por Nome:</label>
                <asp:TextBox ID="txtBuscarAluno" class="form-control" placeholder="Nome do aluno" runat="server"></asp:TextBox>
                <br />
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="btnBuscarAluno" class="btn btn-primary" runat="server" Text="Buscar" validationgroup="Buscar" OnClick="btnBuscar_Click" />
                </div>
                <br />
                <br />
                <label for="lblNome" class="col-lg-2 control-label">Nome:</label>
                <asp:TextBox ID="txtNome" class="form-control" placeholder="Nome" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <label for="lblPeso" class="col-lg-2 control-label">Peso:</label>
                <asp:TextBox ID="txtPeso" class="form-control" placeholder="Peso" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <label for="lblAltura" class="col-lg-2 control-label">Altura:</label>
                <asp:TextBox ID="txtAltura" class="form-control" placeholder="Altura" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <label for="lblIdade" class="col-lg-2 control-label">Idade:</label>
                <asp:TextBox ID="txtIdade" class="form-control" placeholder="Idade" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <label for="lblEndereco" class="col-lg-2 control-label">Endereço:</label>
                <asp:TextBox ID="txtEndereco" class="form-control" placeholder="Endereco" runat="server"></asp:TextBox>
                <br />
                 <label for="lblTelefone" class="col-lg-2 control-label">Telefone:</label>
                <asp:TextBox ID="txtTelefone" class="form-control" placeholder="Telefone" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                 <label for="lblObjetivo" class="col-lg-2 control-label">Objetivo:</label>
                <asp:TextBox ID="txtObjetivo" class="form-control" placeholder="Objetivo" runat="server"></asp:TextBox>
                <br />
                <label for="lblAcademia" class="col-lg-2 control-label">Academia:</label>
                <asp:DropDownList ID="ddlAcademia" runat="server"></asp:DropDownList>
                <br />

    <asp:Button ID="btnEditAluno" CssClass="btn btn-primary" runat="server" Text="Editar" OnClick="btnEditAluno_Click" />
                        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>