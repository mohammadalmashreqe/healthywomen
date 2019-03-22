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
    <asp:GridView ID="GridView1" runat="server" CssClass="table" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
        <div id="dvMyHtml" runat="server">

           

        </div>
</div>

</asp:Content>
