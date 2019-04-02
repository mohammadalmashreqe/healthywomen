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
        document.getElementById("prevBtn").style.display = "inline";
        document.getElementById("nextBtn").style.display = "none";
    }
    if(n==0) {
        document.getElementById("prevBtn").style.display = "none";
        document.getElementById("nextBtn").style.display = "inline";
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
        var roc = document.getElementById("roc");
        r = r.toFixed(2);

        if (r < 18.5) {
              
            l.setAttribute("style", "text-align:center; color:red;");
            
            l.innerHTML = "result : " + r + "<br/>Underweight";
            roc.innerHTML = `Do not deprive yourself of anything, just eat whatever you want but in small quantities.

Eat plenty of water, at least 2 liters a day

Move through the day, do not mean strong sports but only movement in the home or work business.`;

}
        else
            if (r >= 18.5 && r <= 24.9) {
                l.setAttribute("style", "text-align:center; color:green;");
                l.innerHTML = "result : " + r + "<br/>Normal weight";
                roc.innerHTML = `Do not deprive yourself of anything, just eat whatever you want but in small quantities.

Eat plenty of water, at least 2 liters a day

Move through the day, do not mean strong sports but only movement in the home or work business.`;
            }
            else
                if (r >= 25 && r <= 29.9) {
                    l.setAttribute("style", "text-align:center; color:red;");
                    l.innerHTML = "result : " + r + "<br/>Overweight";
                    roc.innerHTML = `Do not use too much fat in your food

Minimize supper, and if you feel hungry just a light snacking instead of fatty meals.

Watch your body and your way of wearing it. If you notice that your body curves increase, you should realize that something is wrong and needs to be adjusted in your lifestyle.`;
                }
                else {
                    l.setAttribute("style", "text-align:center; color:red;");
                    l.innerHTML = "result : " + r + "<br/> Obesity";
                    roc.innerHTML = `Monitor your body's performance and try to follow the signs that you have excess fat, which often appears to be difficult to breathe after exertion, or inability to do any movement-based activities.

Focus on your food, eat it slowly, enjoy every bite, and listen to your stomach when you feel full and stop immediately

Do not finish your dish, try to rely on protein and vegetables more than your dependence on carbohydrates and fats.`;
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