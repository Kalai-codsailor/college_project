<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String number=request.getParameter("number");
String category=request.getParameter("category");
String bname=request.getParameter("bname");
String bauthor=request.getParameter("bauthor");
String bdescription=request.getParameter("bdescription");
String brate=request.getParameter("brate");
String pid=request.getParameter("pid");

try
{
Class.forName("org.h2.Driver");
Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into "+category+"(id,category,name,author,description,rate,pid)values('"+number+"','"+category+"','"+bname+"','"+bauthor+"','"+bdescription+"','"+brate+"','"+pid+"')");
out.println("Data is successfully inserted!");

String redirectURL = "vendor.jsp";
response.sendRedirect(redirectURL);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
out.println("problem occured");
}
%>