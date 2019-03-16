<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signupdoctor.aspx.cs" Inherits="enasproject2.signupdoctor" %>

<!DOCTYPE html>

<html>

<head>

    <title>Sign Up</title>
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
            <br />
            <h2>Create Account : </h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">First name : </label>
                        <asp:TextBox ID="TextBox_FirstName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Last name : </label>
                        <asp:TextBox ID="TextBox_lastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="form-group">

                        <label for="exampleInputPassword1">Email :</label>
                        <asp:TextBox ID="TextBox_Email" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                </div>
            </div>

            <div class="row">

                <div class="col-md-8">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Password :</label>
                        <asp:TextBox ID="TextBox_password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                </div>



            </div>



            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Specialization : </label>
                        <asp:TextBox ID="TextBox_Specialization" runat="server" CssClass="form-control" ></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Phone number :</label>
                        <asp:TextBox ID="TextBox_phonenumber" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleInputPassword1">Facebook :</label>
                        <asp:TextBox ID="TextBox_facebook" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>

            </div>

            <div class="row">
                <div class="col-md-4">
                </div>

                <div class="form-group">
                    <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="SignUp" OnClick="Button1_Click" />
                </div>

            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>
