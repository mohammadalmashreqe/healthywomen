<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Powerofblood.aspx.cs" Inherits="enasproject2.Powerofblood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">
       <br />
    <br />
    <br />
    <br />

    <form id="regForm">
        <div class="container">
            <h2>Power of blood test:</h2>

            <!-- One "tab" for each step in the form: -->
            <div class="tab">
             Age :   <input type="number" id="upper"> <br />
    
            </div>

            <div class="tab">
                <h1>
                    <label id="Label1"></label>
                </h1>
                <h2>
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

                        if (upper < 2 ) {
                            l.innerHTML = "Normal : 10.5-13.5 <br>Best result :12";



                    
                           

                        }
                        else
                            if (upper >= 2 && upper < 6) {
                               l.innerHTML = "Normal : 11.5-13.5 <br>Best result :12.5";


                            }

                            else if (upper >= 6 && upper < 12) {
                               l.innerHTML = "Normal : 11.5-15.5 <br>Best result :13.5";
                            }
                            else if (upper >= 12 && upper < 18) {
                               l.innerHTML = "Normal : 12-16 <br>Best result :14";

   
                            }
                            else {
                               l.innerHTML = "Normal : 12.1-15.1 <br> Best result :14";
          

                            }


                                roc.innerHTML = `
in Up Normal case : 
<ul> 
<li>Do not leave any meal, and be careful to eat four to five meals a day.</li>
<li>Diversification of diets.</li>
<li> Eat leisurely, chew well.</li>
<li> Drink enough water between meals, avoid drinking it while eating, half an hour before eating, and after eating for two hours.</li>
<li> Eat protein-rich foods, vitamin C, iron, vitamin B6 and vitamin B12, avoid fatty foods, digestion, and gluten-rich foods. Avoid smoking after eating</li>
<li>Moderate exercise such as walking, swimming, or riding a bike. Drink a glass of tomato juice daily.</li>
<li> Avoid calcium-rich foods such as dairy products and iron-rich foods, because calcium reduces the absorption of iron in the body and thus worsens the condition.</li>
<li>Reduce drinking tea and coffee as much as possible.</li>
</ul>

`;



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
