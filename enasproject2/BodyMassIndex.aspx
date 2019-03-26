<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BodyMassIndex.aspx.cs" Inherits="enasproject2.BodyMassIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="pagetitle" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
    
    <link href="custom1.css" rel="stylesheet" />

    <script>




      
    </script>

    




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="BodyContent" runat="server">


    <br />
    <br />
    <br />
    <br />

    <form id="regForm" >
<div class="container">
<h1>Body Mass Index:</h1>

<!-- One "tab" for each step in the form: -->
<div class="tab">
  <p><input type="number" id="w" placeholder="weight in KG..." oninput="this.className = ''"></p>
  <p><input type="number" id="h" placeholder="height in Meters..." oninput="this.className = ''"></p>
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
<script src="customscript.js"></script>
    </div>
</form>

</asp:Content>
