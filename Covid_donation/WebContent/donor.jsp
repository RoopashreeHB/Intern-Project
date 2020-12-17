

<!DOCTYPE html>
<html lang="en">
<head>
<title>Donor Page </title>
<meta charset="utf-8">

<style>
* {
  box-sizing: border-box;
  font-family: Arial, Helvetica, sans-serif;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}


.topnav {
  overflow: hidden;
  background-color: #333;
  font-weight: bold;
}

.topnav a {
  float: right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 40px 16px;
  text-decoration: none;
}
.topnav p {
  display: block;
  color: #f2f2f2;
   padding: 14px 16px;
  text-decoration: none;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.container {
  padding: 70px 0;
  background-image: url('images/2d.jpg');
  height:430px;
background-size: cover;
background-repeat: no-repeat;
}
.ff {
background-color: white;
}
.container font {
font-family: algerian;
  color:purple;
}
.ff font {
font-family: algerian;
  color: DeepPink;
}


.footer {
  background-color: #f1f1f1;
  padding: 10px;
}

.content-centered a {
  float: none;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: black;
  color: white;
   padding: 20px 30px;
}
.button {
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: #99ffd6; 
  color: maroon; 
  border: 2px solid #4CAF50;
  font-size: 30px;
  font-family: "arial";
}


.button1:hover {
  background-color: #4CAF50;
  color: white;
  
}

.button2 {
  background-color: #99e6ff; 
  color: red; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}
</style>
</head>
<body>
<jsp:include page="sidebar.jsp" /> 
<div class="w3-main" style="margin-left:300px;margin-top:0px;">
<div class="ff"> 
<font style = "text-align: center; font-weight: bold; font-size : 50px;">Donor's Information</font><br><br><br>
</div>
</div>
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:0px;">

<div class="container">
<center>
 <font> <a href="donor_info.jsp" class="active"><button class ="button button1"><b>Self Donar's</b></button></a></font><br><br>
<font><a href="donor_info1.jsp" class="active"><button class ="button button1"><b>Charity Donor's</b></button></a></font>
</center>
</div>
</div>
<!-- Footer -->
  <footer class="w3-container w3-padding-16 w3-light-grey">
    <p><a href="/home.html" target="_blank">All Rights Reserved</a></p>
  </footer>
</body>
</html>
