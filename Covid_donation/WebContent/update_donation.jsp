<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/Covid_Donation";%>
<%!String user = "sushma";%>
<%!String psw = "Sushma@08";%>
<%
String item_no=request.getParameter("item_no");
String itemname=request.getParameter("itemname");
String quantity=request.getParameter("quantity");
String donatedby=request.getParameter("donatedby");
String receivedby=request.getParameter("receivedby");
String donor_type=request.getParameter("donor_type");
String received_date=request.getParameter("received_date");

if(item_no != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(item_no);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update received_items set itemname='"+itemname+"',quantity='"+quantity+"',donatedby='"+donatedby+"',receivedby='"+receivedby+"',donor_type='"+donor_type+"',received_date='"+received_date+"' where item_no="+item_no;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();
if(i > 0)
{
%>
	<script>
window.alert("Record Updated Successfully");
</script>
<%
getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
}
else
{%>
<script>
window.alert("There is a problem in updating Record.");
</script>
<%
getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>