﻿var currentTab = 0; // Current tab is set to be the first tab (0)
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
        //Underweight = < 18.5
        //Normal weight = 18.5–24.9
        //Overweight = 25–29.9
        //Obesity = BMI of 30 or greater
        var h = parseFloat(document.getElementById("h").value);
        var w = parseFloat(document.getElementById("w").value)
        var l = document.getElementById("Label1");
        var r = w / Math.pow(h, 2);
        r = r.toFixed(2);
        if (r < 18.5) {
              
            l.setAttribute("style", "text-align:center; color:red;");
            
            l.innerHTML ="result : "+ r+"<br/>Underweight";
        }
        else
            if (r >= 18.5 && r <= 24.9) {
                l.setAttribute("style", "text-align:center; color:green;");
                l.innerHTML = "result : " +r +"<br/>Normal weight";
            }
            else
                if (r >= 25 && r <= 29.9) {
                    l.setAttribute("style", "text-align:center; color:red;");
                    l.innerHTML = "result : " +r +"<br/>Overweight";
                }
                else {
                    l.setAttribute("style", "text-align:center; color:red;");
                    l.innerHTML = "result : " + r +"<br/> Obesity";
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