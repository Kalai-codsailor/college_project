<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
String category =request.getParameter("category");
try
{
Class.forName("org.h2.Driver");
Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM "+category+" WHERE id="+id);
out.println("Data Deleted Successfully!");
String redirectURL = "vendor.jsp";
response.sendRedirect(redirectURL);
}
catch(Exception e)
{
	out.println("torch light");
System.out.print(e);
e.printStackTrace();
}
%>