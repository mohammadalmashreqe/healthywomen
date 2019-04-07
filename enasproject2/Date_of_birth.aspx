<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Date_of_birth.aspx.cs" Inherits="enasproject2.Date_of_birth" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <!-- Bootstrap DatePicker -->
<!-- Bootstrap DatePicker -->

    <!-- Bootstrap -->
    <link href="custom1.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

  <br />
    <br />
    <br />
    <br />

    <form id="regForm" >
<div class="container">
<h2> Due date calculator :</h2>

<!-- One "tab" for each step in the form: -->
<div class="tab">
  <p><input type="date"  id="A"  ></p>
</div>

<div class="tab">
 <h1 >  <label  id="Label1">   </label></h1> 
    <h2> <label id="Label_roc"> </label></h2>
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
        
        var h = document.getElementById("A").value;
    
        var l = document.getElementById("Label1");
        var date1 = new Date(h);
        var date2 = new Date();
   
        var ONE_WEEK = 1000 * 60 * 60 * 24 * 7;
        var date1_ms = date1.getTime();
        var date2_ms = date2.getTime();
        var difference_ms = Math.abs(date2_ms - date1_ms);
	// Convert back to weeks and return hole weeks
 
        var week = Math.floor(difference_ms / ONE_WEEK);
        date1.setDate(date1.getDate() + 280);
        l.setAttribute("style", "text-align:center;");
        l.innerHTML = "result :<br/>" + (date1.getDay()+1) + "/" + (date1.getMonth()+1) + "/" + date1.getFullYear();
        // The number of milliseconds in one week
	
        console.log(week);
        var roc = document.getElementById("Label_roc");
        if (week < 13) {
            roc.innerHTML = `The first trimester 1/3: This period is characterized by changes in the level of hormones of pregnant women; the uterus supports the growth of the placenta and fetus, and also result in pregnant women feeling tired and tiredness, morning sickness, headache, constipation.`;

        }
        else
            if (week >= 13 && week < 26) {
                roc.innerHTML = `The second trimester 2/3: The symptoms of the initial annoying pregnancy will disappear at that time, but women feel new symptoms such as cramps in the legs, heartburn, and you will notice an increase in weight`;

            }
            else
                roc.innerHTML = `The third trimester 3/3: In this period, the woman should visit the doctor continuously to examine the protein level in the urine, the blood pressure test, the fetal heart rate test, the approximate length of the uterus`;
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
