<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Normalbloodsugarinpregnantwomen.aspx.cs" Inherits="enasproject2.Normalbloodsugarinpregnantwomen" %>
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
            <h2>Normal blood sugar in pregnant women :</h2>

            <!-- One "tab" for each step in the form: -->
            <div class="tab">
                <select id="drop" class="dropdown">
  <option value="after">Before eating </option>
  <option value="before">After eating</option>

</select>
                <br />
                <br />
                <input type="number" id="upper" />MG/DL
    
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

                        var drop = document.getElementById("drop");
                        var l = document.getElementById("Label1");

                        


                        l.setAttribute("style", "text-align:center;");


                        var roc = document.getElementById("Label_roc");

                        if (drop.selectedIndex == 0 && upper <95 ) {
                            l.innerHTML = "Normal";




                        }
                        else if (drop.selectedIndex == 0 && upper >= 95) {
                            l.innerHTML = "Abnormal";
                            roc.innerHTML = `To reduce gestational diabetes in pregnant women, they must take several steps to do so:

Eating breakfast daily, taking into account a small amount of simple food, avoiding the high intake of carbohydrates, and can eat a glass of milk, and two tablespoons of whey, and one tablespoon of nut butter, these foods are healthy and reduce the proportion of sugar load, Stay away as far as possible from eating vegetables and fruits in the morning; because they contain a high percentage of sugars, which are kept in the blood.
 Keep eating every two or three hours, and the quantities of food are few, to avoid the feeling of hunger, which causes the decline of sugar significantly, and therefore exposure to damage and danger. Foods that contain high protein should be eaten because it breaks down carbohydrates that have entered the blood.
 Make a healthy diet for pregnant women, to avoid weight loss during pregnancy, which causes harm to the fetus, and avoid excessive weight gain, to get a healthy weight and ideal, to regulate blood sugar, and to get good health and disease free.
It regulates the functions of the body, helps distribute glucose to all cells of the body and energizes its energy, thus regulating blood sugar, and leads to avoid exposure to convulsions that occur in the back, muscles, constipation and other problems that may be exposed Her pregnant woman.
 In the worst case, a pregnant woman should take medication to reduce blood sugar and keep it in use.

`;
                        }
                        else if (drop.selectedIndex == 1 && upper < 120 ) {
                            l.innerHTML = "Normal";

                        }
                        else if (drop.selectedIndex == 1 && upper >= 120) {
                            l.innerHTML = "Abnormal";
                            roc.innerHTML = `To reduce gestational diabetes in pregnant women, they must take several steps to do so:

Eating breakfast daily, taking into account a small amount of simple food, avoiding the high intake of carbohydrates, and can eat a glass of milk, and two tablespoons of whey, and one tablespoon of nut butter, these foods are healthy and reduce the proportion of sugar load, Stay away as far as possible from eating vegetables and fruits in the morning; because they contain a high percentage of sugars, which are kept in the blood.
 Keep eating every two or three hours, and the quantities of food are few, to avoid the feeling of hunger, which causes the decline of sugar significantly, and therefore exposure to damage and danger. Foods that contain high protein should be eaten because it breaks down carbohydrates that have entered the blood.
 Make a healthy diet for pregnant women, to avoid weight loss during pregnancy, which causes harm to the fetus, and avoid excessive weight gain, to get a healthy weight and ideal, to regulate blood sugar, and to get good health and disease free.
It regulates the functions of the body, helps distribute glucose to all cells of the body and energizes its energy, thus regulating blood sugar, and leads to avoid exposure to convulsions that occur in the back, muscles, constipation and other problems that may be exposed Her pregnant woman.
 In the worst case, a pregnant woman should take medication to reduce blood sugar and keep it in use.

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
