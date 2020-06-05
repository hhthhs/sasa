# jsp 수정 작업 

배정모가 할 것
index.jsp
login.jsp
register.jsp
change-sendemail.jsp

형님이 할 것
aboutus.jsp
contact.jsp
reservation1.jsp

경로 바꾸는 법

컨트롤+f(찾기) 해서

1.
"assets
->
"/tp_hotel_booking/assets
2.
"bootstrap
->
"/tp_hotel_booking/bootstrap

세션 추가
1.
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

2.
컨트롤+f해서 회원가입 찾으세요 그리고 바꾸기
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

형님 실수했습니다. 이거 수정해주세용
<div id="bg-slider" class="owl-carousel owl-theme">
 
                    <div class="item"><img src="/tp_hotel_booking/assets/img/slide1/hotel-001.jpg" alt="HotelMain1"></div>
                    <div class="item"><img src="/tp_hotel_booking/assets/img/slide1/hotel-002.jpg" alt="HotelMain2"></div>

                </div>
