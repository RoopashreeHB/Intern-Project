<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<%! String userdbName;
String userdbPsw;
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
String sql = "select * from charitydonor where cemail=? and cpswd=?";
String email = request.getParameter("email");
String password = request.getParameter("pswd");

if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, email);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("cemail");
userdbPsw = rs.getString("cpswd");
if(email.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);%>
<script>window.alert("welcome"); </script>

<%
getServletContext().getRequestDispatcher("/Home.jsp").include(request,response);
} 
}

else
{%>
<script>window.alert("error"); </script>
<%
getServletContext().getRequestDispatcher("/Home.jsp").include(request,response);
}
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<p style="color:red align:center">Error In Login</p>
<% 
getServletContext().getRequestDispatcher("/Home.jsp").include(request,response);
}
%>
</body>
</html>