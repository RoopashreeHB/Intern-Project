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
ResultSet resultSet = null;
Statement statement1 = null;
ResultSet resultSet1= null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Self donor information</title>
</head><style>
body {font-family: Arial, Helvetica, sans-serif;

}
* {box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
input[type=tel], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
input[type=email], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}
input[type=submit] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=reset] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}
input[type=button] {
  background-color: black;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}

input[type=submit]:hover {
  background-color: #DF664E;
}
input[type=reset]:hover {
  background-color: #DF664E;
}
input[type=button]:hover {
  background-color: #DF664E;
}

.container {
padding: 20px ;
  height: 1100px; 
  background-image: url('images/3r.jpg');
background-size: cover;
background-repeat: no-repeat;
}
.top {
    text-align:center;
    font-weight: bold;
    font-size:50px;
    color:black;
}
.forms {
 background-color:#666666;
 opacity: 0.8;
 width:50%;
 height:90%;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
  	
	margin: auto;
  border-radius: 5px;
  padding: 20px;
}
.label {
color:white;
}
</style>
<body> 
<jsp:include page="sidebar.jsp" />  
<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:0px;">
<div class="container">
 <font face = "Algerian" size = "6" > <b>SELF DONOR'S INFORMATION</b></font><br><br><br>
  <a href="donor_info.jsp" ><button type="button" id="button3" style="margin-right: 400px "><b><< Back </b></button>  </a>
	 <% String donor_id= request.getParameter("id");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from  selfdonor where sdonor_id='"+donor_id+"' ";
resultSet = statement.executeQuery(sql);
if(resultSet!=null){
if(resultSet.next()){
%> <div align="center">
 <form class = "forms" action="update.jsp" method="post">
    <label for="fname"><b>ID:</label>
     <input type="text" name="sdonor_id" value=<%=resultSet.getString("sdonor_id") %>>
    <b>First Name: <input type="text" name="sfname" value=<%=resultSet.getString("sfname") %>></b><br>
    <b>Last Name: <input type="text" name="slname" value=<%=resultSet.getString("slname") %>></b><br>
    <b>Phone Number:  <input type="text" name="sphno" value=<%=resultSet.getString("sphno") %>></b><br>
    <b>Email: <input type="text" name="semail" value=<%=resultSet.getString("semail") %>></b><br>
    <b>Address: <input type="text" name="saddress" value=<%=resultSet.getString("saddress") %>></b><br>
    <%
statement1=connection.createStatement();
String sql1 ="select itemname,quantity,status from donated_items where donatedby='"+donor_id+"'";
resultSet1 = statement1.executeQuery(sql1);
if(resultSet!=null){
	while(resultSet1.next()){
	%>
    <b>Donated Item: <input type="text" name="sdonated_item" value=<%=resultSet1.getString("itemname") %>></b><br>
    <b>Quantity: <input type="text" name="squantity" value=<%=resultSet1.getString("quantity") %>></b><br>
    <b>status: <input type="text" name="sstatus" value=<%=resultSet1.getString("status") %>></b><br>
    <br><br>
  	<input type="submit" value="Update" >  <input type="reset" value="Clear">
    <a href="donor_info.jsp" ><input type="button" value="Cancel"></a>
 
	<%} 
	}%>
<%
}
else
{%>
<script>window.alert("Id NOT found");</script>
<%
getServletContext().getRequestDispatcher("/donor_info.jsp").include(request,response);

}
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</div>
</div>

</body>
</html>
