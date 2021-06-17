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
<h1 style="background-color:LightGray;">List of books available in ilakanam category </h1>


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
            <div class="product-image"> <a href="#" title="book image"> <img class="small-image" src="data:image/jpeg;base64,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.jpg" alt="HTC Rhyme Sense"> </a> </div>
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