<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <title>登录</title> 
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
      <li><span><i class="glyphicon glyphicon-phone"> </i></span></li> 
      <li><a href="login"><i class="glyphicon glyphicon-user"> </i>登录</a></li> 
     </ul> 
     <div class="nav-icon"> 
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
  <div class=" banner-buying"> 
   <div class=" container"> 
    <h3><span>用户登录</span></h3> 
    <!----> 
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
  <div class="login-right"> 
   <div class="container"> 
    <h3>登录</h3> 
    <div class="login-top"> 
     <ul class="login-icons"> 
      <div class="clearfix"> 
      </div> 
     </ul> 
     <div class="form-info"> 
      <form action="Is_login"> 
       <input name="name" type="text" class="text" placeholder="请输入姓名/账户" required="" /> 
       <input name="password" type="password" placeholder="请输入密码" required="" /> 
       <label class="hvr-sweep-to-right"> <input type="submit" value="确认" /> </label> 
      </form> 
     </div> 
     <div class="create"> 
      <h4>如果您尚未拥有账号，可进此注册 </h4> 
      <p><a class="hvr-sweep-to-right" href="register">注册</a></p> 
      <div class="clearfix"> 
      </div> 
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