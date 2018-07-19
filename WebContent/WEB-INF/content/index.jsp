<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <title>首页</title> 
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> 
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
  <script src="js/jquery.min.js"></script> 
  <!-- Custom Theme files --> 
  <!--menu--> 
  <script src="js/scripts.js"></script> 
  <link href="css/styles.css" rel="stylesheet" /> 
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" /> 
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script> 
  <!-- slide --> 
  <script src="js/responsiveslides.min.js"></script> 
  <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script> 
 </head> 
 <body> 
  <div class="header"> 
   <div class="container"> 
    <!--logo--> 
    <div class="logo"> 
     <h1>蛋壳网</h1> 
     <p>——一个租房的快捷网站</p> 
    </div> 
    <!--//logo--> 
    <div class="top-nav"> 
     <ul class="right-icons">
      <li><span><i class="glyphicon glyphicon-phone"> </i>+${user.tel}</span></li> 
      <li><a href=""><i class="glyphicon glyphicon-user"> </i>${user.username}</a></li> 
     </ul> 
     <div class="nav-icon"> 
      <div class="hero fa-navicon fa-2x nav_slide_button" id="hero"> 
      </div> 
      <!--
				<a href="#" class="right_bt" id="activator"><i class="glyphicon glyphicon-menu-hamburger"></i>  </a>
			---> 
     </div> 
     <div class="clearfix"> 
     </div> 
     <!--pop-up-box----> 
     <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" /> 
     <script src="js/jquery.magnific-popup.js" type="text/javascript"></script> 
     <!--//pop-up-box----> 
     <div id="small-dialog" class="mfp-hide"> 
      <!-- tabs-box ----> 
      <script src="js/easyResponsiveTabs.js" type="text/javascript"></script> 
      <script type="text/javascript">
						    $(document).ready(function () {
						        $('#horizontalTab').easyResponsiveTabs({
						            type: 'default', //Types: default, vertical, accordion           
						            width: 'auto', //auto or any width like 600px
						            fit: true   // 100% fit in a container
						        });
						    });
			  			 </script> 
     </div> 
    </div> 
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
   <div class="clearfix"> 
   </div> 
  </div> 
  <!--//--> 
  <div class=" header-right"> 
   <div class=" banner"> 
    <div class="slider"> 
     <div class="callbacks_container"> 
      <ul class="rslides" id="slider"> 
       <li> 
        <div class="banner1"> 
         <div class="caption"> 
         </div> 
        </div> </li> 
       <li> 
        <div class="banner2"> 
         <div class="caption"> 
         </div> 
        </div> </li> 
       <li> 
        <div class="banner3"> 
         <div class="caption"> 
         </div> 
        </div> </li> 
      </ul> 
     </div> 
    </div> 
   </div> 
  </div> 
  <!--header-bottom--> 
  <div class="banner-bottom-top"> 
   <div class="container"> 
    <div class="bottom-header"> 
     <div class="header-bottom"> 
      <div class=" bottom-head"> 
       <a href="user_info"> 
        <div class="buy-media"> 
         <!--<i class="buy"> </i>--> 
         <img src="images/info.png" height="32px" width="32px" /> 
         <h6>个人信息</h6> 
        </div> </a> 
      </div> 
      <div class=" bottom-head"> 
       <a href="buy"> 
        <div class="buy-media"> 
         <i class="rent"> </i> 
         <h6>租房</h6> 
        </div> </a> 
      </div> 
      <div class=" bottom-head"> 
       <a href="create_home"> 
        <div class="buy-media"> 
         <!--<i class="pg"> </i>--> 
         <img src="images/create.png" height="32px" width="32px" /> 
         <h6>房屋出租</h6> 
        </div> </a> 
      </div> 
      <div class=" bottom-head"> 
       <a href="myroom"> 
        <div class="buy-media"> 
         <i class="loan"> </i> 
         <h6>我的房屋</h6> 
        </div> </a> 
      </div> 
      <div class=" bottom-head"> 
       <a href="single_test"> 
        <div class="buy-media"> 
         <!--<i class="loan"> </i>--> 
         <img src="images/single.png" height="32px" width="32px" /> 
         <h6>我的订单</h6> 
        </div> </a> 
      </div> 
      <div class=" bottom-head"> 
       <a href="suggestion"> 
        <div class="buy-media"> 
         <!--<i class="loan"> </i>--> 
         <img src="images/suggstion.png" height="32px" width="32px" /> 
         <h6>客户反馈</h6> 
        </div> </a> 
      </div> 
      <div class=" bottom-head"> 
       <a href="contact"> 
        <div class="buy-media"> 
         <!--<i class="loan"> </i>--> 
         <img src="images/tell_us.png" height="32px" width="32px" /> 
         <h6>联系我们</h6> 
        </div> </a> 
      </div> 
      <div class="clearfix"> 
      </div> 
     </div> 
    </div> 
   </div> 
  </div> 
  <!--content--> 
  <div class="content"> 
   <div class="content-grid"> 
    <div class="container"> 
     <h3>热门</h3> 
     <div class="col-md-4 box_2">
			     	 <a href="description?room=${firstThreeHouseList.get(1).roomname }&city=${firstThreeHouseList.get(1).city}" class="mask">
			     	   	<img class="img-responsive zoom-img" src="http://1oz9819419.iask.in:44216/getImage/upload/300_200_picture/${firstThreeHouseList.get(1).room_image1 }" alt="">
			     	   	<span class="four">${firstThreeHouseList.get(1).price }¥</span>
			     	 </a>
			     	   <div class="most-1">
			     	   	 <h5><a href="description?room=${firstThreeHouseList.get(1).roomname }$&city=${firstThreeHouseList.get(1).city }$">${firstThreeHouseList.get(1).roomname }</a></h5>
			     	    	<p>${firstThreeHouseList.get(1).city }</p>
			     	   </div>
			 </div>
			  <div class="col-md-4 box_2">
			     	 <a href="description?room=${firstThreeHouseList.get(0).roomname }&city=${firstThreeHouseList.get(0).city}" class="mask">
			     	   	<img class="img-responsive zoom-img" src="http://1oz9819419.iask.in:44216/getImage/upload/300_200_picture/${firstThreeHouseList.get(0).room_image1 }" alt="">
			     	   	<span class="four">${firstThreeHouseList.get(0).price }¥</span>
			     	 </a>
			     	   <div class="most-1">
			     	   	 <h5><a href="description?room=${firstThreeHouseList.get(0).roomname }$&city=${firstThreeHouseList.get(0).city }$">${firstThreeHouseList.get(0).roomname }</a></h5>
			     	    	<p>${firstThreeHouseList.get(0).city }</p>
			     	   </div>
			 </div>
		       <div class="col-md-4 box_2">
			     	 <a href="description?room=${firstThreeHouseList.get(2).roomname }&city=${firstThreeHouseList.get(2).city}" class="mask">
			     	   	<img class="img-responsive zoom-img" src="http://1oz9819419.iask.in:44216/getImage/upload/300_200_picture/${firstThreeHouseList.get(2).room_image1 }" alt="">
			     	   	<span class="four">${firstThreeHouseList.get(2).price }¥</span>
			     	 </a>
			     	   <div class="most-1">
			     	   	 <h5><a href="description?room=${firstThreeHouseList.get(2).roomname }$&city=${firstThreeHouseList.get(2).city }$">${firstThreeHouseList.get(2).roomname }</a></h5>
			     	    	<p>${firstThreeHouseList.get(2).city }</p>
			     	   </div>
			 </div>
		 	<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--footer-->
<div class="footer">
  <div class="footer-bottom">
	  <div class="container">
			<div class="col-md-4 footer-logo">
				<h2><a href="index">蛋壳网</a></h2>
			</div>
		<div class="clearfix"> </div>
	 	</div>
	</div>
</div>
<!--//footer-->
</body>
</html>