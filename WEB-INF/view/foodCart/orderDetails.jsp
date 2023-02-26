<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,org.FoodDelivery.Model.*"%>


<!DOCTYPE html>
<html lang="en"><!-- Basic -->
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
     <!-- Site Metas -->
    <title>Live Dinner Restaurant - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="../../images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="../../images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../../css/bootstrap.min.css">    
	<!-- Site CSS -->
    <link rel="stylesheet" href="../../css/style.css">    
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="../../css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="../../css/custom.css">

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="index.html">
					<img src="../../images/logo.png" alt="" />
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="http://localhost:5000">Home</a></li>
						<!-- <li class="nav-item"><a class="nav-link" href="menu.html">Menu</a></li> -->
						<li class="nav-item"><a class="nav-link" href="about.html">About</a></li>
						
						
						
						<li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->
	

	<div class="container" style="margin-top: 0px;margin-bottom: 200px;padding: 130px;height: 300px;">
        <table class="table table-striped table-inverse table-responsive">
          <thead class="thead-inverse">
            <tr>
              <th>Item Name</th>
              <th>Item Cost</th>
              <th>Quantity</th>
              <th>Total</th>
              <th></th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <%
            FoodCart cart=(FoodCart)request.getAttribute("cart");
            OrderDetails detailsNew=(OrderDetails)request.getAttribute("orderDetails");
              List<Item> items = (List<Item>) request.getAttribute("items");
              for(Item item : items){
                out.println("<tr>");
                out.println("<td scope=\"row\">"+item.getItemName()+"</td>");
                out.println("<td scope=\"row\">"+item.getCost()+"</td>");
                out.println("<td scope=\"row\">"+item.getQuantity()+"</td>");
              }
              out.println("<td scope=\"row\">"+detailsNew.getTotalAmount()+"</td>");
              out.println("</tr>");
            %>  
          </tbody>
        </table>
      </div>
    
	

    
 
    <%  
    OrderDetails details=(OrderDetails)request.getAttribute("orderDetails");
      out.println("<p><a class=\"btn btn-lg btn-circle btn-outline-new-white\" href=\"http://localhost:5002/foodCart/orderPlaced?orderId=" +details.getOrderId()+ "\">Place Order</a></p>");
		%>

	
	<a href="#" id="back-to-top" title="Back to top" style="display: none;"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>

	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
</body>
</html>