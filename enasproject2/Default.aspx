﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="enasproject2.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
     <div class="swiper-container hero-slider">
            <div class="swiper-wrapper">
               

                <div class="swiper-slide hero-content-wrap" style="background-image: url('images/hero.jpg')">
                    <div class="hero-content-overlay position-absolute w-100 h-100">
                        <div class="container h-100">
                            <div class="row h-100">
                                <div class="col-12 col-lg-6 d-flex flex-column justify-content-center align-items-start">
                                    <header class="entry-header">
                                        <h1>The Best <br>Medical Services for women</h1>
                                    </header><!-- .entry-header -->

                                    <div class="entry-content mt-4">
                                        <p>we are provide all whate the women need .</p>
                                    </div><!-- .entry-content -->

                                    <footer class="entry-footer d-flex flex-wrap align-items-center mt-4">
                                        <asp:Button ID="Button1" CssClass="button gradient-bg" runat="server" Text="Read more" OnClick="Button1_Click" />
                                    </footer><!-- .entry-footer -->
                                </div><!-- .col -->
                            </div><!-- .row -->
                        </div><!-- .container -->
                    </div><!-- .hero-content-overlay -->
                </div><!-- .hero-content-wrap -->

                
            </div><!-- .swiper-wrapper -->

            <div class="pagination-wrap position-absolute w-100">
                <div class="swiper-pagination d-flex flex-row flex-md-column"></div>
            </div><!-- .pagination-wrap -->
        </div><!-- .hero-slider -->
</asp:Content>
