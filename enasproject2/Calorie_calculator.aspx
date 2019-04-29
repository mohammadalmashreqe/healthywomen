<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Calorie_calculator.aspx.cs" Inherits="enasproject2.Calorie_calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="mystyleforrocandresult.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="container">
    <br />
    <br />
    <br />
    

    <div class="row">
        
        <div class="col-md-4">

            <div class="form-group">
                <label for="exampleInputEmail1">weight : </label>
                <asp:TextBox ID="TextBox_weight" CssClass="form-control" runat="server"></asp:TextBox>
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
        <br />
        
        <asp:Button ID="Button1" CssClass="btn btn-danger" runat="server" Text="Calc" OnClick="Button1_Click" />
       <br />
  
         <h3 class="result">  <asp:Label ID="Label_result" runat="server" Text=""></asp:Label> </h3>
           <br />
          <h4 class="roc"> <asp:Label ID="Label_roc" runat="server" Text=""></asp:Label> </h4>

</div>

    
</asp:Content>
