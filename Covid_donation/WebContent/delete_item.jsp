<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/Covid_Donation";%>
<%!String user = "sushma";%>
<%!String psw = "Sushma@08";%>
<%
String id=null;
id=request.getParameter("item_no");

if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
ResultSet resultSet = null;

ResultSet resultSet1 = null;
PreparedStatement ps1 = null;
String idr="";
String idr2="";
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();


String sql2="select * from received_items where item_no="+id;
resultSet1 = st3.executeQuery(sql2);
while(resultSet1.next()){
	idr2=resultSet1.getString("receivedby");
}
int r=st1.executeUpdate(" update requested_items set status='Pending' where requestedby='"+idr2+"'");

String sql4 ="select * from received_items where item_no="+id;
resultSet = st2.executeQuery(sql4);
while(resultSet.next()){
 	idr=resultSet.getString("donatedby");
}
int j=st1.executeUpdate(" update donated_items set status='Pending' where donatedby='"+idr+"'");


String sql="Delete from received_items where item_no="+id;
ps = con.prepareStatement(sql);
int i = ps.executeUpdate();

if(i > 0 )
{
%>
	<script>window.alert("Record Deleted Successfully");</script>
<%
getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
}
else
{%>
<script>window.alert("Id not found Record.");</script>
<% 
getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
}
}
else
{%>
<script>window.alert("Id NOT found");</script>
<%
getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);

}
%>