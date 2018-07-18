<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <title>关于我们</title> 
  <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" /> 
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
  <script src="js/jquery.min.js"></script> 
  <!-- Custom Theme files --> 
  <!--menu--> 
  <script src="js/scripts.js"></script> 
  <link href="css/styles.css" rel="stylesheet" /> 
  <!--//menu--> 
  <!--theme-style--> 
  <link href="css/style.css" rel="stylesheet" type="text/css" media="all" /> 
  <!--//theme-style--> 
  <meta name="viewport" content="width=device-width, initial-scale=1" /> 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
  <meta name="keywords" content="Real Home Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" /> 
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script> 
 </head> 
 <body> 
  <div class="header"> 
   <div class="container"> 
    <!--logo--> 
    <div class="logo"> 
     <h1><a href="index">蛋壳网</a></h1> 
    </div> 
    <!--//logo--> 
    <div class="top-nav"> 
     <ul class="right-icons"> 
      <li><span><i class="glyphicon glyphicon-phone"> </i>+${user.tel}</span></li> 
      <li><a href="login"><i class="glyphicon glyphicon-user"> </i>${user.username}</a></li> 
     </ul> 
     <div class="nav-icon"> 
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
  </div> 
  <!--//--> 
  <div class=" banner-buying"> 
   <div class=" container"> 
    <h3><span>联系我们</span></h3> 
    <!----> 
    <div class="menu-right"> 
     <ul class="menu"> 
      <li class="item1"><a href="#"> 导航<i class="glyphicon glyphicon-menu-down"> </i> </a> 
       <ul class="cute"> 
        <li class="subitem1"><a href="user_info">个人信息</a></li> 
        <li class="subitem2"><a href="buy">租房</a></li> 
        <li class="subitem3"><a href="create_home">房屋出租</a></li> 
        <li class="subitem1"><a href="myroom">我的房屋</a></li> 
        <li class="subitem2"><a href="single_test">我的订单</a></li> 
        <li class="subitem3"><a href="suggestion">客户反馈</a></li> 
        <li class="subitem3"><a href="contact">联系我们</a></li> 
       </ul> </li> 
     </ul> 
    </div> 
    <div class="clearfix"> 
    </div> 
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
  <!--contact--> 
  <div class="contact"> 
   <div class="container"> 
    <h3>联系我们</h3> 
    <div class="contact-top"> 
     <div class="col-md-6 contact-top1"> 
      <div class="contact-address"> 
       <div class="col-md-6 contact-address1"> 
        <h5>住址</h5> 
        <p><b>短租网</b></p> 
        <p>湖北省武汉市中南民族大学</p> 
       </div> 
       <div class="col-md-6 contact-address1"> 
        <h5>邮箱 </h5> 
        <p> hary_hui@qq.com</p> 
       </div> 
       <div class="clearfix"></div> 
      </div> 
      <div class="contact-address"> 
       <div class="col-md-6 contact-address1"> 
        <h5>联系方式 </h5> 
        <p>移动 : +18107185628</p> 
       </div> 
       <div class="clearfix"></div> 
      </div> 
     </div> 
     <div class="col-md-6 contact-right"> 
     </div> 
     <div class="clearfix"> 
     </div> 
    </div> 
   </div> 
  </div> 
  <!--//contact-->
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
 </body>
</html>