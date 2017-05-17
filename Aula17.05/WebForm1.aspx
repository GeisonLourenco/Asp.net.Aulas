<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Aula17._05.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:Label ID="lblQuantCliques" runat="server" Text=""></asp:Label>
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
            <asp:Button ID="btnEnvCliques" runat="server" Text="Enviar Cliques" OnClick="btnEnvCliques_Click" />
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

