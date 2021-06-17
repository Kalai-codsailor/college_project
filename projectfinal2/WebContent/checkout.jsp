<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkout page </title>

</head>
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
<CENTER>
<h1 >CHECKOUT PAGE </h1>
<form class="checkout">
    <div class="checkout-header">
      <h1 class="checkout-title">
        Checkout
        <span class="checkout-price">$10</span>
      </h1>
    </div>
    <p>
      <input type="text" class="checkout-input checkout-name" placeholder="Your name">
      <input type="text" class="checkout-input checkout-exp" placeholder="MM">
      <input type="text" class="checkout-input checkout-exp" placeholder="YY">
    </p>
    <p>
      <input type="text" class="checkout-input checkout-card" placeholder="4111 1111 1111 1111">
      <input type="text" class="checkout-input checkout-cvc" placeholder="CVC">
    </p>
    <p>
      <input type="submit" value="Purchase" class="checkout-btn">
    </p>
  </form>

</CENTER>


</body>
</html>