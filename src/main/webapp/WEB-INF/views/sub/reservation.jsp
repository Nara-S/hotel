<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700,900|Rubik:300,400,700" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/magnific-popup.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/css/bootstrap-datepicker.min.css">

<!-- Style css -->
<link rel="stylesheet" href="../css/style.css">

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>

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
					<h1>Reservation</h1>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //sub_banner -->

<!-- body -->
<div class="content">
	<div class="sub_wrapper">
		<div class="reservation_box">
			<form class="reserv_l_box">
				<h3 class="reserv_tt">Reservaion Form</h3>
				<div class="reserv_ip_2">
					<div class="r_ip_box">
						<label for="">체크인</label>
						<div style="position: relative;">
							<span class="fa fa-calendar icon" style="position: absolute; right: 10px; top: 16px;"></span>
							<input type='text' class="form-control" id='arrival_date' placeholder="체크인"/>
						</div>
					</div>
					<div class="r_ip_box">
						<label for="">체크아웃</label>
						<div style="position: relative;">
							<span class="fa fa-calendar icon" style="position: absolute; right: 10px; top: 16px;"></span>
							<input type='text' class="form-control" id='departure_date' placeholder="체크아웃"/>
						</div>
					</div>
				</div>
				<div class="reserv_ip_1">
					<div class="r_ip_box">
						<label for="room">객실선택</label>
						<select name="" id="room" class="form-control">
							<option value="">스탠다드 트윈</option>
							<option value="">디럭스 더블</option>
							<option value="">디럭스 트윈</option>
							<option value="">디럭스 온돌</option>
							<option value="">슈퍼 디럭스 테라스</option>
						</select>
					</div>
				</div>
				<div class="reserv_ip_3">
					<div class="r_ip_box">
						<label for="room">객실</label>
						<select name="" id="room" class="form-control">
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
					<div class="r_ip_box">
						<label for="room">성인</label>
						<select name="" id="room" class="form-control">
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
					<div class="r_ip_box">
						<label for="room">아동</label>
						<select name="" id="room" class="form-control">
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
				</div>
				<div class="reserv_ip_3">
					<div class="r_ip_box">
						<label for="room">베드추가</label>
						<select name="" id="room" class="form-control">
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
					<div class="r_ip_box">
						<label for="room">성인조식</label>
						<select name="" id="room" class="form-control">
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
					<div class="r_ip_box">
						<label for="room">아동조식</label>
						<select name="" id="room" class="form-control">
							<option value="">1</option>
							<option value="">2</option>
							<option value="">3</option>
							<option value="">4</option>
							<option value="">5</option>
						</select>
					</div>
				</div>
				<div class="reserv_ip_1">
					<div class="r_ip_box">
						<label for="message">문의사항</label>
		                <textarea name="message" id="message" class="form-control " cols="30" rows="8" placeholder="호텔 이용 시 문의하실 사항이 있으시면 입력해 주세요."></textarea>
					</div>
				</div>
				<input type="submit" value="RESERVE NOW" class="btn btn-primary">
			</form>
			<div class="reserv_r_box">
				<h3 class="reserv_tt">Featured Room</h3>
				<div class="reserv_img">
					<img alt="객실사진" src="${pageContext.request.contextPath}/resources/images/room_deluxeDouble.jpg">
				</div>
				<div class="reserv_info_txt">
					<h4>Deluxe Room</h4>
					<ul>
						<li><span class="ion-ios-people-outline"></span>2명</li>
						<li><span class="ion-ios-crop"></span>26m<sup>2</sup></li>
					</ul>
					<p>
						바다가 보이는 테라스에 모던한 디자인과 따뜻함이<br>
						공존하는 인테리어 오륙도와 광안대교를 넘나드는<br>
						아이티윌호텔만의 해안선 광경은 다른 어느곳에서도<br>
						찾을 수 없는 감동을 드립니다.
					</p>
					<input type="button" value="ROOM VIEW" class="btn btn-primary" onclick="../sub/room_detail.jsp">
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
<script>
      
      $('#arrival_date, #departure_date').datepicker({});

    </script>
</body>
</html>