<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Page</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:400,500,600">

    <style>
        body {
            margin: 0;
            padding: 0;
            background: url('Fam.jpg')no-repeat;
            background-size: cover;
            height: 100vh;
            background-position: left;         
            font-family: 'Raleway', sans-serif;
            letter-spacing: 2px;
        }

        .loginbox {
            width: 320px;
            height: 420px;
            background: #372e6685;
            color: #fff;
            top: 50%;
            left: 50%;
            position: absolute;
            transform: translate(-50%,-50%);
            box-sizing: border-box;
            padding: 70px 30px;
        }

        .avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            position: absolute;
            top: -50px;
            left: calc(50% - 50px);            
        }

        h1 {
            margin: 0;
            padding: 0 0 20px;
            text-align: center;
        }

        .loginbox p {
            margin: 0;
            padding: 0;
            font-weight: bold;
            padding-top: 10px;
        }

        .loginbox input {
            width: 100%;
            margin-bottom: 20px;
        }

        .loginbox input[type="password"], [type="text"] {
            border: none;
            border-bottom: 1px solid #fff;
            background: transparent;
            outline: none;
            height: 40px;
            color:white;
            font-size: 16px;
        }

        .loginbox input[type="submit"]
        {
            border: none;
            outline: none;
            height: 40px;
            background: rgba(15, 2, 2, 0.2);
            color: #fff;
            font-size: 18px;
            border-radius: 20px;
        }

        .loginbox input[type="submit"]:hover {
            cursor : pointer;
            background: whitesmoke;
            color: #000; 
        }
    </style>

</head>
<body>

<%  
String profile_msg=(String)request.getAttribute("profile_msg");  
if(profile_msg!=null){  
out.print(profile_msg);  
}  
String login_msg=(String)request.getAttribute("login_msg");  
if(login_msg!=null){  
out.print(login_msg);  
}  
 %>  
    <div class="loginbox">
    <img src="icon2.png" class="avatar">
        <h1>Login Here</h1>
        <form action="validate_login.jsp" method="post">
            <p>Admin User Name</p>
            <input type="text" name="uname" placeholder="Enter your user name">
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter password">
	<input type="submit" name="login" value="Login">
          </form>
    </div>
</body>
</html>