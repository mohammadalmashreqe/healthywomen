<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Iron_Stocks.aspx.cs" Inherits="enasproject2.Iron_Stocks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
     <link href="mystyleforrocandresult.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

        <br />
    <br />
    <br />
    <br />

    <form id="regForm">
        <div class="container">
            <h2>Iron Stocks:</h2>

            <!-- One "tab" for each step in the form: -->
            <div class="tab">
                <input type="number" id="upper" /> 
    
            </div>
           
            <div class="tab">
                <h1 class="result" id="h1res" style="display:none"  >
                    <label id="Label1"></label>
                </h1>
                <h2 class="roc" id="h2roc" style="display:none">
                    <label id="Label_roc"></label>
                </h2>
            </div>





            <div style="overflow: auto;">
                <div style="float: right;">
                    <button class="btn btn-primary" type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                    <button class="btn btn-primary" type="button" id="nextBtn" onclick="nextPrev(1)">Result</button>
                </div>
            </div>

            <!-- Circles which indicates the steps of the form: -->
            <div style="text-align: center; margin-top: 40px;">
                <span class="step"></span>
                <span class="step"></span>

            </div>
            <script> 
                var currentTab = 0; // Current tab is set to be the first tab (0)
                showTab(currentTab); // Display the current tab

                function showTab(n) {
                    // This function will display the specified tab of the form ...
                    var x = document.getElementsByClassName("tab");
                    x[n].style.display = "block";
                    // ... and fix the Previous/Next buttons:
                    if (n == 0) {
                        document.getElementById("prevBtn").style.display = "none";
                    } else {
                        document.getElementById("prevBtn").style.display = "inline";
                    }
                    if (n == 1) {
                        document.getElementById("nextBtn").style.display = "none";
                        document.getElementById("prevBtn").style.display = "inline";

                    }
                    if (n == 0) {
                        document.getElementById("nextBtn").style.display = "inline";
                        document.getElementById("prevBtn").style.display = "none";
                    }
                    // ... and run a function that displays the correct step indicator:
                    fixStepIndicator(n)
                }

                function nextPrev(n) {
                    // This function will figure out which tab to display
                    var x = document.getElementsByClassName("tab");
                    // Exit the function if any field in the current tab is invalid:
                    if (n == 1 && !validateForm()) return false;
                    // Hide the current tab:
                    {
                        x[currentTab].style.display = "none";

                        var upper = document.getElementById("upper").value;


                        var l = document.getElementById("Label1");



                        l.setAttribute("style", "text-align:center;");


                        var roc = document.getElementById("Label_roc");

                        if (upper <= 170 && upper >= 60) {
                            l.innerHTML = "Normal";


                              document.getElementById("h1res").setAttribute("style", "display:block");

                        }
                        else {
                            l.innerHTML = "Abnormal";
                            roc.innerHTML = `Eating foods rich in iron, such as: liver, red meat and chicken meat Eat foods that contain folic acid, provides oxygen to the fetus and the body of the pregnant, which we find in Avocadua, fruits, beets and broccoli Eat amounts of vitamins It drives the red blood cells, Guava, raspberry, apple, strawberry and strawberry. Eat green leafy vegetables that treat anemia, such as spinach, mallow, watercress, parsley
 Preserving breakfast: It is one of the most important meals for adults, young people and adolescents because of the various nutrients of many health benefits and various elements of the food is included in the food pyramid of carbohydrates, vegetables, dairy, fats and fruits of many health benefits, As a fuel to exercise both physical and mental activity.
 Eating iron helps to absorb: fruits such as guava, citrus, orange, lemon, carrots, and vegetables such as tomatoes, eggplants, carrots and green peppers.
 Eat legumes: It is a source of food rich in vitamins, proteins, minerals and iron, and resist the tension and weakness resulting from anemia, and helps to rest and relaxation, strengthen blood and help the body to make hemoglobin, increase the health of the body is fighting anemia and injury, Blood, such as: beans, lentils, cowpea, beans, hummus and thermos
 Treatment of poor appetite and lack of ability to eat: You must first to identify the causes of loss of appetite and work to address, and we will remember ways to open appetite
`;
                              document.getElementById("h1res").setAttribute("style", "display:block");
    document.getElementById("h2roc").setAttribute("style", "display:block");
                        }





                    }

                    // Increase or decrease the current tab by 1:
                    currentTab = currentTab + n;
                    // if you have reached the end of the form... :

                    // Otherwise, display the correct tab:
                    showTab(currentTab);
                }

                function validateForm() {
                    // This function deals with validation of the form fields
                    var x, y, i, valid = true;
                    x = document.getElementsByClassName("tab");
                    y = x[currentTab].getElementsByTagName("input");
                    // A loop that checks every input field in the current tab:
                    for (i = 0; i < y.length; i++) {
                        // If a field is empty...
                        if (y[i].value == "") {
                            // add an "invalid" class to the field:
                            y[i].className += " invalid";
                            // and set the current valid status to false:
                            valid = false;
                        }
                    }
                    // If the valid status is true, mark the step as finished and valid:
                    if (valid) {
                        document.getElementsByClassName("step")[currentTab].className += " finish";
                    }
                    return valid; // return the valid status
                }

                function fixStepIndicator(n) {
                    // This function removes the "active" class of all steps...
                    var i, x = document.getElementsByClassName("step");
                    for (i = 0; i < x.length; i++) {
                        x[i].className = x[i].className.replace(" active", "");
                    }
                    //... and adds the "active" class to the current step:
                    x[n].className += " active";
                }








            </script>
        </div>
    </form>


</asp:Content>
