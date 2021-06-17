<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style>
#center {
  margin: auto;
  width: 60%;
 margin-left:350px;
  margin-top:50px;
  padding: 10px;
}</style>
</head>
<body>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from "+category+" where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<center>

 <div class="category-products" id="center">
            <ol class="products-list" id="products-list" style="border: 3px solid #73AD21;">
          <li class="item first">
            <div class="product-image"> <a href="#" title="book image"> <img class="small-image" src="https://image.shutterstock.com/image-vector/open-book-feather-pen-sketch-260nw-696913621.jpg" alt="HTC Rhyme Sense"> </a> </div>
            <div class="product-shop">
              <h2 class="product-name"><a href="#/htc-rhyme-sense.html" title="HTC Rhyme Sense">  <%=resultSet.getString("name") %>   </a></h2>
              <div class="ratings">
                
                <p class="rating-links">  நூலாசிரியர் <span class="separator">|</span> <%=resultSet.getString("author") %> </p>
              </div>
              <div class="desc std">
                <p> <%=resultSet.getString("description") %> <a class="link-learn" title="" href="#">Learn More</a> </p>
              </div>
              <div class="price-box">
               
                <p class="special-price"> <span class="price-label"></span> <span class="price"> <%=resultSet.getString("rate") %> </span> </p> <p class="old-price"> <span class="price-label"></span> <span class="price"> $442.99 </span> </p>
              </div>
              <div class="actions">
              <script>
function goBack() {
  window.history.back();
}
</script>

<button style="" onclick="goBack()">Go Back</button>

              
                <form method="post" action="cart.jsp">
<input type= "hidden" name="id" value="<%=resultSet.getString("id")%>">
<input type ="hidden" name= "category" value="kadhaigal">
<input class="button btn-cart ajx-cart" type="submit" value="Add to cart ">
</form>



             </div>
          </li>
          </ol>
          </div>
          
          </center>
          <%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>