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
ResultSet resultSet1 = null;
ResultSet resultSet2 = null;
ResultSet resultSet3 = null;
%>
<!DOCTYPE html>
<html>
<title>Donation details</title>
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
#button1{
width: 100px;
height: 40px;
font-size: 16px;
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
<jsp:include page="sidebar.jsp" />  
<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:0px;">

  <div class="w3-container">
    <h5><strong>Donation Details</strong></h5>
    <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
	 <tr>
	  <th> SL.NO</th>
        <th>Item Name</th>
        <th>Quantity</th>
		<th>Donor type</th>
		<th>Date</th>
		<th>Received by</th>
		<th>Donted by</th>
		
      </tr>
     <%
     try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from received_items";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
%>
<tr class="size1">
<td><%=resultSet.getString("item_no") %></td>
<td><%=resultSet.getString("itemname") %></td>
<td><%=resultSet.getString("quantity") %></td>
<td><%=resultSet.getString("donor_type") %></td>
<td><%=resultSet.getString("received_date") %></td>
<%String rec=resultSet.getString("receivedby"); 
String donor=resultSet.getString("donatedby"); 
String type=resultSet.getString("donor_type"); 

connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql1 ="select * from receiver where receiver_id='"+rec+"'";
resultSet1 = statement.executeQuery(sql1);
while(resultSet1.next()){
%>
<td><%=resultSet1.getString("fname") %> <%=resultSet1.getString("lname") %></td>
<%
}
if(type.equals("SelfDonor"))
{
String sql2 ="select * from selfdonor where sdonor_id='"+donor+"'";
resultSet2 = statement.executeQuery(sql2);
while(resultSet2.next()){
%>
<td><%=resultSet2.getString("sfname")%> <%=resultSet2.getString("slname") %></td>
<%
}
}
if(type.equals("CharityDonor"))
{
	String sql3 ="select * from charitydonor where cdonor_id='"+donor+"'";
	resultSet3 = statement.executeQuery(sql3);
	while(resultSet3.next()){
	%>
	<td><%=resultSet3.getString("cname")%></td>
	<%
	}
}
%>
<td><a href="delete_item.jsp?item_no=<%=resultSet.getString("item_no") %>"><button type="button" class="delete"><b>Delete</b></button></a></td>
<td><a href="donated_edit_items.jsp?item_no=<%=resultSet.getString("item_no") %>"><button type="button" class="edit"><b>Edit </b></button>  </a></td>

<%
}
connection.close();
}
    catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
    </table><br>
  </div> 
<div align="right">
	<a href="item_add.jsp" ><button type="button" id="button1"  style="margin-right: 950px" ><b>Add</b></button>  </a>
	</div><br><br>
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