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
 ResultSet rs1 = null;

ResultSet resultSet = null;
 String driverName = "com.mysql.jdbc.Driver";
 String url = "jdbc:mysql://localhost:3306/Covid_Donation";
 String user = "sushma";
 String dbpsw = "Sushma@08";

 String itemname=request.getParameter("itemname");
 String quantity=request.getParameter("quantity");
 String donatedby=request.getParameter("donatedby");
 String receivedby=request.getParameter("receivedby");
 String donor_type=request.getParameter("donor_type");
 String received_date=request.getParameter("received_date");
 String  status="Donated";
 String ids="";
 String idr="";
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();

int i=st.executeUpdate("insert into received_items(itemname,quantity,donatedby,receivedby,donor_type,received_date) values('"+itemname+"','"+quantity+"','"+donatedby+"','"+receivedby+"','"+donor_type+"','"+received_date+"')");
String sql ="select * from requested_items where requestedby= "+receivedby;
resultSet = st2.executeQuery(sql);
int k=0;
while(resultSet.next()){
 	idr=resultSet.getString("item_no");
}
int j=st1.executeUpdate(" update requested_items set status='Received' where item_no='"+idr+"'");

String sql1 ="select * from donated_items where donatedby= "+donatedby;
rs1 = st3.executeQuery(sql1);

while(rs1.next()){
 	 ids=rs1.getString("item_no");
}
 k=st1.executeUpdate(" update donated_items set status='Donated' where item_no='"+ids+"'");


if(i>0 && j>0 && k>0)
{

%><script>window.alert("Record Added Successfully");</script>
<%getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
}
else
{
%><script>window.alert("Error in  Adding a Record");</script>
<%getServletContext().getRequestDispatcher("/donation_details.jsp").include(request,response);
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