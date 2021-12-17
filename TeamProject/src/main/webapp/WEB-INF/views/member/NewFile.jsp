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
  <script>
  
  var isPasswdCheck = false; 
  
  function checkPasswd(passwd) {
		// 8 ~ 16자리 영문자, 숫자, 특수문자(!@#$%) 검증(주의! 패턴 작성 시 문자열 지정 금지)
		var lengthRegex = /^[A-Za-z0-9!@#$%]{8,16}$/;
		var engUpperRegex = /[A-Z]/;
		var engLowerRegex = /[a-z]/;
		var digitRegex = /[0-9]/;
		var specRegex = /[!@#$%]/;
		
		// 자바스크립트를 통한 정규표현식 체크 문법 
		// 정규표현식패턴객체.exec(검증할문자열) => boolean 타입 결과 리턴
//		alert(typeof(lengthRegex));
		
		var element = document.getElementById("checkPasswdResult");
		
		if(lengthRegex.exec(passwd)) { // 전체 길이 판별 통과 시
			// 대문자, 소문자, 숫자, 특수문자를 각각 판별하여
			// 해당 항목이 존재할 경우 카운트 변수값을 1씩 증가시킨 후
			// 4점 : "안전" - 초록색
			// 3점 : "보통" - 주황색
			// 2점 : "위험" - 빨간색
			// 0점, 1점 : "사용불가" - 검정색
			var count = 0; // 정수값을 저장하여 요소별 체크마다 1씩 증가시킴
			
			if(engUpperRegex.exec(passwd)) count++; // 영문 대문자 판별
			if(engLowerRegex.exec(passwd)) count++; // 영문 소문자 판별
			if(digitRegex.exec(passwd)) count++; // 숫자 판별
			if(specRegex.exec(passwd)) count++; // 특수문자(!@#$%) 판별
			
			switch(count) { // count 변수 값에 따른 결과 출력
				case 4 : 
					element.innerHTML = '안전';
					element.style.color = 'green';
					isPasswdCheck = true; // 패스워드 양식 확인용 변수값을 true 로 변경
					break;
				case 3 : 
					element.innerHTML = '보통';
					element.style.color = 'orange';
					isPasswdCheck = true;
					break;
				case 2 : 
					element.innerHTML = '위험';
					element.style.color = 'red';
					isPasswdCheck = true;
					break;
				default :
					element.innerHTML = '사용불가';
					element.style.color = 'black';
					isPasswdCheck = false;
			}
		} else {
			element.innerHTML = "사용불가";
			element.style.color = 'black';
			isPasswdCheck = false;
		}
	}
  
        function check_pw(){
            if(document.getElementById('pass').value !='' && document.getElementById('passCh').value!=''){
                if(document.getElementById('pass').value==document.getElementById('passCh').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('passCh').value='';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>

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
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
            
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script><br>
<style type="text/css">
 #join-form-section{ width: auto; height:1300px; text-align: center; font-family: 'Nanum Gothic', sans-serif;}
 #join-form-wrap{ width:500px; height:1100px; margin: auto; text-align: center; border: 1px solid gray; border-radius: 5px;}
 #join-form{ text-align: center;}
 #form-div{ width: 400px; text-align:left; margin: 0px auto; font-size: 15px; font-family: 'Nanum Gothic', sans-serif;}
 
 p {}
 #member_year, #member_day, #member_month {width:120px; height:40px;}
 
 input { width:400px; height:40px; border: 1px solid #A67841; border-radius: 5px; font-family: 'Nanum Gothic', sans-serif;
        vertical-align: 10px; }
 select { width:400px; height:40px; border: 1px solid #A67841; border-radius: 5px; font-family: 'Nanum Gothic', sans-serif;
        vertical-align: 10px; }
 #email1, #email2 { width:150px; height:40px;}
 .zipcode { width:290px; height:40px;}
 .zip_search { width:105px; height:40px; background-color: #A67841; color: white; font-size:13px; float: right; }
input::placeholder {color: gray; font-style:; font-size: 10px; }
input[type='radio'] {
background-color: #red;
width: 20px;
height: 20px;
border-radius: 50%;
opacity: 100%;
margin: 10px;
border: none;

  &:checked {
    opacity: 1;
  }
}

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
  
     <br><p>아이디<br>
     <input type="text" id="member_id" name="member_id" class="zipcode" placeholder="아이디를 입력해주세요" required="required">
   <input type="button" id="member_id_check" class="zip_search" value="ID 중복 체크">  
    <p>비밀번호<br>
    <input type="password" id="pass" name="member_pass" onkeyup="checkPasswd(this.value)" placeholder="비밀번호를 입력해주세요" required>
    <span id = "checkPasswdResult" ></span>
    </p>
    <p>비밀번호 확인<br>
    <input type="password" id="passCh" name="member_passCh" onchange="check_pw()" placeholder="비밀번호를 한 번 더 입력해주세요" required>
    &nbsp;<span id = "check" ></span>
    </p>
    <p>이름<br>
    <input type="text" id="name" name="member_name" placeholder="이름을 입력해주세요" required>
    </p>
    <p>생년월일<br>
    <input type="text" id="member_year" name="year" placeholder="년(4자)">
    
   <select id="member_month" name="month" size="1">
      <option value="">월</option>
      <option value="/ 1 /">1</option>
      <option value="/ 2 /">2</option>
      <option value="/ 3 /">3</option>
      <option value="/ 4 /">4</option>
      <option value="/ 5 /">5</option>
      <option value="/ 6 /">6</option>
      <option value="/ 7 /">7</option>
      <option value="/ 8 /">8</option>
      <option value="/ 9 /">9</option>
      <option value="/ 10 /">10</option>
      <option value="/ 11 /">11</option>
      <option value="/ 12 /">12</option>
   </select>
   <input type="text" id="member_day" name="day" placeholder="일">
   </p>
     <p>성별<br>
     <input type="radio" id="gender1" name="member_gender" value="male"  >남성
     <input type="radio" id="gender2" name="member_gender" value="female"  >여성<br>
    <br><p>이메일 주소<br>
    <input type="text" id="email1" name="email1" placeholder="이메일을 입력해주세요" required>
    <input style="width:20px; border: none; background-color: white;" id="hi" type="text" placeholder=" @" disabled>  
    <input type="text" id="email2" name="email2" placeholder="이메일 주소를 입력해주세요" required>
    </p>
     <label>주소</label><br> <input type="text" id="sample4_postcode"  class="zipcode"  placeholder="우편번호" readonly required>
<input type="button" onclick="sample4_execDaumPostcode()" class="zip_search" name = "address1" value="우편번호 찾기" ><br>
<label></label><input type="text" id="sample4_roadAddress" name = "address1" placeholder="도로명주소" readonly required><br>
<input type="hidden" id="sample4_jibunAddress" placeholder="지번주소" readonly  name = "address2">
<span id="guide" style="color:#999;display:none"></span>
<label></label><input type="text" id="sample4_detailAddress" name = "address3" placeholder="상세주소" required>
<input type="hidden" id="sample4_extraAddress"  placeholder="참고항목">

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

   <br> <br><p>휴대폰 번호<br>
    <input type="text" id="mobile" name="member_phone" placeholder="휴대폰 번호를 입력해주세요" required>
    </p>
    
    </div>
    <br>
    <input type="submit" id="join" value="가입하기" style="color: white;" onClick= ><br>
  </form>
</div><!--login-form-wrap-->
</section>
<!-- //body -->


<!-- loader -->
<div id="loader" class="show fullscreen">
   <svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/>
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#f4b214"/>
   </svg>
</div>
<!-- //loader -->

<!-- footer -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- //footer -->
</body>
</html>