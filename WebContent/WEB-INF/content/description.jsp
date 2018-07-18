<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>详细信息</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--menu-->
<script src="js/scripts.js"></script>
<link href="css/styles.css" rel="stylesheet">
<!--//menu-->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

</head>
<body>
<!--header-->

<div class="header">
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="index">蛋壳网</a></h1>
			</div>
		<!--//logo-->
		<div class="top-nav">
			<ul class="right-icons">
				<li><span ><i class="glyphicon glyphicon-phone"> </i>${user.tel }</span></li>
				<li><a  href="#"><i class="glyphicon glyphicon-user"> </i>${user.username }</a></li>	
				
			</ul>
		<div class="clearfix"> </div>
			<!---pop-up-box---->
				  
				<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
				<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
			<!---//pop-up-box---->
				 <script>
						$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});
																						
						});
				</script>
					
	
		</div>
		<div class="clearfix"> </div>
		</div>	
</div>
<!--//-->	
<div class=" banner-buying">
	<div class=" container">
	<h3><span>房屋信息</span></h3> 
	<!---->
	<div class="menu-right">
		 <ul class="menu">
			<li class="item1"><a href="#"> 导航<i class="glyphicon glyphicon-menu-down"> </i> </a>
			<ul class="cute">
			    <li class="subitem1"><a href="index">首页 </a></li>
				<li class="subitem1"><a href="user_info">个人信息</a></li>
				<li class="subitem2"><a href="buy">租房</a></li>
				<li class="subitem3"><a href="create_home">创建房屋</a></li>
				<li class="subitem1"><a href="myroom">我的房屋</a></li>
				<li class="subitem2"><a href="single_test">我的订单</a></li>
				<li class="subitem3"><a href="suggestion">客户反馈</a></li>
				<li class="subitem3"><a href="contact">联系我们</a></li>
			</ul>
		</li>
		</ul>
	</div>
	<div class="clearfix"> </div>
		<!--initiate accordion-->
		<script type="text/javascript">
			$(function() {
			    var menu_ul = $('.menu > li > ul'),
			           menu_a  = $('.menu > li > a');
			    menu_ul.hide();
			    menu_a.click(function(e) {
			        e.preventDefault();
			        if(!$(this).hasClass('active')) {
			            menu_a.removeClass('active');
			            menu_ul.filter(':visible').slideUp('normal');
			            $(this).addClass('active').next().stop(true,true).slideDown('normal');
			        } else {
			            $(this).removeClass('active');
			            $(this).next().stop(true,true).slideUp('normal');
			        }
			    });
			
			});
		</script>
      		
	</div>
</div>
<!--//header-->
<!---->

<div class="container">
	
	<div class="buy-single-single">
	
			<div class="col-md-9 single-box">
				
       <div class=" buying-top">	
			<div class="flexslider">
  <ul class="slides">
    <li data-thumb="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image1 }">
      <img src="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image1 }" />
    </li>
    <li data-thumb="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image2 }">
      <img src="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image2 }" />
    </li>
    <li data-thumb="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image3 }">
      <img src="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image3 }" />
    </li>
    <li data-thumb="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image4 }">
      <img src="http://1oz9819419.iask.in:44216/getImage/upload/900_420_picture/${house.room_image4 }" />
    </li>
  </ul>
</div>
<!-- FlexSlider -->
  <script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />

<script>
// Can also be used with $(document).ready()
$(window).load(function() {
  $('.flexslider').flexslider({
    animation: "slide",
    controlNav: "thumbnails"
  });
});
</script>
</div>
<div class="buy-sin-single">
			<div class="col-sm-5 middle-side immediate">
					      <h4>基本信息</h4>
					     <p>房间数    : <span class="two">${house.room_num }</span></p>
					     <p>详细地址 : <span class="two">${house.address }</span></p>
					     <p>城市    :<span class="two"> ${house.city }</span></p>
						 <p>租期: <span class="two">${house.duration }</span></p>
						 <p>价格   :<span class="two"> ${house.price }</span></p>				 
						<div class="   right-side">
							 <a href="reserve" class="hvr-sweep-to-right more" >预定房屋</a>     
					 </div>
					</div>
					 <div class="col-sm-7 buy-sin">
					 	<h4>具体信息</h4>
					 	<p>${house.description }</p>
					 </div>
					 <div class="clearfix"> </div>
					</div>
		</div>
		<div class="clearfix"> </div>
		</div>
	</div>

<!---->
<div class="container">
	<div class="future">
		<h3 >相关房子</h3>		
			<div class="content-bottom-in">					
					<ul id="flexiselDemo1">
					<c:forEach items="${cityHouseList}" var="house" varStatus="st">		
						<li><div class="project-fur">
								<a href="description?room=${house.roomname }&city=${house.city}" ><img class="img-responsive" src="http://localhost:8080/${house.room_image2 }" alt="" />	</a>
									<div class="fur">
										<div class="fur1">
		                                    <span class="fur-money">价格：${house.price }</span>
		                                    <h6 class="fur-name"><a href="description?room=${house.roomname }&city=${house.city}">房间名：${house.roomname }</a></h6>
		                                   	<span>城市：${house.city }</span>
                               			</div>
									</div>					
							</div></li>
							</c:forEach></ul>
					<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems: 4,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
						    	responsiveBreakpoints: { 
						    		portrait: { 
						    			changePoint:480,
						    			visibleItems: 1
						    		}, 
						    		landscape: { 
						    			changePoint:640,
						    			visibleItems: 2
						    		},
						    		tablet: { 
						    			changePoint:768,
						    			visibleItems: 3
						    		}
						    	}
						    });
						    
						});
			</script>
			<script type="text/javascript" src="js/jquery.flexisel.js"></script>
		</div>
	</div>
	
</div>
<!--footer-->
<div class="footer">
  <div class="footer-bottom">
	  <div class="container">
			<div class="col-md-4 footer-logo">
				<h2><a href="system_management.do">蛋壳网</a></h2>
			</div>
		<div class="clearfix"> </div>
	 	</div>
	</div>
</div>
<!--//footer-->
</body>
</html>