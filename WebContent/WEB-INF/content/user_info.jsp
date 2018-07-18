<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <title>个人信息</title> 
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
      <li><a href=""><i class="glyphicon glyphicon-user"> </i>${user.username}</a></li> 
      <!--<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a></li>--> 
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
	<h3><span>个人信息</span></h3> 
	<!---->
	<div class="menu-right">
		 <ul class="menu">
			<li class="item1"><a href="#"> 导航<i class="glyphicon glyphicon-menu-down"> </i> </a>
			<ul class="cute">
			    <li class="subitem1"><a href="index.do">首页 </a></li>
				<li class="subitem1"><a href="user_info.do">个人信息 </a></li>
				<li class="subitem2"><a href="buy.do">租房 </a></li>
				<li class="subitem3"><a href="create_home.do">创建房屋 </a></li>
				<li class="subitem1"><a href="myroom.do">我的房屋 </a></li>
				<li class="subitem2"><a href="single_test.do">我的订单</a></li>
				<li class="subitem3"><a href="suggestion.do">客户反馈 </a></li>
				<li class="subitem3"><a href="contact.do">联系我们</a></li>
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
<!--contact-->
<div class="feedback">
	<div class="container">
		<h3>我的信息</h3>
		<div class="feedback-top">
			<form action="update">
				<input id="text1" name="username" type="text"  value="${user.username}"  required="" readOnly="true">
				<input id="text2" name="tel" type="text"  value="${user.tel} "  required="" readOnly="true">
				<input id="text3" name="age" type="text"  value="${user.age } "  required="" readOnly="true">
				<input id="text4" name="password" type="text"  value="${user.password} "  required="" readOnly="true">
				<input id="text5" name="sex" type="text"  value="${user.sex } "  required="" readOnly="true">
				<label class="hvr-sweep-to-right">
					 <input type="button" value="编辑资料" onclick="update()">
	            </label>&nbsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;
	                    &emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;
	                    <label class="hvr-sweep-to-right">
					 <input type="submit" value="保存" onclick="update()">
	            </label>
	            <!-- <label class="hvr-sweep-to-right">
				     <input type="submit" value="保存">
				</label> -->
			</form>
		</div>
	</div>
</div>
<script type="text/javascript">
function update(){
	document.getElementById("text3").readOnly = false;
	document.getElementById("text4").readOnly = false;
	document.getElementById("text5").readOnly = false;
}
</script>
<!--footer-->
<div class="footer">
  <div class="footer-bottom">
	  <div class="container">
			<div class="col-md-4 footer-logo">
				<h2><a href="index.do">蛋壳网</a></h2>
			</div>
		<div class="clearfix"> </div>
	 	</div>
	</div>
</div>
<!--//footer-->
</body>
</html>