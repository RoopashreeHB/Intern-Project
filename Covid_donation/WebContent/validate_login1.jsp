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
String uname = request.getParameter("uname");
String password = request.getParameter("password");
String type= request.getParameter("type");

if(type.equals("SelfDonor"))
{
String sql = "select * from selfdonor where sfname=? and spswd=?";
if((!(uname.equals(null) || uname.equals("")) && !(password.equals(null) || password.equals(""))))
{	
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, uname);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("sfname");
userdbPsw = rs.getString("spswd");
if(uname.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
session.setAttribute("type",type);
%>
<script>window.alert("welcome"); </script>

<%
getServletContext().getRequestDispatcher("/#").include(request,response);
} 
}

else
{%>
<script>window.alert("error"); </script>
<%
getServletContext().getRequestDispatcher("/#").include(request,response);
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
getServletContext().getRequestDispatcher("/login.jsp").include(request,response);
}
}
%>

<%if(type.equals("Receiver"))
{
String sql = "select * from receiver where fname=? and pswd=?";
if((!(uname.equals(null) || uname.equals("")) && !(password.equals(null) || password.equals(""))))
{	
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, uname);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("fname");
userdbPsw = rs.getString("pswd");
if(uname.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
session.setAttribute("type",type);
%>
<script>window.alert("welcome"); </script>

<%
getServletContext().getRequestDispatcher("/#").include(request,response);
} 
}

else
{%>
<script>window.alert("error"); </script>
<%
getServletContext().getRequestDispatcher("/#").include(request,response);
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
getServletContext().getRequestDispatcher("/#").include(request,response);
}
}
%>


<%if(type.equals("CharityDonor"))
{
String sql = "select * from charitydonor where cname=? and cpswd=?";
if((!(uname.equals(null) || uname.equals("")) && !(password.equals(null) || password.equals(""))))
{	
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, uname);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("cname");
userdbPsw = rs.getString("cpswd");
if(uname.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
session.setAttribute("type",type);
%>
<script>window.alert("welcome"); </script>

<%
getServletContext().getRequestDispatcher("/#").include(request,response);
} 
}

else
{%>
<script>window.alert("error"); </script>
<%
getServletContext().getRequestDispatcher("/#").include(request,response);
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
getServletContext().getRequestDispatcher("/#").include(request,response);
}
}
%>

</body>
</html>