<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademiaBusca.aspx.cs" Inherits="ProjetoAcademia.Views.Academias.BuscaAcademia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>

            <div class="form-group">
                <label for="lblBuscarAcad" class="col-lg-2 control-label">Buscar Academia por Nome:</label>
                <asp:TextBox ID="txtBuscarAcad" class="form-control" placeholder="Nome da academia" runat="server"></asp:TextBox>
                <br />
                <div class="col-lg-10 col-lg-offset-2">
                    <asp:Button ID="btnBuscarAcad" class="btn btn-primary" runat="server" Text="Buscar" validationgroup="Buscar" OnClick="btnBuscar_Click" />
                </div>
                <br />
                <br />
                <label for="lblNome" class="col-lg-2 control-label">Nome:</label>
                <asp:TextBox ID="txtNome" class="form-control" placeholder="Nome" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <label for="lblEndereco" class="col-lg-2 control-label">Endereço:</label>
                <asp:TextBox ID="txtEndereco" class="form-control" placeholder="Endereco" runat="server"></asp:TextBox>
                <br />
                 <label for="lblTelefone" class="col-lg-2 control-label">Telefone:</label>
                <asp:TextBox ID="txtTelefone" class="form-control" placeholder="Telefone" runat="server" ReadOnly="true"></asp:TextBox>
                <br />
                <label for="lblProfessor" class="col-lg-2 control-label">Professor:</label>
                <asp:TextBox ID="txtProfessor" class="form-control" placeholder="Professor" runat="server"></asp:TextBox>
                <br />
    <asp:Button ID="btnEditAcademia" CssClass="btn btn-primary" runat="server" Text="Editar" OnClick="btnEditAcademia_Click" />
                        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
           