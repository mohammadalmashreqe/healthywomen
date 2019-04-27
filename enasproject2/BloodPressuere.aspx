<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BloodPressuere.aspx.cs" Inherits="enasproject2.BloodPressuere" %>
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

    <form id="regForm" >
<div class="container">
<h2>Blood Pressure :</h2>

<!-- One "tab" for each step in the form: -->
<div class="tab">
  <p> <label>upper</label><input type="number"  id="upper"  >
     <p><label>Lower</label><input type="number"  id="Lower"  ></p>
</div>

<div class="tab">
 <h1 class="result" >  <label  id="Label1">   </label></h1> 
    <h2 class="roc"> <label id="Label_roc"> </label></h2>
</div>





<div style="overflow:auto;">
  <div style="float:right;">
    <button class="btn btn-primary" type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
    <button class="btn btn-primary" type="button" id="nextBtn" onclick="nextPrev(1)">Result</button>
  </div>
</div>

<!-- Circles which indicates the steps of the form: -->
<div style="text-align:center;margin-top:40px;">
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
        var lower = document.getElementById("Lower").value;

    
        var l = document.getElementById("Label1");
       
   
  
        l.setAttribute("style", "text-align:center;");
       
	
        var roc = document.getElementById("Label_roc");

        if (upper <= 120 && lower <= 80) {
            l.innerHTML = "Normal";
            roc.innerHTML = `Foods that strengthen the blood of multiple types and types of food that can be addressed to strengthen the blood, namely:

Nuts, nuts, almonds, hazelnuts, cashews and pistachio nuts.

Meat and chicken concentrate on the livers of animals that strengthen blood. Eat honey regularly.

Fruits such as: bananas, strawberries, apples. Citrus fruits such as orange, lemon, and others.

Vegetables, especially paper, such as spinach, mulukhya, cabbage, and onions.

Cereals such as chickpeas, lentils, wheat and others.

  Various kinds of fish Kaltona, sardines, and others.
 Eggs but eat moderately`;

        }
        else
            if (upper >= 120 && upper <= 129 && lower < 80) {
                l.innerHTML = "Elevated";
                roc.innerHTML = `Foods that strengthen the blood of multiple types and types of food that can be addressed to strengthen the blood, namely:

Nuts, nuts, almonds, hazelnuts, cashews and pistachio nuts.

Meat and chicken concentrate on the livers of animals that strengthen blood. Eat honey regularly.

Fruits such as: bananas, strawberries, apples. Citrus fruits such as orange, lemon, and others.

Vegetables, especially paper, such as spinach, mulukhya, cabbage, and onions.

Cereals such as chickpeas, lentils, wheat and others.

  Various kinds of fish Kaltona, sardines, and others.
 Eggs but eat moderately`;
            }
            else
                if ((upper >= 130 && upper <= 139) || (lower >= 80 && lower <= 89)) {
                    l.innerHTML = "Hypertension Stage 1";
                    roc.innerHTML = `<ul>
<li><p>  Quit Smoking</p>The immediate cessation of smoking and the cessation of passive smoking has effective results to lower blood pressure. Nicotine in tobacco and its products leads to an immediate rise in blood pressure and also affects up to an hour after smoking. </li>
<li> <p> Adequate diet </p>
It helps to maintain a special and appropriate diet to lower blood pressure, especially DASH diet to lower blood pressure (DASH).
The diet includes foods high in dietary fiber, including fruits, vegetables, low-fat milk products, as well as continuous reduction of saturated fats and cholesterol in food.

</li>
<li><p>Reduce sodium ratio </p>
Reduce the amount of sodium (salt) in food so that the maximum level of consumption for those suffering from high blood pressure is 1500 mg a day is very important.

For people who do not have high blood pressure, the maximum level of consumption is up to 2300 mg per day (a teaspoon of salt).


</li>
</ul>
`;
                }
                else
                    if (upper >= 140 || lower >= 90) {
                        l.innerHTML = "Hypertension Stage 2";

                        roc.innerHTML = `<ul> 
<li>Exercise
Physical activity must be carried out for half an hour to one hour a day, most days of the week.

The effect of physical activity on lowering blood pressure is fast, and for people who have not exercised previously can be observed landing in a few weeks. It is preferable to coordinate the training program with a specialized medical authority. </li>
<li> Avoid or reduce alcohol
Limit alcohol consumption by one cup per day for women and two for men. For people who use alcohol, balanced amounts may help lower blood pressure.

For people who have not drunk alcohol before, the risks of alcohol consumption dominate the benefits, so it is advisable not to start consuming alcohol. </li>
<li> Reduce caffeine
Although the role of caffeine in blood pressure has not been ascertained, it is possible to examine the effects of caffeine in person.

If the blood pressure test shows half an hour after drinking the coffee, a rise of 10 millimeters of mercury, it means that caffeine increases your blood pressure.

However, it is recommended not to consume more than 200 mg / day (the amount usually found in two cups of coffee). </li>
`;
                    }

                    else {
                        l.innerHTML = "seek Emergency care";
                        roc.innerHTML = `<ul>
<li><p>Improve the psychological state</p>
Reducing tension and pressure by different calming methods has very positive effects on lowering high blood pressure.
 </li>
<li><p>Regular examinations </p>Awareness to lower blood pressure and frequent visits to the doctor helps to detect early high blood pressure as well as better treatment for those suffering from the problem.
 </li>
<li><p> Appropriate medicines </p> 
There are many types of medications to lower blood pressure. In simple cases, it is possible to change the lifestyle only, but the worse the situation, the more medication is needed.

Medications may range from one drug a day to a large number of medications several times a day.

The central mechanisms in which blood pressure drugs, blood vessels relax, as well as drugs that reduce the amount of blood pumped by the heart as well as drugs that help reduce blood volume.
</li>
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
