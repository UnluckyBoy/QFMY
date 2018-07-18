<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>租房</title>
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
				<li><span ><i class="glyphicon glyphicon-phone"> </i>${user.tel}</span></li>
				<li><a  href="#"><i class="glyphicon glyphicon-user"> </i>${user.username}</a></li>
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
	<h3><span>租房</span></h3> 
	<!---->
	<div class="menu-right">
		 <ul class="menu">
			<li class="item1"><a href="#"> 导航<i class="glyphicon glyphicon-menu-down"> </i> </a>
			<ul class="cute">
			    <li class="subitem1"><a href="index">首页 </a></li>
				<li class="subitem1"><a href="user_info">个人信息 </a></li>
				<li class="subitem2"><a href="buy">租房 </a></li>
				<li class="subitem3"><a href="create_home">创建房屋 </a></li>
				<li class="subitem1"><a href="myroom">我的房屋 </a></li>
				<li class="subitem2"><a href="single_test">我的订单</a></li>
				<li class="subitem3"><a href="suggestion">客户反馈 </a></li>
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
<div class="container">
	
	<form action="rentroom">
	<div class="price">
		<div class="price-grid">
			<div class="col-sm-4 price-top">
				<h4>城市</h4>
                 <select name="city" class="in-drop">
					<option>选择城市</option>
					<option>北京</option>
					<option>合肥</option>
					<option>重庆</option>
					<option>福州</option>
					<option>兰州</option>
					<option>广州</option>
					<option>南宁</option>
					<option>贵阳</option>
					<option>海口</option>
					<option>石家庄</option>
					<option>郑州</option>
					<option>哈尔滨</option>
					<option>武汉</option>
					<option>杭州</option>
					<option>长春</option>
					<option>南京</option>
					<option>沈阳</option>
					<option>西宁</option>
                    <option>济南</option>
                    <option>太原</option>
                    <option>西安</option>
                    <option>上海</option>
                    <option>成都</option>
                    <option>天津</option>
                    <option>昆明</option>
                    <option>长沙</option>					
			  </select>
			</div>
			<div class="clearfix"> </div>
			<div class="col-sm-4 price-top">
				<h4>房间类型</h4>
				<select name="room_type" class="in-drop">
					<option>选择房间类型</option>
					<option>单人间</option>
					<option>双人间</option>
					<option>多人间</option>
			     </select>
		  </div>
		<div class="price-grid">
			<div class="col-sm-6 price-top1">
				<h4>房间价格/天</h4>
				<ul>
					<li>
						<select name="downprice" class="in-drop">
							<option>最低价格/天</option>
							<option>0</option>
							<option>50</option>							
							<option>100</option>						
							<option>150</option>							
							<option>200</option>							
							<option>250</option>							
							<option>300</option>
							<option>350</option>
							<option>400</option>
							<option>450</option>
                            <option>500</option>
                            <option>550</option>
                            <option>600</option>
                            <option>650</option>
                            <option>700</option>
                            <option>750</option>
                            <option>800</option>
                            <option>850</option>
                            <option>900</option>
                            <option>950</option>
					  </select>
					</li>
					<span>-</span>
					<li>
						<select name="topprice"class="in-drop">
							<option>最高价格</option>
							<option>50</option>							
							<option>100</option>						
							<option>150</option>							
							<option>200</option>							
							<option>250</option>							
							<option>300</option>
							<option>350</option>
							<option>400</option>
							<option>450</option>
                            <option>500</option>
                            <option>550</option>
                            <option>600</option>
                            <option>650</option>
                            <option>700</option>
                            <option>750</option>
                            <option>800</option>
                            <option>850</option>
                            <option>900</option>
                            <option>950</option>
                            <option>1000</option>
						</select>
					 </li>
				 </ul>
			  </div>
            </div>
            <label class="hvr-sweep-to-right">
	            <input type="submit" value="搜索">
	        </label>  
			<div class="clearfix"> </div>
		</div>
	</div>
</form>
<div class="dealer-top">
		<h4>房屋列表</h4>
			<div class="deal-top-top">
			<c:forEach items="${rentHouseList}" var="house" varStatus="st">
				<div class="col-md-3 top-deal-top">
					<div class="top-deal">
					
						<a href="description.do?room=${house.roomname }&city=${house.city}" class="mask"><img src="http://1oz9819419.iask.in:44216/getImage/upload/300_200_picture/${house.room_image2}" class="img-responsive zoom-img" alt=""></a>
						<div class="deal-bottom">
							<div class="top-deal1">
								<h5><a href="description.do?room=${house.roomname }&city=${house.city}">${house.roomname }</a></h5>
								<p>城市 : ${house.city }</p>
								<p>价格 : $${house.price }</p>
							</div>
							<div class="top-deal2">
								<a href="description?room=${house.roomname }&city=${house.city}" class="hvr-sweep-to-right more">更多</a>
							</div>
						<div class="clearfix"> </div>
						</div>
					</div>
					<c:if test='${st.count%4==0}'><></c:if>
					</div>
		       </c:forEach>
			<div class="clearfix"> 
			</div>
		</div>
	</div>
</div>
<br>
<br>
<br>
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