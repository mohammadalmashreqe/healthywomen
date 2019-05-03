<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="enasproject2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Full-width input fields */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        button {
            background-color: royalblue;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            button:hover {
                opacity: 0.8;
            }

        /* Extra styles for the cancel button */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the image and position the close button */
        .imgcontainer {
            text-align: center;
            margin: 10px 0 6px 0;
            position: relative;
        }

        img.avatar {
            width: 20%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* The Modal (background) */
        .modal {
            display: block; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            padding-top: 60px;
        }

        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 2% auto 5% auto; /* 5% from the top, 15% from the bottom and centered */
           
            width: 80%; /* Could be more or less, depending on screen size */
        }

   

         

      
    </style>
</head>
<body>
    <form id="form1" runat="server">
    

<div id="id01" class="">
  
    <div class="modal-content animate">
        <div class="imgcontainer">

            <img src="myimages/img_avatar2.png" alt="Avatar" class="avatar" />
        </div>

        <div class="container" style="text-align:center;">
           
            <input type="text" runat="server" id="TextBox_Email" placeholder="Enter Username" name="uname" style="width: 50%;" required>
            <br />
         
            <input type="password"  runat="server"   id="TextBox_password"  placeholder="Enter Password" style="width:50%;" name="psw" required>

            <button runat="server" id="but_login" onserverclick="But_login" style="width:50%;" >Login</button>
        </div>

        <div class="container">
            signup <a href="signup.aspx">Here</a>
        </div>
           <div class="container">
            signup as Doctor <a href="signupdoctor.aspx">Here</a>
        </div>
    </div>
</div>





























      

       
    </form>

 

</body>
</html>













