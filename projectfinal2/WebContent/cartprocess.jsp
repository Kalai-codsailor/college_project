<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*;"%>

<%

String name=request.getParameter("name");
String category =request.getParameter("category");
String author=request.getParameter("author");
String description=request.getParameter("description");
String rate=request.getParameter("rate");


try
{
Class.forName("org.h2.Driver");
Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into cart(category,name,author,description,rate)values('"+category+"','"+name+"','"+author+"','"+description+"','"+rate+"',)");
out.println("Data is successfully inserted!");

String redirectURL = "cartpage.jsp";
response.sendRedirect(redirectURL);


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>