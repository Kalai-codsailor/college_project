<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String number=request.getParameter("number");
String uname=request.getParameter("uname");
String password=request.getParameter("password");
String email=request.getParameter("email");
String phone=request.getParameter("phone");


try
{
Class.forName("org.h2.Driver");
Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into login (name,password,email,phone)values('"+uname+"','"+password+"','"+email+"','"+phone+"')");



out.println("Data is successfully inserted!");

String redirectURL = "customerlogin.jsp";
response.sendRedirect(redirectURL);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
out.println("problem occured");
}
%>