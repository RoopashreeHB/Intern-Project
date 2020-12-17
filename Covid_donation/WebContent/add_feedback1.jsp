<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
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

ResultSet resultSet = null;
 String driverName = "com.mysql.jdbc.Driver";
 String url = "jdbc:mysql://localhost:3306/Covid_Donation";
 String user = "sushma";
 String dbpsw = "Sushma@08";

 String name=request.getParameter("name");
 String email=request.getParameter("email");
 String comments=request.getParameter("comments");
 String rating=request.getParameter("rating");
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
int i=st.executeUpdate("insert into feedback(name,email,rating,comments) values('"+name+"','"+email+"','"+rating+"','"+comments+"')");
if(i>0)
{

%><script>window.alert("Record Added Successfully");</script>
<%getServletContext().getRequestDispatcher("/Index.jsp").include(request,response);
}
else
{
%><script>window.alert("Error in  Adding a Record");</script>
<%getServletContext().getRequestDispatcher("/Index.jsp").include(request,response);
}
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</form>
</body>
</html>