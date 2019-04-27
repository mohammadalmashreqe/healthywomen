<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="vitamin_D.aspx.cs" Inherits="enasproject2.vitamin_D" %>
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
            <h2>Vitamin D:</h2>

            <!-- One "tab" for each step in the form: -->
            <div class="tab">
                <input type="number" id="upper">NG/ML 
    
            </div>

            <div class="tab">
                <h1 class="result">
                    <label id="Label1"></label>
                </h1>
                <h2 class="roc">
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

                        if (upper < 30) {
                            l.innerHTML = "Deficient";
                            roc.innerHTML = `<ul><li> Eat vitamin D supplements</li>
                                                  <li>Eat foods that contain vitamin D. </li>
 <li> Exposure to sunlight </li>

                                                </ul>Treatment should be performed under the supervision of a doctor, as the increase in the dose of supplementation may cause toxicity, and generally prefer to take vitamin D3 tablets on D2, especially if the doses are spaced, such as one dose per month, preferably with a meal containing fat To obtain higher absorption, and in cases of severe vitamin D deficiency, that is when the level of vitamin D in the blood is less than 10 nanograms per ml.
 A dose of 50000 units is usually prescribed once a week for two to three times a week for one month. In the simplest cases, when the vitamin D level is between 11-25 ng per ml, less doses or periods may be used to obtain effective treatment. All cases must be given a preventive or stabilizing dose ranging from 800-2000 units a day to all people who have not made changes in their lifestyle, so that they adjust their level of vitamin D
`;

                        }
                        else
                            if (upper >= 30 && upper <= 39) {
                                l.innerHTML = "Adequate";


                            }

                            else if (upper >= 40 && upper <= 59) {
                                l.innerHTML = "Optimal";
                            }
                            else if (upper >= 60 && upper <= 100) {
                                l.innerHTML = "Therapeutic";
                            }
                            else
                                l.innerHTML = "Excess";






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
