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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<!-- CSS Style -->
<link rel="stylesheet" type="text/css" href="css2/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css2/font-awesome.css" media="all">
<link rel="stylesheet" type="text/css" href="css2/simple-line-icons.css" media="all">
<link rel="stylesheet" type="text/css" href="css2/revslider.css" >
<link rel="stylesheet" type="text/css" href="css2/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css2/owl.theme.css">
<link rel="stylesheet" type="text/css" href="css2/jquery.bxslider.css">
<link rel="stylesheet" type="text/css" href="css2/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css" href="css2/style.css" media="all">
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600,600italic,400italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

<title>ariviyal category </title>

</head>
<body>
<nav class="navbar navbar-expand-sm  navbar-dark" style=" height:120px;background-color:#212121;">
  <!-- Brand/logo -->
 
   <a href="index2.jsp"> 
<img src="images/logo.png" alt=""/  width="300" >
  </a>
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#"> கல்வி நூல்கள்  </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> இலக்கண நூல்கள்  </a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#"> அறிவியல் நூல்கள்  </a>
    </li>
     </ul>
     <ul style="margin-left:500px">
     <li  >
      <a class="nav-link" href="index2.jsp"> பிரிவுகள் பக்கம்  </a>
    </li>
     </ul>
</nav>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>


<div   style=" background-image: url('http://dirtbrothers.org/reviews/animatedbookLG.gif');heigjt:100% ">

<center>
<h1 style="background-color:LightGray;">List of books available in ariviyal category </h1>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ariviyal";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


</div>



 <div class="category-products">
            <ol class="products-list" id="products-list">
          <li class="item first">
            <div class="product-image"> <a href="#" title="book image"> <img class="small-image" src="data:image/jpeg;base64,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" alt="HTC Rhyme Sense"> </a> </div>
            <div class="product-shop">
              <h2 class="product-name" style="color:red;"><a href="" title="" style="color:black;"> <b><%=resultSet.getString("name") %> </b>   </a></h2>
              <div class="ratings">
                
                <p class="rating-links">  நூலாசிரியர் <span class="separator">|</span> <%=resultSet.getString("author") %> </p>
              </div>
              <div class="desc std">
                <p> <%=resultSet.getString("description") %> <a class="link-learn" title="" href="#">Learn More</a> </p>
              </div>
              <div class="price-box">
               
                <p class="special-price"> <span class="price-label"></span> <span class="price" style="color:black;"> <%=resultSet.getString("rate") %> </span> </p> <p class="old-price"> <span class="price-label"></span> <span class="price"> $442.99 </span> </p>
              </div>
              <div class="actions">
                <form method="post" action="cart.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="ariviyal">
<input class="button btn-cart ajx-cart" type="submit" value="Add to cart ">
</form>

<form method="post" action="view.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value=<%=resultSet.getString("category") %>>
<input  style="color:blue;" class="button btn-cart ajx-cart" type="submit" value="view product  ">
</form>

             </div>
             <span class="separator">|</span>
              <div class="actions">
               
 
             </div>
          </li>
          </ol>
          </div>
          
          
          <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>