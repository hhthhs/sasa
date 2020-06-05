<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html><head>
 <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>HOTEL RESERVATION | Home page</title>
    <meta name="description" content="GARO is a real-estate template" />
    <meta name="author" content="Kimarotec" />
    <meta
      name="keyword"
      content="html5, css, bootstrap, property, real-estate theme , bootstrap template"
    />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link
      href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800"
      rel="stylesheet"
      type="text/css"
    />

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <link rel="icon" href="favicon.ico" type="image/x-icon" />

    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/normalize.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/fontello.css" />
    <link
      href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
      rel="stylesheet"
    />
    <link href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet" />
    <link href="/tp_hotel_booking/assets/css/animate.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/bootstrap-select.min.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/icheck.min_all.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/price-range.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.carousel.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.theme.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.transitions.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/style.css" />
    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/responsive.css" />
</head>
<body>
	
	   <div id="preloader">
      <div id="status">&nbsp;</div>
    </div>
    <!-- Body content -->

    <div class="header-connect">
      <div class="container">
        <div class="row">
          <div class="col-md-5 col-sm-8 col-xs-12">
            <div class="header-half header-call">
              <p>
                <span><i class="pe-7s-call"></i> +82 10-2780-0336</span>
                <span><i class="pe-7s-mail"></i> yung21@naver.com</span>
              </p>
            </div>
          </div>
          <div
            class="col-md-2 col-md-offset-5 col-sm-3 col-sm-offset-1 col-xs-12"
          >
            <div class="header-half header-social">
              <ul class="list-inline">
                <li>
                  <a href="#"><i class="fa fa-facebook"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-twitter"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-vine"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-linkedin"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-dribbble"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-instagram"></i></a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--End top header -->

    <nav class="navbar navbar-default">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button
            type="button"
            class="navbar-toggle collapsed"
            data-toggle="collapse"
            data-target="#navigation"
          >
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.html"
            ><img src="" alt=""
          />로고 이미지</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse yamm" id="navigation">
				<c:choose>
					<c:when test="${sessionScope.email == null }">
						<div class="button navbar-right">
							<button class="navbar-btn nav-button wow bounceInRight login"
								onclick=" window.open('login.do')" data-wow-delay="0.4s">로그인</button>
							<button class="navbar-btn nav-button wow fadeInRight"
								onclick=" window.open('register.do')" data-wow-delay="0.5s">회원가입</button>
						</div>
					</c:when>
					<c:when test="${sessionScope.email != null }">
						<div class="button navbar-right">
							<button class="navbar-btn nav-button wow bounceInRight login"
								onclick=" window.open('mypage.do')" data-wow-delay="0.4s">마이페이지</button>
							<button class="navbar-btn nav-button wow fadeInRight"
								onclick=" window.open('LogoutAction.do')" data-wow-delay="0.5s">로그아웃</button>
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
        </div>
        <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
    </nav>
    <!-- End of nav bar -->

    <div class="page-head">
      <div class="container">
        <div class="row">
          <div class="page-head-content">
            <h1 class="page-title">About us</h1>
          </div>
        </div>
      </div>
    </div>
    <!-- End page header -->

    <div
      class="content-area blog-page padding-top-40"
      style="background-color: #fcfcfc; padding-bottom: 55px;"
    >
      <div class="container">
        <div class="row">
          <div class="blog-lst col-md-12 pl0">
            <section id="id-100" class="post single">
              <div class="post-header single">
                <div class="">
                  <h2 class="wow fadeInLeft animated">
                    고객과 함께 걸어가는 회사
                  </h2>
                  <div class="title-line wow fadeInRight animated"></div>
                </div>

                <div class="image wow fadeInRight animated">
                  <img
                    src="/tp_hotel_booking/assets/img/blog2.jpg"
                    class="img-responsive"
                    alt="Example blog post alt"
                  />
                </div>
              </div>

              <div
                id="post-content"
                class="post-body single wow fadeInLeft animated"
              >
                <p>
                  <strong>Pellentesque habitant morbi tristique</strong>
                  senectus et netus et malesuada fames ac turpis egestas.
                  Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor
                  sit amet, ante. Donec eu libero sit amet quam egestas semper.
                  <em>Aenean ultricies mi vitae est.</em> Mauris placerat
                  eleifend leo. Quisque sit amet est et sapien ullamcorper
                  pharetra. Vestibulum erat wisi, condimentum sed,
                  <code>commodo vitae</code>, ornare sit amet, wisi. Aenean
                  fermentum, elit eget tincidunt condimentum, eros ipsum rutrum
                  orci, sagittis tempus lacus enim ac dui.
                  <a href="#">Donec non enim</a> in turpis pulvinar facilisis.
                  Ut felis.
                </p>
                <p>
                  <img
                    src="/tp_hotel_booking/assets/img/blog10.jpg"
                    class="img-responsive"
                    alt="Example blog post alt"
                  />
                </p>

                <h2>Header Level 2</h2>
                <ol>
                  <li>
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                  </li>
                  <li>Aliquam tincidunt mauris eu risus.</li>
                </ol>

                <blockquote>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    Vivamus magna. Cras in mi at felis aliquet congue. Ut a est
                    eget ligula molestie gravida. Curabitur massa. Donec
                    eleifend, libero at sagittis mollis, tellus est malesuada
                    tellus, at luctus turpis elit sit amet quam. Vivamus pretium
                    ornare est.
                  </p>
                </blockquote>

                <h3>Header Level 3</h3>

                <p>
                  Pellentesque habitant morbi tristique senectus et netus et
                  malesuada fames ac turpis egestas. Vestibulum tortor quam,
                  feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
                  libero sit amet quam egestas semper. Aenean ultricies mi vitae
                  est. Mauris placerat eleifend leo. Quisque sit amet est et
                  sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum
                  sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum,
                  elit eget tincidunt
                </p>

                <ul>
                  <li>
                    Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
                  </li>
                  <li>Aliquam tincidunt mauris eu risus.</li>
                </ul>
                <p>
                  <img
                    src="/tp_hotel_booking/assets/img/blog.jpg"
                    class="img-responsive"
                    alt="Example blog post alt"
                  />
                </p>
                <p>
                  Pellentesque habitant morbi tristique senectus et netus et
                  malesuada fames ac turpis egestas. Vestibulum tortor quam,
                  feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
                  libero sit amet quam egestas semper. Aenean condimentum, eros
                  ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec
                  non enim in turpis pulvinar facilisis. Ut felis. Praesent
                  dapibus, neque id cursus faucibus, tortor neque egestas augue,
                  eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam
                  dui mi, tincidunt quis, accumsan porttitor, facilisis luctus,
                  metus
                </p>
              </div>
            </section>

            <section class="about-autor"></section>
          </div>
        </div>
      </div>
    </div>

    <!--TESTIMONIALS -->
    <div
      class="testimonial-area recent-property"
      style="background-color: #fcfcfc; padding-bottom: 15px;"
    >
      <div class="container">
        <div class="row">
          <div
            class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title"
          >
            <!-- /.feature title -->
            <h2>Our Customers Said</h2>
          </div>
        </div>

        <div class="row">
          <div class="row testimonial">
            <div class="col-md-12">
              <div id="testimonial-slider">
                <div class="item">
                  <div class="client-text">
                    <p>
                      어서오세요. 환상의 세계에 오신 것을 환연합니다.
                    </p>
                    <h4><strong>Mr.tak</strong><i>상무이사</i></h4>
                  </div>
                  <div class="client-face wow fadeInRight" data-wow-delay=".9s">
                    <img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
                  </div>
              </div>
              <div class="item">
                <div class="client-text">
                  <p>
                   제4차산업혁명 세계에 오신 것을 환영합니다.
                  </p>
                  <h4><strong>Mr.jin </strong><i>회장</i></h4>
                </div>
                <div class="client-face wow fadeInRight" data-wow-delay=".9s">
                  <img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
                </div>
            </div>
            <div class="item">
                <div class="client-text">
                  <p>
                    제4차산업혁명 세계에 오신 것을 환영합니다!!!!
                  </p>
                  <h4><strong>Ohidul Islam, </strong><i>개발자</i></h4>
                </div>
                <div class="client-face wow fadeInRight" data-wow-delay=".9s">
                  <img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
                </div>
            </div>
            <div class="item">
                <div class="client-text">
                  <p>
                   !!!!!
                  </p>
                  <h4><strong>Mr.mo </strong><i>개발자</i></h4>
                </div>
                <div class="client-face wow fadeInRight" data-wow-delay=".9s">
                  <img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
                </div>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
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
                                <li><a class="wow fadeInUp animated" href="index.html" data-wow-delay="0.2s">Home</a></li>
                                <li><a class="wow fadeInUp animated" href="aboutus.html" data-wow-delay="0.3s">AboutUs</a></li>
                                <li><a class="wow fadeInUp animated" href="reservation.html" data-wow-delay="0.4s">Reservation</a></li>
                                <li><a class="wow fadeInUp animated" href="board.html" data-wow-delay="0.6s">Board</a></li>
                                <li><a class="wow fadeInUp animated" href="contact.html" data-wow-delay="0.6s">Contact</a></li>
                            </ul> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer area-->  

 

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
</body>
</html>