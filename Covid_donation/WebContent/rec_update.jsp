<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/Covid_Donation";%>
<%!String user = "sushma";%>
<%!String psw = "Sushma@08";%>
<%
String id=request.getParameter("receiver_id");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String phno=request.getParameter("phno");
String email=request.getParameter("email");
String address=request.getParameter("address");
String itemname=request.getParameter("requested_item");
String quantity=request.getParameter("quantity");
String status=request.getParameter("status");
out.println("status");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
PreparedStatement ps1 = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update  receiver set fname='"+fname+"',lname='"+lname+"',phno='"+phno+"',email='"+email+"',address='"+address+"' where  receiver_id="+id;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
String sql1="Update requested_items set itemname='"+itemname+"',quantity='"+quantity+"',status='"+status+"' where requestedby="+id;
ps1 = con.prepareStatement(sql1);
int j = ps1.executeUpdate();
if(i > 0 && j > 0)
{
%>
	<script>
window.alert("Record Updated Successfully");
</script>
<%
getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
}
else
{%>
<script>
window.alert("There is a problem in updating Record.");
</script>
<%
getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);

}
}
%>