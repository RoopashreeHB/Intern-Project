<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;
String userdbid;
String dbUsertype;
%>
<%
 Connection con= null;
 PreparedStatement ps = null;
 ResultSet rs = null;
String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/Covid_Donation";
String user = "sushma";
String dbpsw = "Sushma@08";

String id=(String)session.getAttribute("id");
String iname=(String)session.getAttribute("name");
String password=(String)session.getAttribute("pswd");

session.setAttribute("id",id);
session.setAttribute("name",iname);

 
out.println(iname);
out.println(password);
out.println(id);
%>
</body>
</html>