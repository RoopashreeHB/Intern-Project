<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
if(id != null)
{
	Connection con = null;
	Connection con1 = null;
	PreparedStatement ps1 = null;
	PreparedStatement ps2 = null;
	int personID = Integer.parseInt(id);
	try
	{
		String driverName="com.mysql.jdbc.Driver";
		Class.forName(driverName);
		con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid_Donation", "sushma", "Sushma@08");
		String sql1="DELETE FROM received_items WHERE receivedby="+id;
		ps1 = con1.prepareStatement(sql1);
		int i = ps1.executeUpdate();
		if(i > 0)
		{
			try
			{
				Class.forName(driverName);
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid_Donation", "sushma", "Sushma@08");
				String sql2="DELETE FROM requested_items WHERE requestedby="+id;
				ps2 = con.prepareStatement(sql2);
				int j = ps2.executeUpdate();
				if(j > 0)
				{
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid_Donation", "sushma", "Sushma@08");
						Statement st=conn.createStatement();
						int k=st.executeUpdate("DELETE FROM receiver WHERE receiver_id="+id);
						 if(k>0)
						 {
							 %> <script>window.alert("Record deleted Successfully....");</script>
			 				<%getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
						 }
						else{
							 %> <script>window.alert("Id NOT found");</script>
							 <%getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
						      }	 
					}
					catch(Exception e)
					{
						System.out.print(e);
						e.printStackTrace();
					}
				}
				else
				{%>
					<script>window.alert("Id Not found.");</script>
					<%getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
				}	
			}
			catch(SQLException sql)
			{
				request.setAttribute("error", sql);
				out.println(sql);
			}
		}
		else
		{
			try
			{
				Class.forName(driverName);
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid_Donation", "sushma", "Sushma@08");
				String sql2="DELETE FROM requested_items WHERE requestedby="+id;
				ps2 = con.prepareStatement(sql2);
				int j = ps2.executeUpdate();
				if(j > 0)
				{
					try
					{
						Class.forName("com.mysql.jdbc.Driver");
						Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Covid_Donation", "sushma", "Sushma@08");
						Statement st=conn.createStatement();
						int k=st.executeUpdate("DELETE FROM receiver WHERE receiver_id="+id);
						 if(k>0)
						 {
							 %> <script>window.alert("Record deleted Successfully....");</script>
			 				<%getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
						 }
						else{
							 %> <script>window.alert("Id NOT found");</script>
							 <%getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
						      }	 
					}
					catch(Exception e)
					{
						System.out.print(e);
						e.printStackTrace();
					}
				}
				else
				{%>
					<script>window.alert("Id Not found.");</script>
					<%getServletContext().getRequestDispatcher("/receiver.jsp").include(request,response);
				}	
			}
			catch(SQLException sql)
			{
				request.setAttribute("error", sql);
				out.println(sql);
			}
	}
			
	}
	catch(SQLException sql)
	{
		request.setAttribute("error", sql);
		out.println(sql);
	}
}
%>				