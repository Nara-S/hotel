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
<script>
	//daum객체는 위에서 설정한 라이브러리 안쪽에 들어있다.
	function daumZipCode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 
						//실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 
						//이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 
						// 가져온다.
						// 사용자가 도로명 주소를 선택했을 경우         
						if (data.userSelectedType === 'R') { //R은 도로명 주소이다.
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress; //도로명 주소가 아니라면.. 지번주소.
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							} //도로명 주소일때는 법에 맞춰서 '동' 이름을 추가해야 한다.

							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}

							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						//5자리 새우편번호 사용
						document.getElementById('zipcode').value = data.zonecode;
						document.getElementById('address1').value = fullAddr; //address1에 확정된 주소값의 풀네임이 들어간다.

						// 커서를 상세주소 필드로 이동한다. 
						// 커서를 이동시켜서 깜빡이게끔 한다.
						document.getElementById('address2').focus();
					}
				}).open();
	}

</script>
<style type="text/css">
 #join-form-section{ width: auto; height:900px; text-align: center; font-family: 'Nanum Gothic', sans-serif;}
 #join-form-wrap{ width:500px; height:750px; margin: auto; text-align: center; border: 1px solid gray; border-radius: 5px;}
 #join-form{ text-align: center;}
 #form-div{ width: 400px; text-align:left; margin: 0px auto; font-size: 15px; font-family: 'Nanum Gothic', sans-serif;}
 
 p {}
 input { width:400px; height:40px; border: 1px solid #A67841; border-radius: 5px; font-family: 'Nanum Gothic', sans-serif;
 		 vertical-align: 10px; }
 #email1, #email2 { width:150px; height:40px;}
 .zipcode { width:290px; height:40px;}
 .addr_search { width:105px; height:40px; background-color: #A67841; color: white; font-size:13px; float: right; }
input::placeholder {color: gray; font-style:; font-size: 10px; }


</style>
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
					<h1>Join</h1>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //sub_banner -->

<!-- body -->
<section id="join-form-section"><br>
<p style="font: 25px bold;">회원 가입</p><br>
<div id="join-form-wrap">
  <form id="join-form" action="${pageContext.request.contextPath}/member/insertPro" method="post">
  <div id ="form-div" >
    <br><p>이메일 주소<br>
    <input type="text" id="email1" name="email1" placeholder="이메일을 입력해주세요" required>
    <input style="width:20px; border: none; background-color: white;" id="hi" type="text" placeholder=" @" disabled>  
    <input type="text" id="email2" name="email2" placeholder="이메일 주소를 입력해주세요" required>
    </p>
    <p>아이디<br>
    <input type="text" id="member_id" name="member_id" placeholder="이름을 입력해주세요" required>
    </p>
    <p>이름<br>
    <input type="text" id="member_name" name="member_name" placeholder="이름을 입력해주세요" required>
    </p>
    <p>비밀번호<br>
    <input type="password" id="member_pass" name="member_pass" placeholder="비밀번호를 입력해주세요" required>
    </p>
    <p>비밀번호 확인<br>
    <input type="password" id="member_passCh" name="member_passCh" placeholder="비밀번호를 한 번 더 입력해주세요" required>
    </p>
    <p>주소<br>
    <input type="text" name="zipcode" class="zipcode" id="zipcode" placeholder="우편 번호" required readonly="readonly">
	<input type="button" class="addr_search" onclick="daumZipCode()" value="주소 검색" ><br>
    <input id="address1" name="address1" placeholder="주소" required readonly="readonly"><br>
    <input type="text" id="address2" name="address2" placeholder="상세 주소를 입력하세요" required>
    <p>휴대폰 번호<br>
    <input type="text" id="mobile" name="mobile" placeholder="휴대폰 번호를 입력해주세요" required>
    </p>
    
    </div>
    <br>
    <input type="submit" id="join" value="가입하기" style="color: white;" onClick="location.href='login.jsp'" ><br>
  </form>
</div><!--login-form-wrap-->
</section>
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

</body>
</html>