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
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Donation information</title>
</head><style>
body {font-family: Arial, Helvetica, sans-serif;

}
* {box-sizing: border-box;
}
input[type=button] {
  background-color: black;
  color: white;
  padding: 5px 6px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
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
  height: 900px; 
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
 height:100%;
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
 <a href="donation_details.jsp" ><button type="button" id="button8" style="margin-right: 400px "><b>Back </b></button>  </a>

<form class = "forms" action="update_donation.jsp" method="post">
 
 <font face = "Algerian" size = "6" > <b>DONATION INFORMATION</b></font><br><br><br>
 	 <% String slno= request.getParameter("item_no");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from  received_items where item_no='"+slno+"' ";
resultSet = statement.executeQuery(sql);
if(resultSet!=null){
if(resultSet.next()){
%> <div align="center">
    <label for="fname"><b>Item NO:</label>
     <input type="text" name="item_no" value=<%=resultSet.getString("item_no") %>>
    <b>Item Name: <input type="text" name="itemname" value=<%=resultSet.getString("itemname") %>></b><br>
    <b>Quantity:  <input type="text" name="quantity" value=<%=resultSet.getString("quantity") %>></b><br>
    <b>Donor_ID: <input type="text" name="donatedby" value=<%=resultSet.getString("donatedby") %>></b><br>
    <b>Receiver_ID: <input type="text" name="receivedby" value=<%=resultSet.getString("receivedby") %>></b><br>
    <b>Donor_Type: <input type="text" name="donor_type" value=<%=resultSet.getString("donor_type") %>></b><br>
    <b>Date: <input type="text" name="received_date" value=<%=resultSet.getString("received_date") %>></b><br>
    <br><br>
  	<input type="submit" value="Update" >   <input type="reset" value="Clear">
    <a href="donation_details.jsp" ><input type="button" value="Cancel"></a>
 
  	</div>
<%
}
else
{%>
<script>window.alert("Id NOT found");</script>
<%
getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
}
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</form>
</div>
</div>

</body>
</html>
