﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

<head>

	 <base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1" name="viewport">

    <!-- ========== SEO ========== -->
    <title>Single Room</title>
    <meta content="" name="description">
    <meta content="" name="keywords">
    <meta content="" name="author">

    <!-- ========== FAVICON ========== -->
    <link rel="apple-touch-icon-precomposed" href="images/favicon-apple.png" />
    <link rel="icon" href="images/favicon.png">

    <!-- ========== STYLESHEETS ========== -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="revolution/css/layers.css" rel="stylesheet" type="text/css" />
    <link href="revolution/css/settings.css" rel="stylesheet" type="text/css" />
    <link href="revolution/css/navigation.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-select.min.css" rel="stylesheet" type="text/css">
    <link href="css/animate.min.css" rel="stylesheet" type="text/css">
    <link href="css/famfamfam-flags.css" rel="stylesheet" type="text/css">
    <link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
    <link href="css/owl.carousel.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/responsive.css" rel="stylesheet" type="text/css">

    <!-- ========== ICON FONTS ========== -->
    <link href="fonts/font-awesome.min.css" rel="stylesheet">
    <link href="fonts/flaticon.css" rel="stylesheet">

    <!-- ========== GOOGLE FONTS ========== -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900%7cRaleway:400,500,600,700" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

    <div id="smoothpage" class="wrapper">

        <!-- ========== TOP MENU ========== -->
        <div class="top_menu">
            <div class="container">
                <div class="welcome_mssg hidden-xs">
                    Welcome to Golden Morning Holiday Hotel
                </div>
                <ul class="top_menu_right">
                    <li><i class="fa fa-phone"></i><a href="tel:17853312640"> 178-5331-2640 </a></li>
                    <li class="email hidden-xxs"><i class="fa fa-envelope-o "></i> <a href="mailto:contact@site.com">axuhongbo@126.com</a></li>
                    <li class="language-switcher">
                        <nav class="dropdown">
                            <a href="#" class="dropdown-toggle select" data-hover="dropdown" data-toggle="dropdown">
                                <i class="famfamfam-flag-gb "></i>English<b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#"><i class="famfamfam-flag-gr"></i>Ελληνικά</a></li>
                                <li><a href="#"><i class="famfamfam-flag-it"></i>Italiano</a></li>
                                <li><a href="#"><i class="famfamfam-flag-de"></i>Deutsch</a></li>
                                <li><a href="#"><i class="famfamfam-flag-fr"></i>Français</a></li>
                                <li><a href="#"><i class="famfamfam-flag-es"></i>Español</a></li>
                            </ul>
                        </nav>
                    </li>
                </ul>
            </div>
        </div>

        <!-- ========== HEADER ========== -->
        <header class="fixed">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle mobile_menu_btn" data-toggle="collapse" data-target=".mobile_menu" aria-expanded="false">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">
                        <img src="images/logo.svg" height="32" alt="Logo">
                    </a>
                </div>
                <nav id="main_menu" class="mobile_menu navbar-collapse">
                    <ul class="nav navbar-nav">
						<li><a href="index.html">HOME</a></li>
						<li><a href="about-us.html">ABOUT US</a></li>
						<li><a href="room.html">ROOM</a></li>
						<li><a href="rooms-list.html">LIST</a></li>
                        <li><a href="contact.html">CONTACT US</a></li>
                        <li><a href="blog.html">BLOG</a></li>
                    </ul>
                </nav>
            </div>
        </header>

        <!-- =========== PAGE TITLE ========== -->
        <div class="page_title gradient_overlay" style="background: url(images/page_title_bg.jpg);">
            <div class="container">
                <div class="inner">
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <h1>Single Room</h1>
                            <ol class="breadcrumb">
                                <li><a href="index.html">Home</a></li>
                                <li>Rooms</li>
                                <li>Single Room</li>
                            </ol>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="price">
                                <div class="inner">
                                    €90 <span>per night</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- =========== MAIN ========== -->
        <main id="room_page">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="sidebar">
                            <aside class="widget">
                                <div class="vbf">
                                    <h2 class="form_title"><i class="fa fa-calendar"></i> 个人信息</h2>
                                    <form id="booking-form" class="inner">
                                        <div class="form-group">
                                         	   用户名：<input class="form-control" name="booking-name" value="${showuser.getUsername()}" type="text">
                                        </div>
                                        <div class="form-group">
                                           	 手机：<input class="form-control" name="booking-phone" value="${showuser.getPhone()}" type="text">
              	                          </div>
                                        <div class="form-group">
                                          	  年龄：<input class="form-control" name="booking-num" value="${showuser.getAge()}" type="text">
                                        </div>
                                        
										<div class="form-group">
                                          		  性别：<input class="form-control" name="booking-num" value="${showuser.getSex() }" type="text">
											
                                        </div>
                                        <div class="form-group">
                                            <a href="<%=request.getContextPath() %>/toupdate?userid=${showuser.getUserid()}" class="a_b_f">修改个人信息</a>
                                        </div>
                                    </form>
                                </div>
                            </aside>
                    
                            
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="slider">
                            <div id="slider-larg" class="owl-carousel image-gallery">
                                <!-- ITEM -->
                               
                                  <table cellspacing="20" boeder="1 soild">
																		<tr>
																			<th width="100px" >订单号</th>			
																			<th width="100px">入住人姓名</th>
																			<th width="100px">入住人数</th>																		
																			<th width="100px">入住时间</th>																			
																			<th width="100px">入住天数</th>
																			<th width="100px">联系方式</th>
																		
																		  </tr>
																		   <c:forEach var="order" items="${orderList}">
																		  <tr>
																			<td width="100px">${order.getOrderid() }</td>
																			<td width="100px">${order.getNames() }</td>
																			<td width="100px">${order.getMany() }</td>
																			<td width="100px">${order.getCreatetime() }</td>
																			<td width="100px">${order.getDays() }</td>
																			<td width="100px">${order.getPhone() }</td>
																		  </tr>
																		  </c:forEach>
			
								    </table>
												
												
											
                                
                                </div>
                            </div>
                          
                        </div>
 
                    </div>
                </div>
            </div>
        </main>

        <!-- ========== FOOTER ========== -->
        <footer>
            <div class="inner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 widget">
                            <div class="about">
                                <a href="index.html"><img class="logo" src="images/logo.svg" height="32" alt="Logo"></a>
                           		     <p>我们的服务宗旨是：提供让您满意的服务！</p>
                                    <p>如有任何疑问可以咨询我们！</p>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 widget">
                            <h5>最新消息</h5>
                            <ul class="blog_posts">
                                <li><a href="blog-post.html">Live your myth in shandong</a> <small>AUGUST 13, 2019</small></li>
                                <li><a href="blog-post.html">Golden Morning Holiday Hotel in pictures</a> <small>AUGUST 16, 2019</small></li>
                                <li><a href="blog-post.html">Golden Morning Holiday Hotel family party</a> <small>SEPTEMBER 15, 2019</small></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-6 widget">
                            <h5>相关链接</h5>
                            <ul class="useful_links">
                                <li><a href="404.html">关于我们</a></li>
                                <li><a href="404.html">联系我们</a></li>
                                <li><a href="404.html">发展方向</a></li>
                                <li><a href="404.html">画廊</a></li>
                                <li><a href="404.html">地址</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-6 widget">
                            <h5>Contact Us</h5>
                            <address>
								<ul class="address_details">
									<li><i class="glyphicon glyphicon-map-marker"></i> zibo,zhangdian,shandong</li>
									<li><i class="glyphicon glyphicon-phone-alt"></i> Phone: 178-5331-2640 </li>
									<li><i class="fa fa-fax"></i> Fax: 178-5331-2640</li>
									<li><i class="fa fa-envelope"></i> Email: <a href="mailto:info@site.com">axuhongbo@126.com</a></li>
								</ul>
							</address>
                        </div>
                    </div>
                </div>
            </div>
            <div class="subfooter">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="copyrights">
                                Copyright &copy; 2019.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="social_media">
                                <a class="facebook" data-original-title="Facebook" data-toggle="tooltip" href="#"><i class="fa fa-facebook"></i></a>
                                <a class="twitter" data-original-title="Twitter" data-toggle="tooltip" href="#"><i class="fa fa-twitter"></i></a>
                                <a class="googleplus" data-original-title="Google Plus" data-toggle="tooltip" href="#"><i class="fa fa-google-plus"></i></a>
                                <a class="pinterest" data-original-title="Pinterest" data-toggle="tooltip" href="#"><i class="fa fa-pinterest"></i></a>
                                <a class="linkedin" data-original-title="Linkedin" data-toggle="tooltip" href="#"><i class="fa fa-linkedin"></i></a>
                                <a class="instagram" data-original-title="Instagram" data-toggle="tooltip" href="#"><i class="fa fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>

    <!-- ========== BACK TO TOP ========== -->
    <div id="back_to_top">
        <i class="fa fa-angle-up" aria-hidden="true"></i>
    </div>

    <!-- ========== NOTIFICATION ========== -->
    <div id="notification"></div>

    <!-- ========== JAVASCRIPT ========== -->
	<script type="text/javascript" src="/js/My97DatePicker/WdatePicker.js"></script>  

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <!---<script type="text/javascript" src="http://ditu.google.cn/maps/api/js?key=AIzaSyBDgMJEPio2qomUKV1iqlIufj4u2NVd3q4"></script>--->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-select.min.js"></script>
    <script type="text/javascript" src="js/jquery.smoothState.js"></script>
    <script type="text/javascript" src="js/moment.min.js"></script>
    <script type="text/javascript" src="js/morphext.min.js"></script>
    <script type="text/javascript" src="js/wow.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.thumbs.min.js"></script>
    <script type="text/javascript" src="js/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/jPushMenu.js"></script>
    <script type="text/javascript" src="js/isotope.pkgd.min.js"></script>
    <script type="text/javascript" src="js/countUp.min.js"></script>
    <script type="text/javascript" src="js/jquery.countdown.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
</body>

</html>
