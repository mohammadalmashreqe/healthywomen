<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="enasproject2.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <br />
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
                        <h5 class="card-title">calories calculator</h5>
                        <p class="card-text">
                            The Calorie Calculator can be used to estimate the number of calories a person needs to consume each day

                        </p>
                        <a href="Calorie_calculator.aspx" class="btn btn-primary">Go</a>
                    </div>
                </div>


            </div>
            
            
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/no-image.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Date of Birth calculator</h5>
                        <p class="card-text">
                        Date of Birth calculator Calculates the child's expected delivery date based on the last day of period
                        </p>
                        <a href="Date_of_birth.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>


            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/no-image.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Body Mass Index</h5>
                        <p class="card-text">Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.</p>
                        <a href="BodyMassIndex.aspx" class="btn btn-primary">Go</a>
                    </div>
                </div>


            </div>
        </div>
       
        <hr />

           <div class="row">
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/no-image.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Natural Baby Weight and Length</h5>
                        <p class="card-text">
This calculator uses measured recumbent Length for infants and toddlers from birth through 36 months of age.
                        </p>
                        <a href="NaturalBabyWeighLength.aspx" class="btn btn-primary">Go</a>
                    </div>
                </div>


            </div>
            
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/no-image.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Heart rate</h5>
                        <p class="card-text">
                           heart rate calculation
                            can be determined for any age
                           , enabling you 
                            to use a heart rate monitor and get
                            the most benefit.

</p>
                        <a href="heartRate.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>


        </div>

        
       



    </div>
    <br />
    <br />
  
    <hr />

</asp:Content>
