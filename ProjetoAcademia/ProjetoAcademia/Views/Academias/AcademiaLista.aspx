<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcademiaLista.aspx.cs" Inherits="ProjetoAcademia.Views.Academias.AcademiaLista" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Academias cadastradas na Rede:</h1>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
    <asp:GridView ID="gdvAcademias" runat="server" BorderStyle="Outset" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
            <asp:BoundField DataField="Endereco" HeaderText="Endereco" SortExpression="Endereco" />
            <asp:BoundField DataField="Telefone" HeaderText="Telefone" SortExpression="Telefone" />
            <asp:BoundField DataField="Professor" HeaderText="Professor" SortExpression="Professor" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BasedeDadosConnectionString %>" SelectCommand="SELECT [Id], [Nome], [Endereco], [Telefone], [Professor] FROM [Academias]"></asp:SqlDataSource>
     </ContentTemplate>
     </asp:UpdatePanel>
    <br />
    <br />
    <asp:Label ID="lblExcAcademia" runat="server" Text="Digite o ID da academia a ser deletada:"></asp:Label>
    <asp:TextBox ID="txtExcAcademia" runat="server"></asp:TextBox>
    <asp:Button ID="btnExcAcademia" CssClass="btn btn-primary" runat="server" Text="Excluir" OnClick="btnExcAcademia_Click" />

</asp:Content>
