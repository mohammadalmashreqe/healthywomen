<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactwithDoctor.aspx.cs" Inherits="enasproject2.ContactwithDoctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

    <br />
    <br />
    <br />
       <br />
    <br />
    <div class="container">
     <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="search" OnClick="Button1_Click" />
   <br />
        <br />
        
        <div class="row">

         <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>
                   
                    <div class="col-md-4" style="margin-bottom:10px">
                        <div class="card" style="width: 18rem;">
                                                        <img class="card-img-top" src="myimages/drdr.jpg"  alt="Card image cap">

                            <div class="card-body">
                                <h4 class="card-title">DR <%# Eval("FirstName")+" " %><%# Eval("LastName")%></h4>
                                <p class="card-text">
                                    <h5>Specialization: <%#Eval("Specialization") %></h5>
                                  <i class="fa fa-envelope" style="font-size:26px"></i> <%#Eval("Email") %>
                                </p>
                               <p><i class="fa fa-whatsapp" style="font-size:26px"></i> <%#Eval("phoneNumber") %> </p>
                                 <a href="<%#Eval("facebook") %>" target="_blank" class="btn btn-primary">FaceBook <i class="fa fa-facebook-official"></i></a>

                            </div>
                        </div>

                    </div>

                  
                
                

                
                


              
                </ItemTemplate>
                <SeparatorTemplate>
                  

                </SeparatorTemplate>
                <FooterTemplate>

                </FooterTemplate>


            </asp:Repeater>

</div>
</div>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
