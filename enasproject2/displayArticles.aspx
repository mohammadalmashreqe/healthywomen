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
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                </HeaderTemplate>
                <ItemTemplate>

                    <div class="col-md-4" style="margin-bottom:10px">
                        <div class="card" style="width: 18rem;">
                            <div class="card-body">
                                <h6 class="card-title"><%# Eval("publishDate") %></h6>
                                <p class="card-text">
                                    <h3><%#Eval("title") %></h3>
                                </p>
                                <a href="<%#Eval("URL") %>" class="btn btn-primary">ReadArticle</a>
                            </div>
                        </div>

                    </div>

                  
                
                

                
                


              
                </ItemTemplate>
                <SeparatorTemplate>
                    <br />
                    <hr />
                </SeparatorTemplate>
                <FooterTemplate>
                </FooterTemplate>


            </asp:Repeater>

        </div>
          </div>
    <br />
    <br />
    <br />
</asp:Content>
