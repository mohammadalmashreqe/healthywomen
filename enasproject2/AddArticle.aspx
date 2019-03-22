<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddArticle.aspx.cs" Inherits="enasproject2.AddArticle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Article</title>
     <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css"/>

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css"/>

    <!-- Styles -->
    <link rel="stylesheet" href="style.css"/>
    <script src="js/custom.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="form-group">
                <br />
                <br />
                <h2>Add article </h2>
<label > Title</label>
            <asp:TextBox ID="TextBox_title" runat="server" CssClass="form-control" Width="230px"></asp:TextBox>
<label> URL </label>
                            
                <br />
                <asp:TextBox ID="TextBox_URL" runat="server" CssClass="form-control" Width="230px"  ></asp:TextBox>
                <asp:Button ID="Button1" CssClass="btn btn-info"  runat="server" Text="Add"  OnClick="Button1_Click" />
            </div>
 <asp:GridView CssClass="table table-info" ID="GridView1" runat="server" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        </asp:GridView>
<asp:Button ID="Button_Edit" CssClass="btn btn-info" runat="server" Text="Edit" OnClick="Button_Edit_Click" />
        <asp:Button ID="Button_Delete" CssClass="btn btn-info" runat="server" Text="Delete" OnClick="Button_Delete_Click" />
  
        </div>
       
          </form>
</body>
</html>
