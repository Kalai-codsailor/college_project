<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>index page </title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<!--<script src="js/jquery.easydropdown.js"></script>-->
<!--start slider -->
<link rel="stylesheet" href="css/fwslider.css" media="all">
<script src="js/jquery-ui.min.js"></script>
<script src="js/fwslider.js"></script>
<!--end slider -->
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
  <style>
  .right{
  text-align: right;
  }
  </style>
  
</head>
<body>
	<div class="header">
		<div class="container">
			<div class="row">
			  <div class="col-md-12">
				 <div class="header-left">
					 <div class="logo">
						<a href="index.html"><img src="images/logo.png" alt=""/></a>
					 </div>
					 <div class="menu">
						  <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
						    <ul class="nav" id="nav">
						    	
						    	<li><a href="team.html">கதை புத்தகங்கள் </a></li>
						    	<li><a href="experiance.html">செய்திகள்</a></li>
						    	<li><a href="cartpage.jsp">எனது சேமிப்புகள்  </a></li>
						    	
							
							</ul>
							
							<script type="text/javascript" src="js/responsive-nav.js"></script>
				    </div>							
	    		    <div class="clear"></div>
	    	    </div>
	           
	       <div class="header_right">
	    		  <!-- start search-->
				    
				    <div ><a href="index.html"><i class="fa fa-sign-out"></i>  வெளியேறு      ....</a></div> 
		             
		     <span style="color:white"> <i class="fa fa-user-circle-o"></i> <%   
  
String name=(String)session.getAttribute("uname");  
		     
out.print("  நல்வரவு  "+name);  

  
%>  </span> 


	       </div>
	      </div>
		 </div>
	    </div>
	</div>
	<div class="banner">
	<!-- start slider -->
       <div id="fwslider">
         <div class="slider_container">
            <div class="slide"> 
                <!-- Slide image -->
               <img src="images/Screenshot (831).png" class="img-responsive" alt=""/>
                <!-- /Slide image -->
                <!-- Texts container -->
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <!-- Text title -->
                        <h1 class="title">யாழி புத்தக  <br>வலைத்தளம்  </h1>
                        <!-- /Text title -->
                        
                    </div>
                </div>
               <!-- /Texts container -->
            </div>
            <!-- /Duplicate to create more slides -->
            <div class="slide">
               <img src="images/Screenshot (832).png" class="img-responsive" alt=""/>
                <div class="slide_content">
                    <div class="slide_content_wrap">
                        <h1 class="title">தமிழ் புத்தகங்களுக்காக  <br> தமிழில் ஒரு வலைத்தளம் </h1>
                      
                    </div>
                </div>
            </div>
            <!--/slide -->
             <!-- /Duplicate to create more slides -->
            <div class="slide">
               <img src="images/Screenshot (833).png" class="img-responsive" alt=""/>
                <div class="slide_content">
                    <div class="slide_content_wrap">
                    
                      
                    </div>
                </div>
            </div>
            <!--/slide -->
        </div>
        <div class="timers"></div>
        <div class="slidePrev"><span></span></div>
        <div class="slideNext"><span></span></div>
       </div>
       <!--/slider -->
      </div>
	  
	<div class="features">
		<div class="container">
			<h3 class="m_3">      பிரிவுகள்      </h3>
			
			  <div class="row">
				<div class="col-md-3 top_box">
				  <div class="view view-ninth"><a href="cv1copy.jsp">
                    <img src="images/c0Sy38ew.png" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  கதைகள்        </h2>
                       
                      </div>
                   </a> 
                  </div>
                  <h4 class="m_4"><a href="team.html">  கதைகள் ஆயிரம்      </a></h4>
                  
                </div>
                <div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="cv2.jsp">
                    <img src="images/kalvi_tv (1).png" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  கல்வி   </h2>
                       
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">      கல்வி நூல்கள்       </a></h4>
                 
				</div>
				<div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="cv3.jsp">
                    <img src="images/ilakkanam (1).png" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  இலக்கணம்    </h2>
                        
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">    இலக்கண நூல்கள்        </a></h4>
               
				</div>
				<div class="col-md-3 top_box1">
					<div class="view view-ninth"><a href="cv4.jsp">
                    <img src="images/seidhigal.png" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  செய்திகள்   </h2>
                       
                      </div>
                     </a> </div>
                   <h4 class="m_4"><a href="#">        தமிழ் செய்திகள்       </a></h4>
                  
				</div>
			</div>
		 
		 <div class="row">
				<div class="col-md-3 top_box">
				  <div class="view view-ninth"><a href="cv5.jsp">
                    <img src="images/history.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  தமிழ் வரலாறு        </h2>
                       
                      </div>
                   </a> 
                  </div>
                  <h4 class="m_4"><a href="team.html">  வரலாறு        </a></h4>
                  
                </div>
                <div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="cv6.jsp">
                    <img src="images/ariviyal.png" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  அறிவியல்   கல்வி   </h2>
                       
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">      அறிவியல்    நூல்கள்       </a></h4>
                 
				</div>
				<div class="col-md-3 top_box">
					<div class="view view-ninth"><a href="cv7.jsp">
                    <img src="images/samogaariviya.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  சமூக அறிவியல்   </h2>
                        
                      </div>
                    </a> </div>
                   <h4 class="m_4"><a href="#">    சமூக அறிவியல்        </a></h4>
               
				</div>
				<div class="col-md-3 top_box1">
					<div class="view view-ninth"><a href="cv8.jsp">
                    <img src="images/ilakiyam.jpg" class="img-responsive" alt=""/>
                    <div class="mask mask-1"> </div>
                    <div class="mask mask-2"> </div>
                      <div class="content">
                        <h2>  தமிழ் இலக்கியம்   </h2>
                       
                      </div>
                     </a> </div>
                   <h4 class="m_4"><a href="#">        தமிழ் இலக்கியம்      </a></h4>
                  
				</div>
			</div>
			</div>
		 </div>
	    </div>
		<div class="footer">
			<div class="container">
				
				<div class="row footer_bottom">
				    <div class="copy">
			           <p>© வழங்கியவர்  கலைச்செல்வன்   </br> <a href="http://visitkalai.blogspot.com" target="_blank">மேலும் தகவல்களுக்கு</a></p>
		            </div>
					 
   				</div>
			</div>
		</div>
</body>	
</html>