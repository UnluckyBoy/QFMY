<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <title>用户管理</title> 
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
     <h1>蛋壳网</h1> 
    </div>
    <!--//logo--> 
    <div class="top-nav"> 
     <ul class="right-icons"> 
      <li><span><i class="glyphicon glyphicon-phone"> </i>+${ user.tel}</span></li> 
      <li><a href=""><i class="glyphicon glyphicon-user"> </i>${user.username}</a></li> 
     </ul> 
     <div class="clearfix"> 
     </div> 
     <!--pop-up-box----> 
     <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" /> 
     <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
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
    <h3><span>系统管理</span></h3> 
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
  <!----> 
  <div class="single">
   <!----> 
   <div class="container"> 
    <div class="buy-single"> 
     <h3><b>用户信息管理列表</b></h3> 
     <div class="box-sin"> 
      <div class="col-md-9 single-box"> 
       <div class="box-col"> 
        <div class="col-md-8"> 
        <form action="upUserInfo">
         <div class="input-group form-group">
          <input name="name"type="text" class="form-control" placeholder="请输入检索关键字" />
		  <label class="hvr-sweep-to-right"> <input type="submit" value="搜索" /> </label> 
         </div>
         </form>
        </div> 
        <br /> 
        <br /> 
        <!--<span class=" col-sm-6 left-side "><a href="single.html"><img class="img-responsive" src="images/sb.jpg" alt=""></a></span>	--> 
        <div class="  col-sm-6 middle-side"> 
         <h4>用户信息</h4> 
         <p><span class="bath2">用户昵称: </span>${userInfo.username}</p> 
         <p><span class="bath2">用户账号: </span>${userInfo.tel }</p> 
         <p><span class="bath2">用户年龄: </span>${userInfo.age }</p> 
         <p><span class="bath2">用户性别: </span>${userInfo.sex }</p> 
         <p><span class="bath2">用户密码: </span>${userInfo.password }</p>
          <a href="deleteuser?username=${userInfo.username}" class="hvr-sweep-to-right more">删除用户</a>
         <!--
         <from action="deleteuser">
         <div class="   right-side"> 
          <br />
          <label class="hvr-sweep-to-right"> <input type="submit" value="删除用户" /> </label> 
         </div>
         </from>
         -->
        </div> 
        <div class="clearfix"> 
        </div> 
      </div>
   </div> 
  </div> 
  </div>
  </div>
 </div>
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