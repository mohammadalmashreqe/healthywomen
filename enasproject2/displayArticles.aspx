<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="displayArticles.aspx.cs" Inherits="enasproject2.displayArticles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <br />
    <br />
    <br />
    <br />

    <div class="container">
    <asp:GridView ID="GridView1" runat="server" CssClass="table"></asp:GridView>
</div>

</asp:Content>
