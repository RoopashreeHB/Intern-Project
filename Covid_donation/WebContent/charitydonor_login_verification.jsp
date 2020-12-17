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
 String url = "jdbc:mysql://localhost:3306/covid_donation";
 String user = "sushma";
 String dbpsw = "Sushma@08";
 String sql = "select * from charitydonor where cname=? and cpswd=?";
 String name = request.getParameter("uname");
 String password = request.getParameter("password");


if((!(name.equals(null) || name.equals("")) && !(password.equals(null) || password.equals(""))))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setString(1, name);
ps.setString(2, password);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getString("cname");
userdbPsw = rs.getString("cpswd");
String id = rs.getString("cdonor_id");
String iname = rs.getString("cname");
String ipswd = rs.getString("cpswd");

if(name.equals(userdbName) && password.equals(userdbPsw))
{
session.setAttribute("name",userdbName);
session.setAttribute("id",id);
session.setAttribute("name",iname);
session.setAttribute("pswd",ipswd);

%>
<script type="text/javascript">
		alert ( "Welcome User" );
		</script>
<%
getServletContext().getRequestDispatcher("/track_user_charitydonor.jsp").include(request,response);
} 
}

else
{%>
<script type="text/javascript">
		alert ( "Error in login" );
		</script>  
<%
getServletContext().getRequestDispatcher("/Cdonor_Login.jsp").include(request,response);
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
getServletContext().getRequestDispatcher("/Cdonor_Login.jsp").include(request,response);
}
%>


</body>
</html>