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

 body{}
        
.container {
    padding: 50px 0;
    background: url('r2.jpg')no-repeat;
    background-size: cover;
    height: 520px;
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
  color: #008000;
  font-family: : Arial, Helvetica, sans-serif;
  font size: 30px;  
}
 .container h3 {
  color: #800080;
  font-family: : Arial, Helvetica, sans-serif;
  font size: 30px;
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
</style>
</head>
<body>
<div class="topnav">
<div style="margin-left:50px;margin-top:8px;">
<img src="corona.jpeg" style="width: 250px;height :65px;">

     <a href="feedbackform1.jsp" class="active">Feedback</a>
	   <a href="User_selfdonor.jsp" class="active">Home</a>
	   <a href="track_user_charitydonor.jsp" class="active">Back</a>
	</div></div>
	
<div class="container">
<div style="margin-top:-80px;">
<p style = "text-align:left; font-weight: bold; font-size : 35px;font-family: Algerian;color : #F41C0B;">WeLcOmE <%out.println(iname); %> ..</p>
</div>

 <%
 String status="Pending";
     try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from received_items where donatedby='"+iid+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
%>
<div style="margin-left:750px;margin-top:0px;">
<p style = "text-align:left; font-weight: bold; font-size : 35px;font-family: Algerian;color : black;">Track Donated Items</p>
 
<%
status="Received";
String rec=resultSet.getString("receivedby"); 
String donor=resultSet.getString("donatedby"); 
String type=resultSet.getString("donor_type"); 
%>
<%
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql1 ="select * from receiver where receiver_id='"+rec+"'";
resultSet1 = statement.executeQuery(sql1);
while(resultSet1.next()){
%>
<h3>Receiver Name : <hk><%=resultSet1.getString("fname") %> <%=resultSet1.getString("lname") %></hk><br></h3>
<h3>Receiver Address:<hk> <%=resultSet1.getString("address") %></hk> <br></h3>
<h3>Receiver Phone Number: <hk> <%=resultSet1.getString("phno") %></hk><br></h3>
<h3>Receiver Email ID: <hk><%=resultSet1.getString("email") %></hk><br></h3>
<%
}
%>

<h3>Item Name: <hk> <%=resultSet.getString("itemname") %></hk><br></h3>
<h3>Quantity: <hk> <%=resultSet.getString("quantity") %> </hk><br></h3>
<h3>Issued Date:<hk> <%=resultSet.getString("received_date") %><br></h3>

<%
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql3 ="select * from donated_items where donatedby='"+iid+"'";
resultSet1 = statement.executeQuery(sql3);
while(resultSet1.next()){
	status=resultSet1.getString("status");
%>
<h3> Status: <hk><%=resultSet1.getString("status") %></hk><br><br></h3>
<%} %>
<%
}

connection.close();
}
    catch (Exception e) {
e.printStackTrace();
}

     if(status.equals("Pending"))
      {
      	%> <h3 align="center"><%out.println("Your Requested Item is not yet donated ...");%></h3><%
      }
   %>
</h3>
</div>
</div>
<div class="footer">
<p> Copyright©2020 All Rights Reserved</p>
</div>

</body>
</html>