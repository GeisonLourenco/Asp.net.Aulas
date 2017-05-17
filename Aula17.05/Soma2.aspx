<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Soma2.aspx.cs" Inherits="Aula17._05.Soma2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblSoma1" runat="server" Text="Valor 1:"></asp:Label>
    <asp:TextBox ID="txtSoma1" runat="server"></asp:TextBox>
    <asp:Button ID="btnSoma" runat="server" Text="+" />
    <asp:Label ID="lblSoma2" runat="server" Text="Valor 2:"></asp:Label>
    <asp:TextBox ID="txtSoma2" runat="server"></asp:TextBox>
    <asp:Button ID="btnIgual" runat="server" Text="=" />
    <asp:TextBox ID="txtSoma" runat="server"></asp:TextBox>
    <br /><br />
       <asp:Label ID="lblSubt1" runat="server" Text="Valor 1:"></asp:Label>
    <asp:TextBox ID="txtSubt1" runat="server"></asp:TextBox>
    <asp:Button ID="btnSubt" runat="server" Text="-" />
    <asp:Label ID="lblSubt2" runat="server" Text="Valor 2:"></asp:Label>
    <asp:TextBox ID="txtSubt2" runat="server"></asp:TextBox>
    <asp:Button ID="btnIgual2" runat="server" Text="=" />
    <asp:TextBox ID="txtSubt" runat="server"></asp:TextBox>
    <br /><br />
       <asp:Label ID="lblMult1" runat="server" Text="Valor 1:"></asp:Label>
    <asp:TextBox ID="txtMult1" runat="server"></asp:TextBox>
    <asp:Button ID="btnMult" runat="server" Text="*" />
    <asp:Label ID="lblMult2" runat="server" Text="Valor 2:"></asp:Label>
    <asp:TextBox ID="txtMult2" runat="server"></asp:TextBox>
    <asp:Button ID="btnIgual3" runat="server" Text="=" />
    <asp:TextBox ID="txtMult" runat="server"></asp:TextBox>
    <br /><br />
       <asp:Label ID="lblDiv1" runat="server" Text="Valor 1:"></asp:Label>
    <asp:TextBox ID="txtDiv1" runat="server"></asp:TextBox>
    <asp:Button ID="btnDiv" runat="server" Text="/" />
    <asp:Label ID="lblDiv2" runat="server" Text="Valor 2:"></asp:Label>
    <asp:TextBox ID="txtDiv2" runat="server"></asp:TextBox>
    <asp:Button ID="btnIgual4" runat="server" Text="=" />
    <asp:TextBox ID="txtDiv" runat="server"></asp:TextBox>
    <br /><br />


</asp:Content>
