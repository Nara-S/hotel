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

<link rel="stylesheet" href="../css/bootstrap.css">
<link rel="stylesheet" href="../css/animate.css">
<link rel="stylesheet" href="../css/owl.carousel.min.css">

<link rel="stylesheet" href="../fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="../fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">

<!-- Style css -->
<link rel="stylesheet" href="../css/style.css">

<!-- script -->
<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../js/jquery-migrate-3.0.0.js"></script>
<script src="../js/popper.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/owl.carousel.min.js"></script>
<script src="../js/jquery.waypoints.min.js"></script>
<script src="../js/jquery.stellar.min.js"></script>

<script src="../js/jquery.magnific-popup.min.js"></script>
<script src="../js/magnific-popup-options.js"></script>

<script src="../js/main.js"></script>
<style type="text/css">

	#id_find_sec {width:1500px; height: 700px; margin:auto; background-color: white; text-align: center; vertical-align: middle;}
	#id_find_sec_div {width:1000px; height:500px;  display: inline-block; margin:100px; text-align: left; }	
	#id_find_sec_div2 {width:1000px; height:400px; border-top: 1px solid gray; display: inline-block; margin-top: 5px; padding-top: 15px;  }
	#id_find_sec_div3 {width:1000px; height:200px; border: 1px solid black; display: inline-block; margin-top: 20px; padding:70px;  }
	
	#id_div2{color:black; text-align: left; font-family: 'Nanum Gothic', sans-serif; font-size: 25px; }
	#id_div3{color:black; text-align: left; font-family: 'Nanum Gothic', sans-serif; font-size: 20px;}
	
	#form{ width:600px; height:50px; margin: auto; text-align: center;}
	#find_pw {width:500px; height:50px; font-size: 30px;}
	
	#button_div {width:1000px; text-align: center; padding: 30px;}
	#find {color: white; background-color: #A67841; width:200px; height:50px; border-radius: 5px; border-style: none;
			font-size: 20px; font-family: 'Nanum Gothic', sans-serif }
	
</style>
</head>
<body>
<!-- header -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- //header -->

<!-- sub_banner -->
<section class="site-hero overlay" data-stellar-background-ratio="0.5" style="background-image: url(../images/sub_banner.jpg);">
	<div class="container">
		<div class="row align-items-center site-hero-inner justify-content-center">
			<div class="col-md-12 text-center">
				<div class="mb-5 element-animate">
					<h1>?????????????????????</h1>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- //sub_banner -->

<!-- body -->
<section id="id_find_sec">
<div id="id_find_sec_div">
<span id="id_div2">???????????? ??????</span>
<div id="id_find_sec_div2">
<span id="id_div3">??????????????? ????????? ?????? ???????????? ????????? ?????????.</span>
<div id="id_find_sec_div3">

<form action="" id="form">
<input type="text" id="find_pw" name="id" placeholder="???????????? ??????????????? " required>

</form>
</div>
<div id="button_div">
<input type="submit" id="find" value="??????" onClick="location.href=''" >
</div>
???????????? ???????????? ????????????? <a href="<%=request.getContextPath() %>/member/find_Id.jsp">????????? ?????? ????????????</a>
</div>
</div>		
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