<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LuxuryHotel a Hotel Template</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">

<!-- Style css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

<!-- script -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-3.0.0.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/magnific-popup-options.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
</head>
<body>
<!-- header -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- //header -->

<!-- sub_banner -->
<section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(${pageContext.request.contextPath}/resources/images/sub_banner.jpg);">
	<div class="container">
		<div class="row align-items-center site-hero-inner justify-content-center">
			<div class="col-md-12 text-center">
				<div class="mb-5 element-animate">
					<h1>My<br>Reservation</h1>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //sub_banner -->


		
<!-- body -->
<div class="content">
	<!-- left menu -->
		<div class="left_menu">
			<div class="left_menu_myName">
				아이티윌님
			</div>
			<ul class="left_menu_list">
				<li class="left_m_l_li"><a href="${pageContext.request.contextPath}/member/myReservation.jsp">나의예약 현황</a></li>
				<li class="left_m_l_li"><a href="${pageContext.request.contextPath}/member/myInfo.jsp">회원정보 수정</a></li>
				<li class="left_m_l_li"><a href="${pageContext.request.contextPath}/member/withdrawal.jsp">회원탈퇴</a></li>
			</ul>
		</div>
	<!-- //left menu -->
	<div class="member_wrapper">
		<div class="tab">
		  <button class="tablinks" onclick="openReservation(event, 'book')">투숙예정</button>
		  <button class="tablinks" onclick="openReservation(event, 'old')">투숙완료</button>
		  <button class="tablinks" onclick="openReservation(event, 'cancle')">투숙취소</button>
		</div>
		
		<!-- Tab content -->
		<div id="book" class="tabcontent" style="display:block; padding:0;">
			<div class="my_reserv_box">
				<dl class="m_reserv_top">
					<dt>예약번호</dt>
					<dd>0123456789</dd>
				</dl>
				<div class="m_reserv_middle">
					<dl>
						<dt>체크인</dt>
						<dd>2021/12/24</dd>
					</dl>
					<dl>
						<dt>체크아웃</dt>
						<dd>2021/12/26</dd>
					</dl>
					<dl>
						<dt>객실</dt>
						<dd>디럭스 더블</dd>
					</dl>
				</div>
				<div class="m_reserv_bottom">
					<p>
					주소 : 부산광연시 부산진고 동천로 109, 삼한골드빌라 아이티윌 호텔<br>
					문의 : 051-123-4567					
					</p>
				</div>
			</div>
		</div>
		
		<div id="old" class="tabcontent" style=" padding:0;">
		  <div class="my_reserv_box">
				<dl class="m_reserv_top">
					<dt>예약번호</dt>
					<dd>0123456789</dd>
				</dl>
				<div class="m_reserv_middle">
					<dl>
						<dt>체크인</dt>
						<dd>2021/12/24</dd>
					</dl>
					<dl>
						<dt>체크아웃</dt>
						<dd>2021/12/26</dd>
					</dl>
					<dl>
						<dt>객실</dt>
						<dd>디럭스 더블</dd>
					</dl>
				</div>
				<div class="m_reserv_bottom">
					<p>
					주소 : 부산광연시 부산진고 동천로 109, 삼한골드빌라 아이티윌 호텔<br>
					문의 : 051-123-4567					
					</p>
				</div>
			</div>
		</div>
		
		<div id="cancle" class="tabcontent" style=" padding:0;">
		  <div class="my_reserv_box">
				<dl class="m_reserv_top">
					<dt>예약번호</dt>
					<dd>0123456789</dd>
				</dl>
				<div class="m_reserv_middle">
					<dl>
						<dt>체크인</dt>
						<dd>2021/12/24</dd>
					</dl>
					<dl>
						<dt>체크아웃</dt>
						<dd>2021/12/26</dd>
					</dl>
					<dl>
						<dt>객실</dt>
						<dd>디럭스 더블</dd>
					</dl>
				</div>
				<div class="m_reserv_bottom">
					<p>
					주소 : 부산광연시 부산진고 동천로 109, 삼한골드빌라 아이티윌 호텔<br>
					문의 : 051-123-4567					
					</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- //body -->

<!-- footer -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- //footer -->

<!-- loader -->
<div id="loader" class="show fullscreen">
	<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
		<circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/>
	</svg>
</div>
<!-- //loader -->
<!-- tab script -->
<script>
function openReservation(evt, reservationType) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(reservationType).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
</body>
</html>