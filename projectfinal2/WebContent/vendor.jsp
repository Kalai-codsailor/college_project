<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "org.h2.Driver";
String connectionUrl = "jdbc:h2:tcp://localhost/~/";
String database = "test";
String userid = "sa";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>vendor page </title>
</head>
<style>
#container{width:100%;}
#left{float:left;width:200px;height:500px;}
#right{float:right;width:950px;height:500px;}
</style>
<body>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


<!--Navigation bar-->
<div id="nav-placeholder">

</div>

<script>
$(function(){
  $("#nav-placeholder").load("topbar.html");
});
</script>
<!--end of Navigation bar-->

<div id="container">
  <div id="left" style=" background-color: black"> 
  <center>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $(".ila").click(function(){
    $(".ilakiyam").toggle();
  });
});
</script>
<script>
$(document).ready(function(){
  $(".samooga").click(function(){
    $(".samo").toggle();
  });
});
</script>
<script>
$(document).ready(function(){
  $(".ariviyal").click(function(){
    $(".arivi").toggle();
  });
});
</script>
<script>
$(document).ready(function(){
  $(".varalaru").click(function(){
    $(".vara").toggle();
  });
});
</script>
<script>
$(document).ready(function(){
  $(".seithigal").click(function(){
    $(".seithi").toggle();
  });
});
</script>
<script>
$(document).ready(function(){
  $(".ilakiyam").click(function(){
    $(".ilaki").toggle();
  });
});
</script>
<script>
$(document).ready(function(){
  $(".kalvi").click(function(){
    $(".kal").toggle();
  });
});
</script>
<button class="ila" style=" background-color: red;color:white">ilakiyam</button> <br>  <br> 
<button class="samooga"   style=" background-color: red;color:white">samooga ariviyal</button><br>  <br> 
<button class="ariviyal"  style=" background-color: red;color:white">ariviyal noolgal</button><br>     <br> 
<button class="varalaru"  style=" background-color: red;color:white">varalaaru </button><br>    <br>  
<button class="seithigal"  style=" background-color: red;color:white">seithigal</button><br>    <br> 
<button class="ilakiyam"  style=" background-color: red;color:white">ilakana noolgal</button>   <br> <br> 
<button class="kalvi"   style=" background-color: red;color:white">kalvi noolgal</button>    <br> <br> 
<button    style=" background-color: red;color:white">kadhai noolgal </button>  <br>
</center>
  </div>
  <div id="right" style=" background-image: url('https://i.pinimg.com/originals/e1/59/25/e15925c931a81678a3c2e0c0a40db781.gif')"> 
  <h3> Vendor abilities view , add , edit and delete  </h3>
  
  <div class="ilakiyam" style="display:none">
  
<h1> <span style="background-color:white">kadaigal category </span></h1>
<table border="1" style="background-color:white;width:900px;">
<tr>
<td> name</td>
<td>author  name</td>
<td>description  </td>
<td>rate </td>
<td> update </td>
<td> delete </td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from kadhaigal";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("rate") %></td>

<td><form method="post" action="update.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="kadhaigal">
<input type="submit" value="update">
</form></td>

<td></a> 
<form method="post" action="delete.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="kadhaigal">
<input type="submit" value="delete">
</form></td>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<tr>
<script>
$(document).ready(function(){
  $(".addpro1").click(function(){
    $(".addp1").toggle();
  });
});
</script>
<td> <button class="addpro1">ADD PRODUCT</button></td>
</tr> 
</table>
<div class="addp1" style="display:none;background-color:white">
<h2>Add an ilakiyam book</h2>
<form method="post" action="addproduct.jsp">
number<br>
<input type="text" name="number">
<br>
category:<br>
<input type="text" name="category" value="kadhaigal">
<br>
book name:<br>
<input type="text" name="bname">
<br>
book author:<br>
<input type="text" name="bauthor">
<br>
discription:<br>
<input type="text" name="bdescription">
<br>
rate:<br>
<input type="text" name="brate">
<br>
product id:<br>
<input type="text" name="pid">
<br><br>
<input type="submit" value="submit">
</form>
</div>

  </div>
    <div class="samo" style="display:none">
  
<h1> <span style="background-color:white">samooga ariviyal </span></h1>
<table border="1" style="background-color:white;width:900px;">
<tr>
<td> name</td>
<td>author  name</td>
<td>description  </td>
<td>rate </td>
<td> update </td>
<td> delete </td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from samoogaariviyal";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("rate") %></td><td><form method="post" action="update.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="samoogaariviyal">
<input type="submit" value="update">
</form></td>

<td></a> 
<form method="post" action="delete.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="samoogaariviyal">
<input type="submit" value="delete">
</form></td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<tr>
<script>
$(document).ready(function(){
  $(".addpro1").click(function(){
    $(".addp1").toggle();
  });
});
</script>
<td> <button class="addpro1">ADD PRODUCT</button></td>
</tr> 
</table>
<div class="addp1" style="display:none;background-color:white">
<h2>Add an samooga ariviyal book</h2>
<form method="post" action="addproduct.jsp">
number<br>
<input type="text" name="number">
<br>
category:<br>
<input type="text" name="category" value="samoogaariviyal">
<br>
book name:<br>
<input type="text" name="bname">
<br>
book author:<br>
<input type="text" name="bauthor">
<br>
discription:<br>
<input type="text" name="bdescription">
<br>
rate:<br>
<input type="text" name="brate">
<br>
product id:<br>
<input type="text" name="pid">
<br><br>
<input type="submit" value="submit">
</form>
</div>

  </div>
    <div class="arivi" style="display:none">
  
<h1> <span style="background-color:white">ariviyal </span></h1>
<table border="1" style="background-color:white;width:900px;">
<tr>
<td> name</td>
<td>author  name</td>
<td>description  </td>
<td>rate </td>
<td> update </td>
<td> delete </td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ariviyal";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("rate") %></td>

<td><form method="post" action="update.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="ariviyal">
<input type="submit" value="update">
</form></td>

<td></a> 
<form method="post" action="delete.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="ariviyal">
<input type="submit" value="delete">
</form></td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<tr>
<script>
$(document).ready(function(){
  $(".addpro1").click(function(){
    $(".addp1").toggle();
  });
});
</script>
<td> <button class="addpro1">ADD PRODUCT</button></td>
</tr> 
</table>
<div class="addp1" style="display:none;background-color:white">
<h2>Add an ariviyal book</h2>
<form method="post" action="addproduct.jsp">
number<br>
<input type="text" name="number">
<br>
category:<br>
<input type="text" name="category" value="ariviyal">
<br>
book name:<br>
<input type="text" name="bname">
<br>
book author:<br>
<input type="text" name="bauthor">
<br>
discription:<br>
<input type="text" name="bdescription">
<br>
rate:<br>
<input type="text" name="brate">
<br>
product id:<br>
<input type="text" name="pid">
<br><br>
<input type="submit" value="submit">
</form>
</div>

  </div>
    <div class="vara" style="display:none">
  
<h1> <span style="background-color:white"> varalaaru  </span></h1>
<table border="1" style="background-color:white;width:900px;">
<tr>
<td> name</td>
<td>author  name</td>
<td>description  </td>
<td>rate </td>
<td> update </td>
<td> delete </td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from varalaaru";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("rate") %></td>

<td><form method="post" action="update.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="varalaaru">
<input type="submit" value="update">
</form></td>

<td></a> 
<form method="post" action="delete.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="varalaaru">
<input type="submit" value="delete">
</form></td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<tr>
<script>
$(document).ready(function(){
  $(".addpro1").click(function(){
    $(".addp1").toggle();
  });
});
</script>
<td> <button class="addpro1">ADD PRODUCT</button></td>
</tr> 
</table>
<div class="addp1" style="display:none;background-color:white">
<h2>Add an varalaaru book</h2>
<form method="post" action="addproduct.jsp">
number<br>
<input type="text" name="number">
<br>
category:<br>
<input type="text" name="category" value="varalaaru">
<br>
book name:<br>
<input type="text" name="bname">
<br>
book author:<br>
<input type="text" name="bauthor">
<br>
discription:<br>
<input type="text" name="bdescription">
<br>
rate:<br>
<input type="text" name="brate">
<br>
product id:<br>
<input type="text" name="pid">
<br><br>
<input type="submit" value="submit">
</form>
</div>

  </div>
    <div class="seithi" style="display:none">
  
<h1> <span style="background-color:white"> seithigal </span></h1>
<table border="1" style="background-color:white;width:900px;">
<tr>
<td> name</td>
<td>author  name</td>
<td>description  </td>
<td>rate </td>
<td> update </td>
<td> delete </td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from seithigal";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("rate") %></td>

<td><form method="post" action="update.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="seithigal">
<input type="submit" value="update">
</form></td>

<td></a> 
<form method="post" action="delete.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="seithigal">
<input type="submit" value="delete">
</form></td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<tr>
<script>
$(document).ready(function(){
  $(".addpro1").click(function(){
    $(".addp1").toggle();
  });
});
</script>
<td> <button class="addpro1">ADD PRODUCT</button></td>
</tr> 
</table>
<div class="addp1" style="display:none;background-color:white">
<h2>Add an seithigal book</h2>
<form method="post" action="addproduct.jsp">
number<br>
<input type="text" name="number">
<br>
category:<br>
<input type="text" name="category" value="seithigal">
<br>
book name:<br>
<input type="text" name="bname">
<br>
book author:<br>
<input type="text" name="bauthor">
<br>
discription:<br>
<input type="text" name="bdescription">
<br>
rate:<br>
<input type="text" name="brate">
<br>
product id:<br>
<input type="text" name="pid">
<br><br>
<input type="submit" value="submit">
</form>
</div>

  </div>
    <div class="ilaki" style="display:none">
  
<h1> <span style="background-color:white">ilakanam  </span></h1>
<table border="1" style="background-color:white;width:900px;">
<tr>
<td> name</td>
<td>author  name</td>
<td>description  </td>
<td>rate </td>
<td> update </td>
<td> delete </td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ilakanam";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("rate") %></td>

<td><form method="post" action="update.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="ilakanam">
<input type="submit" value="update">
</form></td>

<td></a> 
<form method="post" action="delete.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="ilakanam">
<input type="submit" value="delete">
</form></td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<tr>
<script>
$(document).ready(function(){
  $(".addpro1").click(function(){
    $(".addp1").toggle();
  });
});
</script>
<td> <button class="addpro1">ADD PRODUCT</button></td>
</tr> 
</table>
<div class="addp1" style="display:none;background-color:white">
<h2>Add an ilakanam book</h2>
<form method="post" action="addproduct.jsp">
number<br>
<input type="text" name="number">
<br>
category:<br>
<input type="text" name="category" value="ilakanam">
<br>
book name:<br>
<input type="text" name="bname">
<br>
book author:<br>
<input type="text" name="bauthor">
<br>
discription:<br>
<input type="text" name="bdescription">
<br>
rate:<br>
<input type="text" name="brate">
<br>
product id:<br>
<input type="text" name="pid">
<br><br>
<input type="submit" value="submit">
</form>
</div>

  </div>
    <div class="kal" style="display:none">
  
<h1> <span style="background-color:white">kalvi </span></h1>
<table border="1" style="background-color:white;width:900px;">
<tr>
<td> name</td>
<td>author  name</td>
<td>description  </td>
<td>rate </td>
<td> update </td>
<td> delete </td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from kalvi";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("author") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("rate") %></td>

<td><form method="post" action="update.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="kalvi">
<input type="submit" value="update">
</form></td>

<td></a> 
<form method="post" action="delete.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="kalvi">
<input type="submit" value="delete">
</form></td>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</tr>
<tr>
<script>
$(document).ready(function(){
  $(".addpro1").click(function(){
    $(".addp1").toggle();
  });
});
</script>
<td> <button class="addpro1">ADD PRODUCT</button></td>
</tr> 
</table>
<div class="addp1" style="display:none;background-color:white">
<h2>Add an kalvi book</h2>
<form method="post" action="addproduct.jsp">
number<br>
<input type="text" name="number">
<br>
category:<br>
<input type="text" name="category" value="kalvi">
<br>
book name:<br>
<input type="text" name="bname">
<br>
book author:<br>
<input type="text" name="bauthor">
<br>
discription:<br>
<input type="text" name="bdescription">
<br>
rate:<br>
<input type="text" name="brate">
<br>
product id:<br>
<input type="text" name="pid">
<br><br>
<input type="submit" value="submit">
</form>
</div>

  </div>
  </div>
  
</div>
</body>
</html>