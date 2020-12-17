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
<title>Feedback</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
        *{margin: 0;}

        body{
            background: url('images/covid19.jpg')no-repeat;
            background-size: cover;
         
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

<body>

<!-- !PAGE CONTENT! -->
 <h2 style = "text-align: center; font-weight: bold; font-size : 50px; color :  #DE3163 ;font-family: 'Algerian', sans-serif; letter-spacing: 2px;" > View User Experience </h200000>
   <br>
     <center>
<%
int i=1;
try{
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);
	statement=connection.createStatement();
	String sql ="select * from feedback";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next() && i<=6){
	%>	
 <h3 style = "text-align: center; font-weight: bold; font-size : 25px; color :  black ;font-family: 'Railway', sans-serif; letter-spacing: 2px;"><%=resultSet.getString("name") %></h3>
 <h3 style = "text-align: center; font-weight: bold; font-size : 15px; color :  black ;font-family: 'Railway', sans-serif; letter-spacing: 2px;">
 <%=resultSet.getString("comments") %><br>
 Experience: <%=resultSet.getString("rating") %><br><br>
  </h3>
<%
i++;
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%></center>
  </div> 
</div>
</div>
</center>
</body>
</html>

