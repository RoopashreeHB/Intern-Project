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
          .header ul li a{
            text-decoration: none;
            color: white;
            font-size: 20px;
        }
        .header ul li a:hover{
            background-color: #211b4385;
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

        p {
            color: #fff;
            text-align: center;
            /*font-family: Source Sans Pro;*/
            font-family: 'Raleway', sans-serif;
            font-weight: lighter;
            font-size: 20px;
            margin-top: 0;
        }
.media{
margin-top:0px;
}

        li {
            list-style: none;
            margin: 10px 10px;
            display: inline-block;
            font-size: 20px;
            padding: 20px 20px;
            color: #fff;
        }

        li:hover {
            color: #292929;
            border: 1px solid #292929;
            }

        
    </style>
</head>

<body>

    <!-- Top container -->
<div class="header">
    <p style = "text-align: left; font-weight: bold; font-size : 20px; color : white; padding-top: 10pt; padding-left: 20pt;  font-family: 'Raleway', sans-serif;  letter-spacing: 2px;">COVID-19 Donation</p>
   <ul>
        <li><a href="Index.jsp">Home</a></li>
        <li><a href="about1.jsp">About</a></li>
        <li><a href="contact_us1.jsp">Contact Us </a></li>
        <li><a href="feedbackform1.jsp">Feedback </a></li>
    </ul>
</div>
    <div class="wrapper">
        <h1>Contact Us</h1>
      <div class="media" style =" padding-left: 200pt;">
        <ul> 
            <li><i class="fa fa-phone" aria-hidden="true"></i></li>  080-675211 
            <font  style =" padding-left: 160px;"><li><i class="fa fa-whatsapp" aria-hidden="true"></i></li>  9252701921<br></font>
            <li><i class="fa fa-envelope" aria-hidden="true"></i></li>   coivi19.donation@gmail.com 
            <li><i class="fa fa-facebook-f" aria-hidden="true"></i></li> Covid19 donation <br>
            <li><i class="fa fa-instagram" aria-hidden="true"></i></li>  coivd_19_donation       <br>
        </ul>
     </div>    
    </div>
</body>
</html>