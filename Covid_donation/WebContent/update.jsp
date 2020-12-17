<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/Covid_Donation";%>
<%!String user = "sushma";%>
<%!String psw = "Sushma@08";%>
<%
String id=request.getParameter("sdonor_id");
String fname=request.getParameter("sfname");
String lname=request.getParameter("slname");
String phno=request.getParameter("sphno");
String email=request.getParameter("semail");
String address=request.getParameter("saddress");
String itemname=request.getParameter("sdonated_item");
String quantity=request.getParameter("squantity");
String status=request.getParameter("sstatus");

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
String sql="Update selfdonor set sfname='"+fname+"',slname='"+lname+"',sphno='"+phno+"',semail='"+email+"',saddress='"+address+"' where sdonor_id="+id;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
String sql1="Update donated_items set itemname='"+itemname+"',quantity='"+quantity+"',status='"+status+"' where donatedby="+id;
ps1 = con.prepareStatement(sql1);
int j = ps1.executeUpdate();
if(i > 0 && j > 0)
{
%>
	<script>
window.alert("Record Updated Successfully");
</script>
<%
getServletContext().getRequestDispatcher("/donor_info.jsp").include(request,response);
}
else
{%>
<script>
window.alert("There is a problem in updating Record.");
</script>
<%
getServletContext().getRequestDispatcher("/donor_info.jsp").include(request,response);
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>