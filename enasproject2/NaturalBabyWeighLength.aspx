<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="NaturalBabyWeighLength.aspx.cs" Inherits="enasproject2.NaturalBabyWeighLength" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="custom1.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">

       <br />
    <br />
    <br />
    <br />

    <form id="regForm" >
<div class="container">
<h2>Natural Baby length and wieght Calculator :</h2>

<!-- One "tab" for each step in the form: -->
<div class="tab">
  <p><input type="number" id="A" placeholder="Age in year..." oninput="this.className = ''"></p>
</div>

<div class="tab">
 <h1 >  <label  id="Label1">   </label></h1> 
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
        
        var h = parseFloat(document.getElementById("A").value);
    
        var l = document.getElementById("Label1");
        var rL = h * 5 + 8;
        var rw = h * 2 + 8;
        
         l.setAttribute("style", "text-align:center;");
        l.innerHTML = "result :<br/> Length :  " + rL+"<br/> weight : "+rw ;

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
