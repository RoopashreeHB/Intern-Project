<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
input[type=date]{
  width: 50%;
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

input[type=button]:hover {
  background-color: #DF664E;
 }

input[type=reset]:hover {
  background-color: #DF664E;
 }
input[type=submit]:hover {
  background-color: #DF664E;
 }

.container {
padding: 20px ;
  height: 760px; 
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

<form class = "forms" action="add_donation.jsp" method="post">
 
 <font face = "Algerian" size = "6" > <b>DONATION INFORMATION</b></font><br><br><br>
  	  <div align="center">
    <b>Item Name: <input type="text" id="itemname" name="itemname" placeholder="Enter donated_item"></b><br>
    <b>Quantity:  <input type="text" id="quantity" name="quantity" placeholder="Enter quantity"></b><br>
    <b>Donor_ID: <input type="text" id="donatedby" name="donatedby" placeholder="Enter donor_id"></b><br>
    <b>Receiver_ID: <input type="text" id="receivedby" name="receivedby" placeholder="Enter receiver_id"></b><br>
    <label for="donor_type"><b>Choose Donor Type:</b></label>
		<select name="donor_type" id="donor_type">
		<option value="">Select</option>
  			<option value="SelfDonor">SelfDonor</option>
  			<option value="CharityDonor">CharityDonor</option>
  		</select>
    
    <b>Date:</b> <br>
    <input type="date" id="received_date" name="received_date" placeholder="Your date ..." required><br>
    <br>
  	<center><input type="submit" value="Submit" > 
  	  <input type="reset" value="Clear">
    <a href="donation_details.jsp" ><input type="button" value="Cancel"></a>
 </center>
  	</div>

</form>
</div>
</div>

</body>
</html>
