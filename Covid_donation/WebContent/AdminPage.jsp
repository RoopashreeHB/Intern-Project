<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home Page</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,500,600">

    <style>
        *{margin: 0;}

        body{
            background: url('Fam.jpg')no-repeat;
            background-size: cover;
            height: 100vh;
            background-position: left;
        }

        .header{
            width: 100%;
            background-color: rgba(0,0,0,.2);
        }

        .header ul{
            text-align: right;
        }

        .header ul li{
            list-style: none;
            display: inline-block;
        }

        .header ul li a{            
            display: block;
            text-decoration: none;
            text-transform: uppercase;
            color: white;
            font-size: 15px;
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            font-weight: 600;
            padding: 20px;
            padding-top: 0px;
            transition: all ease 0.5s;           
        }

        .header ul li a:hover{
            background-color: #211b4385;
        }

        .content-centered a {
            text-decoration: none;
            text-transform: uppercase;
            font-size: 30px;
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            font-weight: 900;
            float: none;
            position: absolute;
            top: 40%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color:  #372f6385;
            color: white;
            padding: 20px 30px;
        }

        .container p {
            padding-top: 200px;
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            font-weight: 800;
            font-size: 18px;
            color: rgb(48, 20, 48);
            text-align: center;
        }
    </style>
</head>
<body>
<div class="header">
    <p style = "text-align: left; font-weight: bold; font-size : 20px; color : white; padding-top: 10pt; padding-left: 20pt;  font-family: 'Raleway', sans-serif;  letter-spacing: 2px;">COVID-19 Donation</p>
    <ul>
       <!-- <li><a style = "text-align: left; font-weight: bold; font-size : 20px; color : white;" href="#">COVID-19 Donation</a></li>-->
        <li><a href="AdminPage.jsp">Home</a></li>
   <li> <a href="AdminLogin.jsp" >Login</a></li>
    </ul>
</div>

<div class="container">
    <p>We need your help to serve the people</p>
    <h2 style = "text-align: center; font-weight: bold; font-size : 30px; color :  #372e6685;font-family: 'Raleway', sans-serif; letter-spacing: 2px;" >Together we are family</h2>
    <h4 style = "text-align: center; font-weight: bolder; font-size : 40px; color : white; font-family: 'Raleway', sans-serif; letter-spacing: 2px;" >Help for victims affected by COVID-19</h4>
</div>
<div>
    <p style="padding-top: 15%; color: white; font-family: 'Raleway', sans-serif; letter-spacing: 1px; font-size: 12px; font-weight: 600;">Copyright©2020 All Rights Reserved</p>
</div>
</body>
</html>