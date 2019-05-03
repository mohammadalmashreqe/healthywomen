<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cholesterol.aspx.cs" Inherits="enasproject2.Cholesterol" %>
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
            <h2>Cholesterol:</h2>

            <!-- One "tab" for each step in the form: -->
            <div class="tab">
                <input type="number" id="upper">NG/ML 
    
            </div>
         
            <div class="tab">
                <h1 class="result" style="display:none" id="h1res">
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

                        if (upper < 100) {
                            l.innerHTML = "Optimal";
                            document.getElementById("h1res").setAttribute("style", "display:block");
                           

                        }
                        else
                            if (upper >= 100 && upper <= 139) {
                                l.innerHTML = "Near optimal";
                                document.getElementById("h1res").setAttribute("style", "display:block");


                            }

                            else if (upper >= 140 && upper <= 159) {
                                l.innerHTML = "Borderline high";
                                document.getElementById("h1res").setAttribute("style", "display:block");
                            }
                            else if (upper >= 160 && upper <= 189) {
                                l.innerHTML = "high";

                                 roc.innerHTML = `<ul><li>  Tension control and control</li>
                                                  <li>Eat healthy </li>
 <li> Quit Smoking </li>

                                                </ul>Many studies have shown that excessive weight loss helps reduce low-density lipoprotein levels and increase HDL levels.
Refrain from drinking alcohol to cause alcohol to damage the liver and increase the level of harmful cholesterol.
`;
                                document.getElementById("h1res").setAttribute("style", "display:block");
    document.getElementById("h2roc").setAttribute("style", "display:block");
                            }
                            else {
                                l.innerHTML = "Very high";
                                 roc.innerHTML = `<ul><li> Exercise</li>
                                                  <li>Eat supplements </li>
 <li> Quit Smoking </li>
<li>Adherence to drugs prescribed by 
the doctor to lower cholesterol levels in the blood, 
and drugs that are usually prescribed for this purpose: 
Statins, which reduce the levels of low-density lipoprotein and
triglycerides, as well as raise the level of good cholesterol in a 
simple manner, examples of these The drug group is Atorvastatin,
and cholesterol-lowering drugs are also prescribed: niacin, colesevelam, 
cholestyramine, and fibrates</li>
                                                </ul>
`;

                          document.getElementById("h1res").setAttribute("style", "display:block");
    document.getElementById("h2roc").setAttribute("style", "display:block");  }






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
