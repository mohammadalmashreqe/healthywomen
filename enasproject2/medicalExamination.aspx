<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="medicalExamination.aspx.cs" Inherits="enasproject2.medicalExamination" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script>
    function myFunction()
    {
        var s = document.getElementById("Select1");
        if (s.selectedIndex == 0) {
            document.getElementById("a20").setAttribute("style", "display:");
            document.getElementById("a20").setAttribute("class", "row");
            document.getElementById("a30").setAttribute("style", "display:none");
            document.getElementById("a30").setAttribute("class", "row");

            document.getElementById("a40").setAttribute("style", "display:none");
            document.getElementById("a40").setAttribute("class", "row");

        }
        else
            if (s.selectedIndex == 1) {
                document.getElementById("a20").setAttribute("style", "display:none");
                document.getElementById("a30").setAttribute("style", "display:");
                document.getElementById("a40").setAttribute("style", "display:none");

                 document.getElementById("a20").setAttribute("class", "row");
                document.getElementById("a30").setAttribute("class", "row");
                document.getElementById("a40").setAttribute("class", "row");
            }
            else
                if (s.selectedIndex == 2) {
                    document.getElementById("a20").setAttribute("style", "display:none");
                    document.getElementById("a30").setAttribute("style", "display:none");
                    document.getElementById("a40").setAttribute("style", "display:");

                    document.getElementById("a20").setAttribute("class", "row");
                    document.getElementById("a30").setAttribute("class", "row");
                    document.getElementById("a40").setAttribute("class", "row");
                }
                else {
                   
            document.getElementById("a20").setAttribute("style", "display:");
            document.getElementById("a30").setAttribute("style", "display:");
            document.getElementById("a40").setAttribute("style", "display:");


                    document.getElementById("a20").setAttribute("class", "row");
            document.getElementById("a30").setAttribute("class", "row");
            document.getElementById("a40").setAttribute("class", "row");
        }
                
            
    }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
    <br />
    <br />
    <br />
    <br />

    <div class="container"> 
        Filter By Age : <select id="Select1" onchange="myFunction()"class="btn btn-primary dropdown-toggle" style=" width: 120px;    margin-bottom: 20px;   margin-top: 20px;">
                <option>20</option>
                <option>30</option>
           
             <option>other</option>
             <option>All</option>
              </select>
        <div class="row" id="a20">
         
          
            <div class="col-md-4">
                <div class="card"  style="width: 18rem;">
                    <img class="card-img-top" src="myimages/Blood%20Pressure.jpg" alt="Card image cap">
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
                    <img class="card-img-top"  src="myimages/Diabetes.jpg"  alt="Card image cap">
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
       
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/Vitamin%20D.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Vitamin D </h5>
                        <p class="card-text">
                            Vitamin D is a nutrient that is essential for healthy bones and teeth. 
                            There are two forms of vitamin D that are important for nutrition

                        </p>
                        <a href="vitamin_D.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <hr />
        <br />
        
        <div class="row" id="a30">
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/Cholesterol.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Cholesterol </h5>
                        <p class="card-text">
                           cholesterol test also called a lipid panel  is a blood test that measures the amount of each type of cholesterol and certain fats in your blood
                        </p>
                        <a href="Cholesterol.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>

             <div class="col-md-4">
               
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/Iron%20Stocks.jpg"  alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Iron Stocks  </h5>
                        <p class="card-text">
                            Iron is an essential nutrient that, among other functions, is needed in small quantities to help form normal red blood cells (RBCs).
                        </p>
                        <a href="Iron_Stocks.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/Power%20of%20blood%20test.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Power of blood test  </h5>
                        <p class="card-text">
A blood test is a laboratory analysis performed on a blood sample that is usually extracted from a vein in the arm using a hypodermic needle,                      </p>
                        <a href="Powerofblood.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>

        </div>
        <br />
        <hr />
        <br />
  
        <div class="row" id="a40">
             <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/Triglyceride%20test.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">            Triglyceride test  </h5>
                        <p class="card-text">
Triglycerides are a type of fat found in the blood. High levels of triglycerides may raise the risk of coronary artery disease, especially in women   
                            </p>
                            <a href="Triglyceride.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>
           
              <div class="col-md-4">
             
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/Glucose%20test.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">  Glucose test </h5>
                        <p class="card-text">
                            A blood glucose test measures the glucose levels in your blood. Glucose is a type of sugar. It is your body's main source of energy.
                            </p>
                            <a href="Glucose.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>
      
            <div class="col-md-4">
                <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="myimages/blood%20sugar%20in%20pregnant%20women.jpg" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title"> blood sugar in pregnant women : </h5>
                        <p class="card-text">
Blood sugar levels are important for all mothers to be with diabetes –as well controlled blood glucose levels
                            </p>
                            <a href="Normalbloodsugarinpregnantwomen.aspx" class="btn btn-primary">Go </a>
                    </div>
                </div>
            </div>
        </div>


    </div>

    <br />
    <br />
  
    <hr />


</asp:Content>
