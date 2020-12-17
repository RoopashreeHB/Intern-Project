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
<form action="question.jsp" method="post">
<%
 Connection con= null;
 PreparedStatement ps = null;
 ResultSet rs = null;
 String driverName = "com.mysql.jdbc.Driver";
 String url = "jdbc:mysql://localhost:3306/covid_donation";
 String user = "sushma";
 String dbpsw = "Sushma@08";
 String sql = "select * from selfdonor where sfname=? and spswd=?";
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
userdbName = rs.getString("sfname");
userdbPsw = rs.getString("spswd");
String id = rs.getString("sdonor_id");
String iname = rs.getString("sfname");
String ipswd = rs.getString("spswd");

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
getServletContext().getRequestDispatcher("/track_user_selfdonor.jsp").include(request,response);
} 
}

else
{%>
<script type="text/javascript">
		alert ( "Error in login" );
		</script>  
<%
getServletContext().getRequestDispatcher("/Donor_Login.jsp").include(request,response);
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
getServletContext().getRequestDispatcher("/Donor_Login.jsp").include(request,response);
}
%>
</form>

</body>
</html>