<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="enasproject2.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
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
          
            <br />
           
            <h1>Admin login </h1>
            
            <div class="row" >
                <div class ="col-md-4">
 
                      <div class="form-group">
            <label for="exampleInputPassword1">Email :</label>
            <asp:TextBox ID="TextBox_Email" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">

                    <div class="form-group">
            <label for="exampleInputPassword1">password :</label>
            <asp:TextBox ID="TextBox_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        </div>

                </div>


            </div>
       



        <div class="form-group" style="align-items:center">
            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Button1_Click" />
        </div>
        </div>
    </form>
</body>
</html>
