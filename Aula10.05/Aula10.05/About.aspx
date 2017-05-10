<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Aula10._05.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><% %>Texto batuta! </h2>
    <h3>Página de descrição da aplicação.</h3>

     <p>Use this area to provide additional information.</p>

    <asp:Calendar ID="calDataInicial" runat="server"></asp:Calendar>

   
    <br />
    <asp:TextBox ID="txtData" runat="server"></asp:TextBox>
    <br />

   
    <br />
    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click"/>

   
</asp:Content>
