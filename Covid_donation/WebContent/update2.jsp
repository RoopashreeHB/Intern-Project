<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/Covid_Donation";%>
<%!String user = "sushma";%>
<%!String psw = "Sushma@08";%>
<%
String id=request.getParameter("cdonor_id");
String name=request.getParameter("cname");
String phno=request.getParameter("cphno");
String email=request.getParameter("cemail");
String address=request.getParameter("caddress");
String itemname=request.getParameter("cdonated_item");
String quantity=request.getParameter("cquantity");
String status=request.getParameter("cstatus");

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
String sql="Update charitydonor set cname='"+name+"',cphno='"+phno+"',cemail='"+email+"',caddress='"+address+"' where cdonor_id="+id;
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
getServletContext().getRequestDispatcher("/donor_info1.jsp").include(request,response);

}
else
{%>
<script>
window.alert("There is a problem in updating Record.");
</script>
<% 
getServletContext().getRequestDispatcher("/donor_info1.jsp").include(request,response);
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>