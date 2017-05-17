<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Soma1.aspx.cs" Inherits="Aula17._05.Soma1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <asp:Label ID="lbl1" runat="server" Text="Valor 1:"></asp:Label>
    <asp:TextBox ID="txt1" runat="server"></asp:TextBox>
    
    <br />
    <asp:Label ID="lbl2" runat="server" Text="Valor 2:"></asp:Label>
    <asp:TextBox ID="txt2" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Button ID="btnMais" runat="server" Text="+" OnClick="btnMais_Click" />
    <asp:Button ID="btnIgual" runat="server" Text="=" OnClick="btnIgual_Click" />

    <br /><br />
    <asp:Label ID="lblSoma" runat="server" Text="A soma é:"></asp:Label>
    <asp:TextBox ID="txtSoma" runat="server"></asp:TextBox>
             </ContentTemplate>
        </asp:UpdatePanel>
           
</asp:Content>

