<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Glucose.aspx.cs" Inherits="enasproject2.Glucose" %>
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
            <h2>Glucose test:</h2>

            <!-- One "tab" for each step in the form: -->
            <div class="tab">
                <select id="drop" class="dropdown">
  <option value="after">Before eating </option>
  <option value="before">After eating</option>

</select>
                <br />
                <br />
                <input type="number" id="upper" />
    
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

                        var drop = document.getElementById("drop");
                        var l = document.getElementById("Label1");

                        


                        l.setAttribute("style", "text-align:center;");


                        var roc = document.getElementById("Label_roc");

                        if (drop.selectedIndex == 0 && upper >= 65 && upper <= 126) {
                            l.innerHTML = "Normal";




                        }
                        else if (drop.selectedIndex == 0 && upper > 126) {
                            l.innerHTML = "Bad";
                            roc.innerHTML = `<ul> 
<li>High blood sugar causes many health problems leading to diabetes.</li>
<li> Playing sports</li>
<li>Scientific studies have shown that exercise helps to burn a large percentage of glucose glucose in the body as a result of the physical effort exerted by the body during exercise, so be careful to exercise on a daily basis to be healthy </li>
<li> Healthy nutrition plays a major role in keeping your health away from health hazards. Eating high-fat, high-calorie foods causes high body sugar, so take healthy, fat-free foods for optimal health </li>
<li>Eating juices when feeling very thirsty may be useful in the case of eating moderately without containing a large percentage of sugar, so take care to eat natural juices unsweetened or sweetened with a very low amount of sugar to protect yourself from high sugar in the body </li>
<li>Medical studies have shown that obesity causes the body to resist the hormone insulin, which works to lower blood sugar, so be careful to keep your weight away from obnoxious obesity </li>
<li>Doctors recommend cinnamon or cinnamon to different foods because of their ability to lower blood sugar </li>
<li> Eating fruits, especially apples and acidic fruits, helps reduce blood sugar to contain those fruits on a large proportion of ballistic materials that regulate the transmission of sugar from foods to the blood </li>
</ul>
`;
                        }
                        else if (drop.selectedIndex == 1 && upper >= 79 && upper <= 180) {
                            l.innerHTML = "Normal";

                        }
                        else if (drop.selectedIndex == 1 && upper >= 65 && upper > 180) {
                            l.innerHTML = "Bad";
                            roc.innerHTML = `<ul> 
<li>High blood sugar causes many health problems leading to diabetes.</li>
<li> Playing sports</li>
<li>Scientific studies have shown that exercise helps to burn a large percentage of glucose glucose in the body as a result of the physical effort exerted by the body during exercise, so be careful to exercise on a daily basis to be healthy </li>
<li> Healthy nutrition plays a major role in keeping your health away from health hazards. Eating high-fat, high-calorie foods causes high body sugar, so take healthy, fat-free foods for optimal health </li>
<li>Eating juices when feeling very thirsty may be useful in the case of eating moderately without containing a large percentage of sugar, so take care to eat natural juices unsweetened or sweetened with a very low amount of sugar to protect yourself from high sugar in the body </li>
<li>Medical studies have shown that obesity causes the body to resist the hormone insulin, which works to lower blood sugar, so be careful to keep your weight away from obnoxious obesity </li>
<li>Doctors recommend cinnamon or cinnamon to different foods because of their ability to lower blood sugar </li>
<li> Eating fruits, especially apples and acidic fruits, helps reduce blood sugar to contain those fruits on a large proportion of ballistic materials that regulate the transmission of sugar from foods to the blood </li>
</ul>
`;

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
