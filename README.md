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

SELECT * FROM (SELECT ROWNUM RNUM, D_NO2, D_U_NAME, D_AVAILABLE, D_DATE, D_TITLE, D_CONTENT FROM (SELECT * FROM DASHBOARD where d_no1=0 ORDER BY D_DATE DESC, D_NO2 ASC));

insert into dashboard values(0, 1, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents', sysdate);
insert into dashboard values(0, 2, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents2', sysdate);
insert into dashboard values(0, 3, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 4, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 5, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 6, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 7, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 8, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 9, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 10, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 11, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 12, 1, '3team200th@gmail.com', 1, 1, 1, 1, 0, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 13, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);
insert into dashboard values(0, 14, 1, '3team200th@gmail.com', 1, 1, 1, 1, 1, 1, '', 'contents3', sysdate);

commit;
