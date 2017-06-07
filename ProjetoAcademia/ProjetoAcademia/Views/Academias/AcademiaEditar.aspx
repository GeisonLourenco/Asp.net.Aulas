<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademiaEditar.aspx.cs" Inherits="ProjetoAcademia.Views.Academias.AcademiaEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">  
    <h2>Preencha os campos desejados para editar</h2>
    <div class ="form-group">
        <asp:Label ID="lblNomeAcademia" runat="server" Text="Academia a ser editada:  "></asp:Label>
        <br />
        <asp:TextBox ID="txtNomeAcademia" runat="server"></asp:TextBox>
        <br /><br />
</div>
    <div class ="form-group">
        <Label ID="lblNovaAcademia" class="col-lg-2 control-label">Novo Nome: </Label>
        <asp:TextBox ID="txtNovaAcademia" runat="server"></asp:TextBox><br />
        <br />      <Label ID="lblEndereco" class="col-lg-2 control-label">Novo Endereco:  </Label>
        <asp:TextBox ID="txtNovoEndereco" runat="server" TextMode="SingleLine"></asp:TextBox><br /><br />   
        <Label ID="lblTelefone" class="col-lg-2 control-label">Novo Telefone:  </Label>
        <asp:TextBox ID="txtNovoTelefone" runat="server" TextMode="SingleLine"></asp:TextBox><br /><br />
         <Label ID="lblProfessor" class="col-lg-2 control-label">Novo Professor:  </Label>
        <asp:TextBox ID="txtNovoProfessor" runat="server" TextMode="SingleLine"></asp:TextBox><br /><br />     
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnEditarAcademia" CssClass="btn btn-primary" runat="server" Text="Editar" Height="36px" Width="68px" OnClick="btnEditarAcademia_Click"/>
        <br /><br />
        <asp:Label ID="lblAcademias" runat="server" Text="Academias cadastrados: "></asp:Label><br />
        <asp:GridView ID="gdvAcademias" runat="server" BorderStyle="Outset" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
                <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
                <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BasedeDadosConnectionString %>" SelectCommand="SELECT [Id], [Nome], [Endereco], [Telefone], [Professor] FROM [Academias]"></asp:SqlDataSource>
        <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        </div>

</asp:Content>
