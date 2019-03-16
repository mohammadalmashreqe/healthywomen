<%@ Page Title="" Language="C#"  AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="enasproject2.Login" %>

<!DOCTYPE html>

<html>

<head>

    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
    <script src="js/custom.js"></script>
</head>
<body>
    <form runat="server">
    <div class="container" style="align-content: center">
       <br />
        <br />
        <h2> Log in : </h2>

        <div class="form-group">
            <label for="exampleInputPassword1">Email :</label>
            <asp:TextBox ID="TextBox_Email" runat="server" CssClass="form-control"></asp:TextBox>
        </div>


        <div class="form-group">
            <label for="exampleInputPassword1">password :</label>
            <asp:TextBox ID="TextBox_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>



        <div class="form-group" style="align-items:center">
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Button1_Click" />
        </div>

        if you dont have account sign up <asp:Button ID="Button2" CssClass="btn btn-primary"  runat="server" Text="here" OnClick="Button2_Click" /> 
    </div>
    <br />
    <br />
    <br />
    <br />
    <br />
        </form>
</body>
    </html>