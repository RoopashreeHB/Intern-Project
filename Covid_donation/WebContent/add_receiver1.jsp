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
 
 String fname = request.getParameter("fname");
 String lname = request.getParameter("lname");
 String contact = request.getParameter("contact");
 String emailid = request.getParameter("emailid");
 String location = request.getParameter("location");
 String pswd = request.getParameter("pswd");
 String iname = request.getParameter("iname");
 String quan = request.getParameter("quan");
 String dat = request.getParameter("dat");
 String rec="";
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
int i=st.executeUpdate("insert into receiver(fname,lname,phno,email,address,pswd)values('"+fname+"','"+lname+"','"+contact+"','"+emailid+"','"+location+"','"+pswd+"')");
String sql ="select * from receiver";
resultSet = st2.executeQuery(sql);
int k=0;
while(resultSet.next()){
 	rec=resultSet.getString("receiver_id");
}
int j=st1.executeUpdate("insert into requested_items(itemname,quantity, requestedby, requested_date)values('"+iname+"','"+quan+"','"+rec+"','"+dat+"')");
if(i>0 && j>0)
{

%><script>window.alert("Record Added Successfully");</script>
<%getServletContext().getRequestDispatcher("/receiver1.jsp").include(request,response);
}
else
{
%><script>window.alert("Error in  Adding a Record");</script>
<%getServletContext().getRequestDispatcher("/receiver1.jsp").include(request,response);
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