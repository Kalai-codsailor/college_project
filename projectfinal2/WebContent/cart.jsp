<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String category =request.getParameter("category");
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
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from "+category+" where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart page </title>
</head>
<body>
<center>
<h1>confrim product  product information before adding to cart </h1>
<form method="post" action="cartprocess.jsp">

book name:<br>
<input type="text" name="name"  value="<%=resultSet.getString("name") %>"  >
<br>
book author:<br>
<input type="text" name="category"  value="<%=resultSet.getString("category") %>" >
<br>
book author:<br>
<input type="text" name="author"  value="<%=resultSet.getString("author") %>" >
<br>
description:<br>
<input type="text" name="description"   value="<%=resultSet.getString("description") %>" >
<br>
rate:<br>
<input type="text" name="rate"   value="<%=resultSet.getString("rate") %>" >
<br><br>
<input type="submit" value="submit">
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</center>
</body>
</html>