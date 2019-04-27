<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="heartRate.aspx.cs" Inherits="enasproject2.heartRate" %>
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
<h1>Heart Rate :</h1>

<!-- One "tab" for each step in the form: -->
<div class="tab">
  <p><input type="number" id="A" placeholder="Age..." oninput="this.className = ''"></p>
</div>

<div class="tab">
 <h1 class="result" >  <label  id="Label1">   </label></h1> 
    
</div>
<p id="roc" class="roc">Before starting exercise, 
        consult your doctor if you have a chronic
        health condition such as heart disease, 
        high blood pressure or diabetes,
        or if you are taking beta blockers for these conditions or for migraines or glaucoma. Also consult your doctor if you experience heart palpitations, 
        fatigue and shortness of breath</p>




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
        document.getElementById("roc").innerHTML = `Before starting exercise, 
        consult your doctor if you have a chronic
        health condition such as heart disease, 
        high blood pressure or diabetes,
        or if you are taking beta blockers for these conditions or for migraines or glaucoma. Also consult your doctor if you experience heart palpitations, 
        fatigue and shortness of breath`;
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
        
        var h = parseFloat(document.getElementById("A").value);
    
        var l = document.getElementById("Label1");
        var r = '';
        var roc = document.getElementById("roc");
        
        if (h >= 1 && h <= 2) {

            r = "80 to 130 beats per minute.";
        }
        else
            if (h >= 3 && h <= 4) {
                r = " 80 to 120 beats per minute.";

            }
            else
                if (h >= 5 && h <= 6) {
                    r = "75 to 115 beats per minute.";
                }
                else if (h >= 7 && h <= 9) {
                    r = "70 to 110 beats per minute.";
                }
                else if (h >= 10 && h <= 18) {
                    r = "60 to 100 beats per minute.";
                }
                else {
                    r = "60 to 100 beats per minute";
                    roc.innerHTML = `The speed of the heartbeat may vary from person to person. The athlete's pulse may reach 40 beats per minute at rest. Progress in age affects the speed and nature of the pulse in humans. The heart rate is continuously increased from 100 beats / minute during rest, or if the heart rate drops below 60 beats / minute. The high heart rate known as tachycardia, as well as the slow pulse (Bradycardia) ) On the existence of a health problem, especially if the person has signs and symptoms; fainting, and Aldo , Shortness of breath`;
                }
         l.setAttribute("style", "text-align:center;");
        l.innerHTML = "result : " + r ;

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
