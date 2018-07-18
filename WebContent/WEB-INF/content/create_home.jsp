<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head> 
  <title>房屋出租</title> 
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
  <!--header--> 
  <!--div class="navigation">
			<div class="container-fluid">
				<nav class="pull">
					<ul>
						<li><a  href="index.html">Home</a></li>
						<li><a  href="about.html">About Us</a></li>
						<li><a  href="blog.html">Blog</a></li>
						<li><a  href="terms.html">Terms</a></li>
						<li><a  href="privacy.html">Privacy</a></li>
						<li><a  href="contact.html">Contact</a></li>
					</ul>
				</nav>			
			</div>
		</div--> 
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
      <li><a href="login"><i class="glyphicon glyphicon-user"> </i>${user.username }</a></li> 
      <!--<li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a></li>--> 
     </ul> 
     <!--<div class="nav-icon">
				<div class="hero fa-navicon fa-2x nav_slide_button" id="hero">
						<a href="#"><i class="glyphicon glyphicon-menu-hamburger"></i> </a>
					</div>	
			</div>--> 
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
         <li class="resp-tab-item " aria-controls="tab_item-0" role="tab"><span>All Homes</span></li> 
         <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>For Sale</span></li> 
         <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>For Rent</span></li> 
         <div class="clearfix"></div> 
        </ul> 
        <div class="resp-tabs-container"> 
         <h2 class="resp-accordion resp-tab-active" role="tab" aria-controls="tab_item-0"><span class="resp-arrow"></span>All Homes</h2>
         <div class="tab-1 resp-tab-content resp-tab-content-active" aria-labelledby="tab_item-0" style="display:block"> 
          <div class="facts"> 
           <div class="login"> 
            <input type="text" value="Search Address, Neighborhood, City or Zip" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search Address, Neighborhood, City or Zip';}" /> 
            <input type="submit" value="" /> 
           </div> 
          </div> 
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
    <h3><span>创建房屋</span></h3> 
    <!----> 
    <div class="menu-right"> 
     <ul class="menu"> 
      <li class="item1"><a href="#"> 导航<i class="glyphicon glyphicon-menu-down"> </i> </a> 
       <ul class="cute"> 
        <li class="subitem1"><a href="user_info">个人信息 </a></li> 
        <li class="subitem2"><a href="buy">租房 </a></li> 
        <li class="subitem3"><a href="create_home">房屋出租 </a></li> 
        <li class="subitem1"><a href="myroom">我的房屋 </a></li> 
        <li class="subitem2"><a href="single_test">我的订单</a></li> 
        <li class="subitem3"><a href="suggestion">客户反馈 </a></li> 
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
  <div class="feedback"> 
   <div class="container"> 
    <h3>填写房屋信息</h3> 
    <div class="feedback-top">
		    <form action="docreate_home" enctype="multipart/form-data" method="post">
            	<td>
            	<h4>房间名</h4>
				<input name="roomname" type="text"  placeholder="房间名"  required="">
                </td>
                <h4>价格</h4>
				<input name="price" type="text"  placeholder="价格" required="" >
                <h4>数量</h4>
				<input name="room_num" type="text"  placeholder="房间数量 "  required="">
                <h4>城市</h4>
				<select name="city" class="in-drop">
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
                <h4>房间类型</h4>
				<select name="room_type" class="in-drop">
					<option>单人间</option>
					<option>双人间</option>
					<option>多人间</option>
				</select>
                <h4>出租时长/天</h4>
				<select name="duration" class="in-drop">
					<option>1</option>
					<option>2</option>
                    <option>3</option>
					<option>4</option>
					<option>5</option>
					<option>6</option>
					<option>7</option>
					<option>8</option>
					<option>9</option>
					<option>10</option>
					<option>11</option>
					<option>12</option>
					<option>13</option>
					<option>14</option>
					<option>15</option>
					<option>16</option>
					<option>17</option>
					<option>18</option>
					<option>19</option>
					<option>20</option>
				</select>
                <h4>详细地址</h4>
                <textarea  name="address" placeholder="详细地址" requried=""></textarea>
                <h4>房屋描述</h4>
				<textarea  name="description" placeholder="具体信息" requried=""></textarea>
				<h4>上传图片</h4>
            	   <input type="file" name="file1"><br/>
            	   <input type="file" name="file2"><br/>
            	   <input type="file" name="file3"><br/>
            	   <input type="file" name="file4"><br/>
				   <label class="hvr-sweep-to-right">
	           	      <input type="submit" value="发布">
	               </label>
			</form>
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