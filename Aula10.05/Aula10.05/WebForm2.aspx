<%@ Page Title="" Language="C#" MasterPageFile="~/MinhaMaster.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Aula10._05.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cabecalho" runat="server">   
    <asp:Label ID="lblNome" runat="server" Text="Label"></asp:Label>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="conteudo" runat="server">
    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="rodape" runat="server">
    <asp:Label ID="lblDataAgora" runat="server" Text="Label"></asp:Label>
</asp:Content>
