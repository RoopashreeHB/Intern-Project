<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Support in COVID-19 </title>
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
  padding: 25px 16px;
  text-decoration: none;
}
.topnav p {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.container {  
  padding: 70px 0;
  height: 500px; 
  background-image: url('images/donation.png');
background-size: cover;
background-repeat: no-repeat;

}
.container p {
  color:white;
}

.footer {

  background-color: #f1f1f1;
  padding: 10px;

}
.footer p {
    text-align:center;
    color: black;
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
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
  align: center;
}

.button2 {
  background-color: #99e6ff; 
  color: black; 
  border: 2px solid #008CBA;
  align: center;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
  align: center;
}
</style>
</head>
<body>

<div class="topnav">

<img src="corona.jpeg" style="width: 250px;height :65px;">
    <a href="contact_us1.jsp" class="active">Contact Us</a>
     <a href="about1.jsp" class="active">About Us</a>
    <a href="Index.jsp" class="active">Home</a>

</div>
<div class="container">
<p style = "text-align: center; font-weight: bold; font-size : 50px;">Give A Hand To Make A Better World!</p>
 <p align="center"> <a href="User_selfdonor.jsp" class="active"><button class ="button button1">Self Donar</button></a></p>
<p align="center"><a href="User_charitydonor.jsp" class="active"><button class ="button button2">Charity Donor</button></a></p>
</div>


<div class="footer">
<p style="color:blue"><a href="mission.jsp" class="active">Mission Statement  </a>| <a href="inspiration.jsp" class="active"> Inspiration </a> |<a href="contactus.jsp" class="active"> Contact us</a></p>
<p> Copyright©2020 All Rights Reserved</p>
</div>

</body>
</html>