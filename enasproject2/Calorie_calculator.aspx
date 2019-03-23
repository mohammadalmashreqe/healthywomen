<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Calorie_calculator.aspx.cs" Inherits="enasproject2.Calorie_calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="container">
    <br />
    <br />
    <br />
    

    <div class="row">
        <div class="col-md-4">

            <div class="form-group">
                <label for="exampleInputEmail1">Age : </label>
                <asp:TextBox ID="TextBox_Age" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

        </div>
        <div class="col-md-4">

            <div class="form-group">
                <label for="exampleInputEmail1">weight : </label>
                <asp:TextBox ID="TextBox_weight" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

        </div>
    </div>
    
     <div class="row">
        <div class="col-md-4">

            <div class="form-group">
                <label for="exampleInputEmail1">Gender : </label><br />
                <asp:DropDownList ID="DropDownList_Gander"  runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>     
            </div>

        </div>
        <div class="col-md-4">

            <div class="form-group">
                <label for="exampleInputEmail1">height  : </label>
                <asp:TextBox ID="TextBox_height" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

        </div>
    </div>

        <div class="row">
            <div class="col-md-4">
                 <label for="exampleInputEmail1">physical exertion : </label><br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Low physical exertion</asp:ListItem>
                    <asp:ListItem>High physical exertion</asp:ListItem>
                    <asp:ListItem>Average physical exertion</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>    
        
        <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Calc" OnClick="Button1_Click" />
       <br />
       <h1> 
           <asp:Label ID="Label_result" runat="server" Text=""></asp:Label>
</h1>
</div>

    
</asp:Content>
