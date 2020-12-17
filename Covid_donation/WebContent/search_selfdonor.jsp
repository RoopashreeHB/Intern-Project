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
<title>Receiver Details</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>
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
         .scrollingTable {
           
            overflow-y: auto;
        }
        h5{
          color: white;
        }        
        input[type=text]{
  width: 45%;
  padding: 9px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 4px;
  margin-bottom: 10px;
  resize: vertical;
}
 input[type=tel], select, textarea {
  width: 35%;
  padding: 9px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 4px;
  margin-bottom: 10px;
  resize: vertical;
}
input[type=submit] {
  background-color: Gray;
  color: white;
  padding: 8px 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  
}

input[type=submit]:hover {
  background-color: #DF664E;
}

</style>
 <script type="text/javascript">
        function makeTableScroll() {
            // Constant retrieved from server-side via JSP
            var maxRows = 10;

            var table = document.getElementById('myTable');
            var wrapper = table.parentNode;
            var rowsInTable = table.rows.length;
            var height = 0;
            if (rowsInTable > maxRows) {
                for (var i = 0; i < maxRows; i++) {
                    height += table.rows[i].clientHeight;
                }
                wrapper.style.height = height + "px";
            }
        }
    </script>
    </head>
    <body class="w3-light-grey" onload="makeTableScroll();">
<%
String name="g";
String searchn=request.getParameter("searchn");
String type=(String)session.getAttribute("ty");
String rek="fail";
%>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();

if(name.equals("g"))
{
	String sql ="select * from selfdonor where sfname  LIKE '%"+searchn+"%' OR sphno  LIKE '%"+searchn+"%' OR slname  LIKE '%"+searchn+"%' OR saddress LIKE '%"+searchn+"%' OR semail LIKE '%"+searchn+"%' ";
	resultSet = statement.executeQuery(sql);
	 rek="true";
}
else 
{
	%><script>window.alert("No Record To Be Found....");</script>
	<%getServletContext().getRequestDispatcher("/donor_info.jsp").include(request,response);
	 rek="false ";
}
if(rek.equals("true") && resultSet.next())
{
%>
<jsp:include page="sidebar.jsp" />  

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:300px;margin-top:80px;">
   
  <div class="w3-container">
     <div class="scrollingTable">
    <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white" id="myTable">
	 <tr>
     	  <th>ID</th>
                <th>Name</th>
                <th>PhoneNumber</th>
                <th>Email</th>
                <th>Address</th>
              <th>Requried Item</th>
                <th>Quantity</th>
                <th>Status</th>
	<th>Operation</th>
	</tr>
<%

while(resultSet.next()){
%>
<tr class="size1">
<%String idd=resultSet.getString("sdonor_id"); %>
<td><%=resultSet.getString("sdonor_id") %></td>
<td><%=resultSet.getString("sfname") %> <%=resultSet.getString("slname") %></td>
<td><%=resultSet.getString("sphno") %></td>
<td><%=resultSet.getString("semail") %></td>
<td><%=resultSet.getString("saddress") %></td>
<%
statement1=connection.createStatement();
String sql1 ="select itemname,quantity,status from donated_items where donatedby='"+idd+"'";
resultSet1 = statement1.executeQuery(sql1);
while(resultSet1.next()){
	%>
<td><%=resultSet1.getString("itemname") %></td>
<td><%=resultSet1.getString("quantity") %></td>
<td><%=resultSet1.getString("status") %></td>
<%} %><td><a href="delete_selfdonor.jsp?id=<%=resultSet.getString("sdonor_id") %>"><button type="button" class="delete"><b>Delete</b></button></a>
	</td><td><a href="self_edit1.jsp?id=<%=resultSet.getString("sdonor_id") %>"><button type="button" class="edit"><b>Edit </b></button>  </a></td>
</tr>
<%
}
}
else
{
	%><script>window.alert("No Record To Be Found....");</script>
	<%getServletContext().getRequestDispatcher("/donor_info.jsp").include(request,response);	
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>

    </table><br>
    </div>
  </div> 
  <div align="right">
	<br><br><a href="donor_info.jsp" ><button type="button" id="button3" style="margin-right: 20px"><b><< Back </b></button>  </a>
	</div>
	
  <br><br>

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