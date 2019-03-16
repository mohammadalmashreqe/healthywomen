<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="enasproject2.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin panel</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />

    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css" />

    <!-- Styles -->
    <link rel="stylesheet" href="style.css" />
    <script src="js/custom.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <br />
            <div class="card-title">
                <h1>Admin panel </h1>
            </div>
            <br />
            <div class="row">
                <div class="col-md-2">

                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Add articel" OnClick="Button1_Click" />

                </div>
                <div class="col-md-2">
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-info" Text="Accept doctors" OnClick="Button2_Click" />

                </div>


            </div>
        </div>
    </form>
</body>
</html>
