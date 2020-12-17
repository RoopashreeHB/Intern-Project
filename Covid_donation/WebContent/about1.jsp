<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Support for COVID-19</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
            padding-top: 230px;
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            font-weight: 800;
            font-size: 18px;
            color: rgb(48, 20, 48);
            text-align: center;
           
        }

        h5{
          color: white;
        }

        

        body {
           /* font-family: Source Sans Pro;*/
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            background: #282828;
            background: linear-gradient(-45deg, #EE7752, #E73C7E, #23A6D5, #23D5AB);
            background-size: 400% 400%;
            animation: Gradient 15s ease infinite;
        }

        @-webkit-keyframes Gradient {
            0% {
                background-position: 0% 50%
            }
            50% {
                background-position: 100% 50%
            }
            100% {
                background-position: 0% 50%
            }
        }


        h1 {
            font-weight: lighter;
            font-size: 80px;
            color: #fff;
            text-allign: center;
            padding-top: 60px;
            padding-left: 490px;
            margin-bottom: 0;
        }

        h4 {
            color: #fff;
            text-align: center;
            /*font-family: Source Sans Pro;*/
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            font-weight: lighter;
            font-size: 40px;
            margin-top: 0;
            padding-top: 25px;


        }

        p {
            color: #fff;
            text-align: left;
            /*font-family: Source Sans Pro;*/
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
            font-weight: lighter;
            font-size: 20px;
            margin-top: 0;
            padding-top: 0px;
            padding-left: 20px;
        }
    </style>
</head>

<body>
    <!-- Top container -->
<div class="header">
    <p style = "text-align: left; font-weight: bold; font-size : 20px; color : white; padding-top: 10pt; padding-left: 20pt;  font-family: 'Raleway', sans-serif;  letter-spacing: 2px;">COVID-19 Donation</p>
    <ul>
       <!-- <li><a style = "text-align: left; font-weight: bold; font-size : 20px; color : white;" href="#">COVID-19 Donation</a></li>-->
        <li><a href="Index.jsp">Home</a></li>
        <li><a href="about1.jsp">About</a></li>
        <li><a href="contact_us1.jsp">Contact Us </a></li>
         <li><a href="feedbackform1.jsp">Feedback</a></li>
	
    </ul>
</div>
    <div class="wrapper">
        <h1>About Us</h1>
        <h4>Welcome to our charity</h4>
        <p>We love to help all the people who are seeking some kind of help in this present COVID-19 situation. We are creating an interface for the donors and the receiver in order to ensure proper donation.</p>
    </div>
    
</body>
</html>