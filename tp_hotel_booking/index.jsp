<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>HOTEL RESERVATION | Home page</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- ////////////////////////////// -->
        <style type="text/css">
			.tm-search-form {
				height: 260px
			}
	
			#tm-section-search {
				position: relative;
				left: 50%;
				margin-left: -440px;
			}
			

		</style>
		 <!-- ////////////////////////////// -->
		        
        <!-- ////////////////////////////// -->

		<!-- load stylesheets -->
		<link rel="stylesheet" type="text/css" href="/tp_hotel_booking/assets/css/style.css">
	  	<link rel="stylesheet" type="text/css" href="/tp_hotel_booking/assets/css/datepicker.css"/>
	    <link rel="stylesheet" type="text/css" href="/tp_hotel_booking/assets/css/slick.css"/>
	    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/templatemo-style.css">                                   <!-- Templatemo style -->

        <!-- ////////////////////////////// -->



        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico  the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/normalize.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/fontello.css">
        <link href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="/tp_hotel_booking/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="/tp_hotel_booking/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/price-range.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.theme.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/style.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/responsive.css">
        
        

    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->


        <div class="header-connect">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-8  col-xs-12">
                        <div class="header-half header-call">
                            <p>
                                <span><i class="pe-7s-call"></i> +82 10-2780-0336</span>
                                <span><i class="pe-7s-mail"></i> yung21@naver.com</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                        <div class="header-half header-social">
                            <ul class="list-inline">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-vine"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>         
        <!--End top header -->

        <nav class="navbar navbar-default ">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="./index.do"><img src="" alt="">로고이미지</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse yamm" id="navigation">
                    <c:choose>
	                	<c:when test="${sessionScope.email == null }">
		                    <div class="button navbar-right">
		                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('login.do')" data-wow-delay="0.4s">로그인</button>
		                        <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('register.do')" data-wow-delay="0.5s">회원가입</button>
		                    </div>
		                </c:when>
		                <c:when test="${sessionScope.email != null }">
		                    <div class="button navbar-right">
		                        <button class="navbar-btn nav-button wow bounceInRight login" onclick=" window.open('mypage.do')" data-wow-delay="0.4s">마이페이지</button>
		                        <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('LogoutAction.do')" data-wow-delay="0.5s">로그아웃</button>
		                    </div>
		                </c:when>
                    </c:choose>

                    <ul class="main-nav nav navbar-nav navbar-right">
						<li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="./index.do">Home</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="./aboutus.do">About Us</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="./reservation1.do">Reservation</a></li>
                        <li class="wow fadeInDown" data-wow-delay="0.1s"><a class="" href="./board.do">Board</a></li> 
                        <li class="wow fadeInDown" data-wow-delay="0.4s"><a href="./contact.do">Contact</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">
 
                    <div class="item"><img src="C:\Users\kosta\Desktop\수업관련pdf\5.JSP_Sevlet\labs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\tp_hotel_booking/assets/img/slide1/hotel-001.jpg" alt="HotelMain1"></div>
                    <div class="item"><img src="C:\Users\kosta\Desktop\수업관련pdf\5.JSP_Sevlet\labs\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\tp_hotel_booking/assets/img/slide1/hotel-002.jpg" alt="HotelMain2"></div>

                </div>
            </div>
            <div class="container slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>3팀이 만든 호텔예약 사이트 입니다.</h2>
                        <p>kosta 자바웹개발 200기수의 중간 프로젝트 결과물 입니다. 다 때려치고 호캉스를 즐기세요.~~~</p>
     

<!-- ///////////추가//////////// -->

	      <div class="row tm-banner-row" id="tm-section-search">
					<form action="index.html" method="get"
						class="tm-search-form tm-section-pad-2">
						<div class="form-row tm-search-form-row">
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
								<label for="inputCity" ><font color="#878787"> Your Destination </font></label> <input
									name="destination" type="text" class="form-control" id="inputCity"
									placeholder="Type your destination...">
							</div>
							<div class="form-group tm-form-group tm-form-group-1">
								<div
									class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
									<label for="inputRoom">How many rooms?</label> <select name="room"
										class="form-control tm-select" id="inputRoom">
										<option value="1" selected>1 Room</option>
										<option value="2">2 Rooms</option>
										<option value="3">3 Rooms</option>
										<option value="4">4 Rooms</option>
										<option value="5">5 Rooms</option>
										<option value="6">6 Rooms</option>
										<option value="7">7 Rooms</option>
										<option value="8">8 Rooms</option>
										<option value="9">9 Rooms</option>
										<option value="10">10 Rooms</option>
									</select>
								</div>
								<div
									class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
									<label for="inputAdult">Adult</label> <select name="adult"
										class="form-control tm-select" id="inputAdult">
										<option value="1" selected>1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
									</select>
								</div>
								<div
									class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
				
									<label for="inputChildren">Children</label> <select name="children"
										class="form-control tm-select" id="inputChildren">
										<option value="0" selected>0</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
									</select>
								</div>
							</div>
						</div>
						<!-- form-row -->
						<div class="form-row tm-search-form-row">
				
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
								<label for="inputCheckIn">Check In Date</label> <input
									name="check-in" type="text" class="form-control" id="inputCheckIn"
									placeholder="Check In">
							</div>
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
								<label for="inputCheckOut">Check Out Date</label> <input
									name="check-out" type="text" class="form-control"
									id="inputCheckOut" placeholder="Check Out">
							</div>
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
								<label for="btnSubmit">&nbsp;</label>
								<button type="submit"
									class="btn btn-primary tm-btn tm-btn-search text-uppercase"
									id="btnSubmit">Check Availability</button>
							</div>
						</div>
					</form>
				</div> <!-- row -->	

                 
<!-- /////////////////////// -->
               </div>
        	</div>
    	</div>
	</div>

        <!-- property area -->
        <div class="content-area recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>가장 저렴한 방</h2>
                        <p>현재 예약할 수 있는 방중에 가격이 가장 저렴한 방 입니다.</p>
                    </div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="/tp_hotel_booking/assets/img/demo/property-1.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >DB에서 가져온 방1 </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="/tp_hotel_booking/assets/img/demo/property-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >DB에서 가져온 방2 </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="/tp_hotel_booking/assets/img/demo/property-3.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >DB에서 가져온 방3 </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="/tp_hotel_booking/assets/img/demo/property-4.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >DB에서 가져온 방4 </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>


                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="/tp_hotel_booking/assets/img/demo/property-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >DB에서 가져온 방5 </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="/tp_hotel_booking/assets/img/demo/property-4.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >DB에서 가져온 방6 </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="/tp_hotel_booking/assets/img/demo/property-3.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >Super nice villa </a></h5>
                                    <div class="dot-hr"></div>
                                    <span class="pull-left"><b>Area :</b> 120m </span>
                                    <span class="proerty-price pull-right">$ 300,000</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-tree more-proerty text-center">
                                <div class="item-tree-icon">
                                    <i class="fa fa-th"></i>
                                </div>
                                <div class="more-entry overflow">
                                    <h5><a href="property-1.html" >CAN'T DECIDE ? </a></h5>
                                    <h5 class="tree-sub-ttl">Show all properties</h5>
                                    <button class="btn border-btn more-black" value="All properties">All properties</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!--Welcome area -->
      
        <!--TESTIMONIALS -->
       
        <!-- Count area -->
      
        <!-- boy-sale area -->      

        <!-- Footer area-->
        <div class="footer-area">

            <div class=" footer">
                <div class="container">
                    <div class="row">

                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>About us </h4>
                                <div class="footer-title-line"></div>

                                <img src="/tp_hotel_booking/assets/img/footer-logo.png" alt="" class="wow pulse" data-wow-delay="1s">
                                <p>KOSTA 자바웹개발 교육 200기 3팀이 개발한 호텔예약 사이트 입니다.</p>
                                <ul class="footer-adress">
                                    <li><i class="pe-7s-map-marker strong"> </i>가산디지털단지역 신한이노플렉스 2층</li>
                                    <li><i class="pe-7s-mail strong"> </i> yung21@naver.com</li>
                                    <li><i class="pe-7s-call strong"> </i> +82 10-2780-0336</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Quick links </h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-menu">
                                    <li><a href="reservation1.html">Reservation</a></li> 
                                    <li><a href="board.html">Board</a>  </li> 
                                    <li><a href="contact.html">Contact</a></li>                                   
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer">
                                <h4>Last Hotel</h4>
                                <div class="footer-title-line"></div>
                                <ul class="footer-blog">
                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="/tp_hotel_booking/assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="/tp_hotel_booking/assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 

                                    <li>
                                        <div class="col-md-3 col-sm-4 col-xs-4 blg-thumb p0">
                                            <a href="single.html">
                                                <img src="/tp_hotel_booking/assets/img/demo/small-proerty-2.jpg">
                                            </a>
                                            <span class="blg-date">12-12-2016</span>

                                        </div>
                                        <div class="col-md-8  col-sm-8 col-xs-8  blg-entry">
                                            <h6> <a href="single.html">Add news functions </a></h6> 
                                            <p style="line-height: 17px; padding: 8px 2px;">Lorem ipsum dolor sit amet, nulla ...</p>
                                        </div>
                                    </li> 


                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                            <div class="single-footer news-letter">
                                <h4>Google Search</h4>
                                <div class="footer-title-line"></div>
                                <p>구글 검색을 굳이 여기서 해야하는진 모르겠지만, 구글 검색도 할 수 있어요.</p>

                                <form>
                                    <div class="input-group">
                                        <input class="form-control" type="text" placeholder="E-mail ... ">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary subscribe" type="button"><i class="pe-7s-paper-plane pe-2x"></i></button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </form> 

                                <div class="social pull-right"> 
                                    <ul>
                                        <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i class="fa fa-twitter"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec" data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec" data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                        <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec" data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                    </ul> 
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="footer-copy text-center">
                <div class="container">
                    <div class="row">
                        <div class="pull-left">
                            <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016  </span> 
                        </div> 
                        <div class="bottom-menu pull-right"> 
                            <ul> 
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.3s">Property</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                                <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <script src="/tp_hotel_booking/assets/js/modernizr-2.6.2.min.js"></script>

        <script src="/tp_hotel_booking/assets/js/jquery-1.10.2.min.js"></script>
        <script src="/tp_hotel_booking/bootstrap/js/bootstrap.min.js"></script>
        <script src="/tp_hotel_booking/assets/js/bootstrap-select.min.js"></script>
        <script src="/tp_hotel_booking/assets/js/bootstrap-hover-dropdown.js"></script>

        <script src="/tp_hotel_booking/assets/js/easypiechart.min.js"></script>
        <script src="/tp_hotel_booking/assets/js/jquery.easypiechart.min.js"></script>

        <script src="/tp_hotel_booking/assets/js/owl.carousel.min.js"></script>        

        <script src="/tp_hotel_booking/assets/js/wow.js"></script>

        <script src="/tp_hotel_booking/assets/js/icheck.min.js"></script>
        <script src="/tp_hotel_booking/assets/js/price-range.js"></script>

        <script src="/tp_hotel_booking/assets/js/main.js"></script>
        
     <!-- //////////추가/////////// -->   
         <script src="/tp_hotel_booking/assets/js/datepicker.min.js"></script>                <!-- https://github.com/qodesmith/datepicker -->
        
     
     <script> 
        
        /* DOM is ready
        ------------------------------------------------*/
        $(function(){

        	// Date Picker in Search form
            var pickerCheckIn = datepicker('#inputCheckIn');
            var pickerCheckOut = datepicker('#inputCheckOut');
        });

    </script>    
    
     <!-- //////////추가/////////// -->    
    </body>
</html>