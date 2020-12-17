<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "Covid_Donation";
String userid = "sushma";
String password = "Sushma@08";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet2 = null;
Statement statement1 = null;
ResultSet resultSet1 = null;
ResultSet resultSet0 = null;
ResultSet resultSet3 = null;
ResultSet resultSet = null;

String iid=(String)session.getAttribute("id");
String iname=(String)session.getAttribute("name");
String ipassword=(String)session.getAttribute("pswd");

session.setAttribute("iid",iid);
session.setAttribute("name",iname);
%>

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

 body{
          
        }
        
.container {
  padding: 50px 0;
    background: url('r1.jpg')no-repeat;
            background-size: cover;
            height: 500px;
            background-position: bottom;
 background-repeat: no-repeat;

}
.container p {
  color:white;
  font-family: 
  }
  
  .container a {
  color: #FF1166;
}

 .container hk {
  color: black;
  font-family: : Arial, Helvetica, sans-serif;
  font-size: 25px;  
}
 .container h3 {
  color: #800080;
  font-family: : Arial, Helvetica, sans-serif;
  font-size: 25px;
  }

.footer {
  background-color: #f1f1f1;
  padding: 8px;
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
  background-color: #ffd9b3; 
  color: green; 
  border: 2px solid #ff9933;
 align: center;
    font-size: 20px;
}

.button1:hover {
  background-color: #ff9933;
  color: white;
  align: center;
}

.button2 {
  background-color: #ffdf80; 
  color: green; 
  border: 2px solid #cc9900;
  align: center;
   font-size: 20px;
}

.button2:hover {
  background-color: #cc9900;
  color: white;
  align: center;
}
</style>
</head>
<body>

<div class="topnav">
<div style="margin-left:50px;margin-top:8px;">
<img src="corona.jpeg" style="width: 250px;height :65px;">

     <a href="feedbackform1.jsp" class="active">Feedback</a>
       <a href="trackr.jsp" class="active">Track</a>
	   <a href="User_receiver.jsp" class="active">Home</a>
	   
   </div></div>
   
   <div class="container">
    <div style="margin-top:-80px;">
<p style = "text-align:left; font-weight: bold; font-size : 35px;font-family: Algerian;color : #ff0080;">WeLcOmE..<%out.println(iname); %><br> </p>
<p style = "text-align:left; font-weight: bold; font-size : 20px;font-family: Algerian;color : red;"><%out.println("Your Requested Item Details.."); %></p>

</div>

 <div style="margin-top:80px; margin-left:10px;"><%
     try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from requested_items where requestedby='"+iid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
%>
<h3>Requested Item : <hk> <%=resultSet.getString("itemname") %></hk><br></h3>
<h3>Requested Quantity: <hk> <%=resultSet.getString("quantity") %> </hk><br></h3>
<h3> Requested_date: <hk><%=resultSet.getString("requested_date") %></hk><br></h3>
<h3> Status: <hk><%=resultSet.getString("status") %></hk><br></h3>
<%
}
connection.close();
}
catch (Exception e) {
e.printStackTrace();
}
%>

</h3>
</div>

 <div style="margin-top:-350px;margin-left:700px; ">
<p style = "text-align:left; font-weight: bold; font-size : 35px;font-family: Algerian;color : #FF0000;"><u>Safety  Measures</u></p>

<p style = "text-align:left; font-weight: bold; font-size : 22px;font-family: calibri;color : #000066;">
1.  Physical Distancing<br>
2.  Wearing a Mask<br>
3.  Keeping rooms well ventilated<br>
4.  Avoiding Crowds<br>
5.  Regularly and thoroughly clean your hands with an alcohol-based hand rub or wash them with soap and water<br>
6.  Avoid touching your eyes, nose and mouth<br>
7.  Maintain a safe distance from anyone who is coughing or sneezing<br>
</p>
</div>

</div>
<div class="footer">
<p> Copyright©2020 All Rights Reserved</p>
</div>
</body>
</html>