<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
try
{
Class.forName("org.h2.Driver");
Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM cart WHERE name='"+name+"'");
out.println("Data Deleted Successfully!");

String redirectURL = "cartpage.jsp";
response.sendRedirect(redirectURL);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>