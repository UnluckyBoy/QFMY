<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>系统管理</title>
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

<div class="header">
	<div class="container">
		<!--logo-->
			<div class="logo">
				<h1><a href="system_management">蛋壳网</a></h1>
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
				<div id="small-dialog" class="mfp-hide">
					    <!----- tabs-box ---->
				<div class="sap_tabs">	
				     <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
						  <ul class="resp-tabs-list">
						  	  
						    <div class="clearfix"></div>
						  </ul>				  	 
						  <div class="resp-tabs-container">
						  		<h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>All Homes</h2><div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block">
								 	<div class="facts"></div>
						  		</div>
							     <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>For Sale</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<div class="facts">									
										<div class="login">
											<input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">		
									 		<input type="submit" value="">
									 	</div> 
							        </div>	
								 </div>									
							      <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>For Rent</h2><div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									 <div class="facts">
										<div class="login">
											<input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}">		
									 		<input type="submit" value="">
									 	</div> 
							         </div>	
							    </div>
					      </div>
					 </div>
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
		<div class="clearfix"> </div>
		</div>	
</div>
<!--//-->	
<div class=" banner-buying">
	<div class=" container">
	<h3><span>系统管理</span></h3> 
	<!---->
	
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
<div class="single"><!---->
<div class="container">
	
	<div class="buy-single">
	  <h3><b>等待受理的房屋管理列表</b></h3>
	  <div class="box-sin">
			<div class="col-md-9 single-box">
				<div class="box-col">
                <div class=" col-sm-2 left-side ">
                <p>更多功能:</p>
                </div>
				     <div class=" col-sm-5 left-side ">
                       <div align="left">
                       <a href="information" class="hvr-sweep-to-right more" >站内信</a>
                         &emsp;&emsp;&emsp;&emsp;
                         <a href="user_management" class="hvr-sweep-to-right more" >用户信息管理</a>                       </div>
				     </div>
                    <br>
                    <br>
                    <br>
                    <c:forEach items="${toauditHouseList}" var="house" varStatus="st">
				     <span class=" col-sm-7 left-side "><a href="description.do?room=${house.roomname }&city=${house.city}"><img class="img-responsive" src="http://1oz9819419.iask.in:44216/getImage/upload/640_434_picture/${house.room_image1 }" alt=""></a></span>				
					<div class="  col-sm-5 middle-side">
				      <h4>${house.roomname }</h4>
				         <p><span class="bath">房屋类型 </span>:<span class="two">${house.room_type }</span></p>
                         <p><span class="bath">房屋价格 </span>:<span class="two">¥${house.price }</span></p>
                         <p><span class="bath">租赁时间 </span>:<span class="two">${house.duration }</span></p>
                         <p><span class="bath">所在城市 </span>:<span class="two">${house.city }</span></p>
					     <p><span class="bath">详细地址 </span>:<span class="two">${house.address }</span></p>
						 
						<div class="   right-side">
                          &nbsp;&emsp;&emsp;&emsp;&emsp;&nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                          <a href="agreeHouse?roomname=${house.roomname }" class="hvr-sweep-to-right more" >同意发布</a>
						</div>
				  </div></c:forEach>
				 <div class="clearfix"> </div>
			  </div>
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
				<h2><a href="system_management.do">蛋壳网</a></h2>
			</div>
		<div class="clearfix"> </div>
	 	</div>
	</div>
</div>
<!--//footer-->
</body>
</html>