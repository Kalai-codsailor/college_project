<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "org.h2.Driver";%>
<%!String url = "jdbc:h2:tcp://localhost/~/test";%>
<%!String user = "sa";%>
<%!String psw = "";%>
<%
String id = request.getParameter("id");
String category =request.getParameter("category");
String first_name=request.getParameter("name");
String last_name=request.getParameter("author");
String city_name=request.getParameter("description");
String email=request.getParameter("rate");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update "+category+" set id=?,category=?,name=?,author=?,description=?,rate=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
ps.setString(2,category);
ps.setString(3, first_name);
ps.setString(4, last_name);
ps.setString(5, city_name);
ps.setString(6, email);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
String redirectURL = "vendor.jsp";
response.sendRedirect(redirectURL);
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>