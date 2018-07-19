<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <title>受理订单</title> 
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
      <li><span><i class="glyphicon glyphicon-phone"> </i>+${user.tel }</span></li> 
      <li><a href="login.html"><i class="glyphicon glyphicon-user"> </i>${user.username }</a></li> 
     </ul> 
     <div class="clearfix"> 
     </div> 
     <!--pop-up-box----> 
     <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" /> 
     <script src="js/jquery.magnific-popup.js" type="text/javascript"></script> 
     <!--//pop-up-box----> 
     <div id="small-dialog" class="mfp-hide"> 
      <!-- tabs-box ----> 
      <div class="sap_tabs"> 
       <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;"> 
        <ul class="resp-tabs-list"> 
         <div class="clearfix"></div> 
        </ul> 
        <div class="resp-tabs-container"> 
         <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>All Homes</h2>
         <div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block"> 
          <div class="facts"></div> 
         </div> 
         <h2 class="resp-accordion" role="tab" aria-controls="tab_item-1"><span class="resp-arrow"></span>For Sale</h2>
         <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1"> 
          <div class="facts"> 
           <div class="login"> 
            <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}" /> 
            <input type="submit" value="" /> 
           </div> 
          </div> 
         </div> 
         <h2 class="resp-accordion" role="tab" aria-controls="tab_item-2"><span class="resp-arrow"></span>For Rent</h2>
         <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2"> 
          <div class="facts"> 
           <div class="login"> 
            <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}" /> 
            <input type="submit" value="" /> 
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
    <div class="clearfix"> 
    </div> 
   </div> 
  </div> 
  <!--//--> 
  <div class=" banner-buying"> 
   <div class=" container"> 
    <h3><span>受理订单</span></h3> 
    <!----> 
    <div class="menu-right"> 
     <ul class="menu"> 
      <li class="item1"><a href="#">导航<i class="glyphicon glyphicon-menu-down"> </i> </a> 
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
  <!----> 
  <div class="single">
   <!----> 
   <div class="container"> 
    <div class="buy-single"> 
     <h3>订单列表</h3> 
     <div class="box-sin"> 
      <div class="col-md-9 single-box"> 
       <div class="box-col"> 
        <br /> 
        <br /> 
        <br />
        <c:forEach items="${land_house}" var="singlelist" varStatus="st">
        <span class=" col-sm-7 left-side "><a href="#"><img class="img-responsive" src="http://1oz9819419.iask.in:44216/getImage/upload/640_434_picture/${singlelist.room_image1}" alt="" /></a></span> 
        <div class="  col-sm-5 middle-side"> 
         <h4>${singlelist.roomname}</h4> 
         <p><span class="bath">房屋名称: </span>${singlelist.roomname}</p> 
         <p><span class="bath">房屋类型:</span>${singlelist.room_type}</p> 
         <p><span class="bath">房屋价格: </span>¥${singlelist.price}/月</p> 
         <p><span class="bath">租赁时间: </span>${singlelist.duration}</p> 
         <p><span class="bath">所在城市: </span>${singlelist.city}</p> 
         <p><span class="bath">详细地址: </span>${singlelist.address}</p> 
         <p><span class="bath">租户姓名: </span>${singlelist.renter}</p>
         <p><span class="bath">订单状态: </span>${singlelist.unsubscribe}</p>
         <div class="   right-side">
          <br /> 
          <a href="agreeOrder?roomname=${singlelist.roomname }&renter=${singlelist.renter }" 
						    class="hvr-sweep-to-right more" >受理</a>
         </div> 
        </div>
        <c:if test='${st.count%4==0}'><></c:if>
        </c:forEach>
        <div class="clearfix"> 
        </div> 
       </div>
   </div> 
  </div>
 </body>
</html>