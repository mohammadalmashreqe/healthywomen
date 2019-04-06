<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="medicalExamination.aspx.cs" Inherits="enasproject2.medicalExamination" %>
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
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/no-image.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Blood Pressure</h5>
                        <p class="card-text">
                           heart rate calculation
                            can be determined for any age
                           , enabling you 
                            to use a heart rate monitor and get
                            the most benefit.

</p>
                        <a href="BloodPressuere.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/no-image.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Diabetes</h5>
                        <p class="card-text">
                           heart rate calculation
                            can be determined for any age
                           , enabling you 
                            to use a heart rate monitor and get
                            the most benefit.

</p>
                        <a href="diabetes.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>

        </div>

    </div>




</asp:Content>
