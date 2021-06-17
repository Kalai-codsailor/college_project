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

<title>ilakanam category </title>

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
<h1 style="background-color:LightGray;">List of books available in kadaigal category </h1>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from ilakanam";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>


</div>



 <div class="category-products">
            <ol class="products-list" id="products-list">
          <li class="item first">
            <div class="product-image"> <a href="#" title="book image"> <img class="small-image" src="https://image.shutterstock.com/image-vector/open-book-feather-pen-sketch-260nw-696913621.jpg" alt="HTC Rhyme Sense"> </a> </div>
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
<input type ="hidden" name= "category" value="ilakanam">
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