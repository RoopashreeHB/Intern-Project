<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title> Self Donar Form </title>
<style>
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

input[type=password], select, textarea {
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

input[type=date] {
  width: 40%;
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
  height:1010px; 
  background-image: url('images/self.jpeg');
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
 height:95%;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
  	
	margin: auto;
  border-radius: 5px;
  padding: 20px;
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


.label {
color:white;
}
</style>
</head>
<body>
<div class="topnav">
<div style="margin-left:50px;margin-top:8px;">
<img src="corona.jpeg" style="width: 250px;height :65px;">

	    <a href="contact_us1.jsp" class="active">Contact Us</a>
     <a href="about1.jsp" class="active">About Us</a>
       <a href="Index.jsp" class="active">Home</a>
   </div></div>
   
<div class="container">
<div class="top">
Self Donation Form
</div>
  <form class = "forms" action="add_selfdonor1.jsp" method="post">
    <label for="fname">First Name <font color="red">*</font></label>
    <input type="text" id="fname" name="fname" placeholder="Your name.." pattern="^[A-Za-z]+$" required>

    <label for="lname">Last Name</label>
    <input type="text" id="lname" name="lname" placeholder="Your last name.." pattern="^[A-Za-z]+$">

    <label for="contact">Contact Number: <font color="red">*</font></label>
    <input type="tel" id="contact" name="contact" placeholder="Your contact number.." pattern="^\d{3}\d{3}\d{4}$" required="required">

    <label for="email">E-mail <font color="red">*</font></label>
    <input type="email" id="emailid" name="emailid" placeholder="Your E-mail.." pattern="^[a-zA-Z0-9.!#$%&'+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)$" required> 
    
    
	 <label for="lname">Password <font color="red">*</font></label>
    <input type="password" id="pswd" name="pswd" placeholder="Your Password.." required> 
	
    <label for="location">Address<font color="red">*</font> </label>
    <textarea id="location" name="location" placeholder="enter your complete address.." style="height:100px" required></textarea>
	
	<label for="fname">Item Name<font color="red">*</font> </label>
    <input type="text" id="iname" name="iname" placeholder="Your Item name.." required>

    <label for="lname">Quantity <font color="red">*</font></label>
    <input type="text" id="quan" name="quan" placeholder="Your quantity..." required>

    <label for="lname">Donated_Date <font color="red">*</font></label><br>
     <input type="date" id="dat" name="dat" min="1900-01-02"><br>
	
    <input type="submit" value="Submit">
    <input type="reset" value="clear">
<a href="User_selfdonor.jsp"><input type="button" value="cancel"></a>
<P> If you already have an account. Click Here to <a href="Donor_Login.jsp"> Login..</a></P>

  </form>
</div>

</body>
</html>