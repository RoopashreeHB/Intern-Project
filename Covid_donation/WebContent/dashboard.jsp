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
ResultSet resultSet1 = null;
%>
<!DOCTYPE html>
<html>
<title>Dashboard</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
        *{margin: 0;}

        body{
            background: url('Fam.jpg')no-repeat;
            background-size: cover;
            height: 100vh;
            background-position: left;
        }

        .header{
            width: 100%;
            background-color: black;
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

        h4{
          color: white;
        }
</style>
<body class="w3-light-grey">

<!-- Top container -->
<div class="header">
    <p style = "text-align: left; font-weight: bold; font-size : 20px; color : white; padding-top: 10pt; padding-left: 20pt;  font-family: 'Raleway', sans-serif;  letter-spacing: 2px;">COVID-19 Donation</p>
    <ul>
       <!-- <li><a style = "text-align: left; font-weight: bold; font-size : 20px; color : white;" href="#">COVID-19 Donation</a></li>-->
        <li><a href="AdminPage.jsp">Home</a></li>
       <li><a href="AdminPage.jsp">Logout </a></li>
    </ul>
</div>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-collapse w3-white w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
  <div class="w3-container w3-row">
    <div class="w3-col s4">
      <img src="./admin.png" class="w3-circle w3-margin-right" style="width:46px">
    </div>
    <div class="w3-col s8 w3-bar">
      <span>Welcome, <strong>Admin</strong></span><br>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-user"></i></a>
      <a href="#" class="w3-bar-item w3-button"><i class="fa fa-cog"></i></a>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5>Dashboard</h5>
  </div>
  <div class="w3-bar-block">
    <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
    <a href="dashboard.jsp" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-users fa-fw"></i>  Overview</a>
    <a href="donor.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Donor Information</a>
    <a href="receiver.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-users fa-fw"></i>  Receiver Information</a>
    <a href="donation_details.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bullseye fa-fw"></i>  Donated Items</a>
    <a href="items.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-diamond fa-fw"></i> Available Items</a>
  <a href="requested_item.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i>Request Pending Items</a>
     <a href="viewfeedback.jsp" class="w3-bar-item w3-button w3-padding"><i class="fa fa-bell fa-fw"></i>  View Feedback</a>
  </div>
</nav>


<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:20px;">

  <!-- Header -->
  <header class="w3-container" style="padding-top:22px">
    <h4><b><i class="fa fa-dashboard"></i> Admin Dashboard</b></h4>
  </header>

  <div class="w3-row-padding w3-margin-bottom">
    <div class="w3-quarter">
      <div class="w3-container w3-red w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
         
          <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st=connection.createStatement();
String strQuery = "SELECT COUNT(*) FROM selfdonor";
ResultSet rs = st.executeQuery(strQuery);
String Countrow="";
while(rs.next()){
Countrow = rs.getString(1);
}
Statement st1=connection.createStatement();
String strQuery1= "SELECT COUNT(*) FROM charitydonor";
ResultSet rs1 = st1.executeQuery(strQuery1);
String Countrow1="";
while(rs1.next()){
Countrow1 = rs1.getString(1);
}
int n1 = Integer.parseInt(Countrow);
int n2 = Integer.parseInt(Countrow1);

int count=n1+n2;


out.println(count);
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>    

        </div>
        <div class="w3-clear"></div>
        <h4>Donors</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-blue w3-padding-16">
        <div class="w3-left"><i class="fa fa-diamond w3-xxxlarge"></i></div>
        <div class="w3-right">
          <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st2=connection.createStatement();
String strQuery2 = "SELECT COUNT(*) FROM donated_items";
ResultSet rs2 = st2.executeQuery(strQuery2);
String Countrow2="";
while(rs2.next()){
Countrow2 = rs2.getString(1);
}
out.println(Countrow2);
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>  
        </div>
        <div class="w3-clear"></div>
        <h4>Items</h4>
      </div>
    </div>
    <div class="w3-quarter">
      <div class="w3-container w3-orange w3-text-white w3-padding-16">
        <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
        <div class="w3-right">
          <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
Statement st3=connection.createStatement();
String strQuery3 = "SELECT COUNT(*) FROM receiver";
ResultSet rs3 = st3.executeQuery(strQuery3);
String Countrow3="";
while(rs3.next()){
Countrow3 = rs3.getString(1);
}
out.println(Countrow3);
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>  
        </div>
        <div class="w3-clear"></div>
        <h4>Receivers</h4>
      </div>
    </div>
  </div>

  <div class="w3-panel">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third">
        <h5><strong>Regions<strong></h5>
        <img src="./region.jpeg" style="width:100%" alt="Google Regional Map">
      </div>
      <div class="w3-twothird">
        <h5><strong>Feeds<strong></h5>
        <table class="w3-table w3-striped w3-white">
          <tr>
            <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
            <td>New record, over 50 donors.</td>
            <td><i>10 days</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
            <td>Database error.</td>
            <td><i>15 mins</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
            <td>New record, over 40 items.</td>
            <td><i>17 days</i></td>
          </tr>
          <tr>
            <td><i class="fa fa-share-alt w3-text-green w3-large"></i></td>
            <td>New Donations.</td>
            <td><i>2 days</i></td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <hr>
  <div class="w3-container">
    <h5><strong>General Stats</strong></h5>
    <p>New Donors</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-green" style="width:25%">+25%</div>
    </div>

    <p>New Receivers</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-orange" style="width:50%">50%</div>
    </div>

    <p>Bounce Rate</p>
    <div class="w3-grey">
      <div class="w3-container w3-center w3-padding w3-red" style="width:75%">75%</div>
    </div>
  </div>
  <hr>

  <div class="w3-container">
    <h5><strong>Sates</strong></h5>
    <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
      <tr>
        <td>Karnataka</td>
        <td>65%</td>
      </tr>
      <tr>
        <td>UP</td>
        <td>15.7%</td>
      </tr>
      <tr>
        <td>Maharashtra</td>
        <td>5.6%</td>
      </tr>
      <tr>
        <td>MP</td>
        <td>2.1%</td>
      </tr>
      <tr>
        <td>Tamil Nadu</td>
        <td>1.9%</td>
      </tr>
      <tr>
        <td>Delhi</td>
        <td>1.5%</td>
      </tr>
    </table><br>
  </div>
  <hr>
  <hr>
  <br>
  <div class="w3-container w3-dark-grey w3-padding-32">
    <div class="w3-row">
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-green">Demographic</h5>
        <p>State</p>
        <p>City</p>
      </div>
      <div class="w3-container w3-third">
        <h5 class="w3-bottombar w3-border-orange">Target</h5>
        <p>Donors</p>
        <p>Receivers</p>
        <p>Items</p>
      </div>
    </div>
  </div>

  <!-- Footer -->
  <footer class="w3-container w3-padding-16 w3-light-grey">
    <p><a href="/home.html" target="_blank">All Rights Reserved</a></p>
  </footer>

  <!-- End page content -->
</div>

<script>
// Get the Sidebar
var mySidebar = document.getElementById("mySidebar");

// Get the DIV with overlay effect
var overlayBg = document.getElementById("myOverlay");

// Toggle between showing and hiding the sidebar, and add overlay effect
function w3_open() {
  if (mySidebar.style.display === 'block') {
    mySidebar.style.display = 'none';
    overlayBg.style.display = "none";
  } else {
    mySidebar.style.display = 'block';
    overlayBg.style.display = "block";
  }
}

// Close the sidebar with the close button
function w3_close() {
  mySidebar.style.display = "none";
  overlayBg.style.display = "none";
}
</script>

</body>
</html>