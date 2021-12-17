<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <header role="banner">
     
		<nav class="navbar navbar-expand-md navbar-dark bg-light">
			<div class="container">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/index">ITWILL HOTEL</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
			
				<div class="collapse navbar-collapse navbar-light" id="navbarsExample05">
					<ul class="navbar-nav ml-auto pl-lg-5 pl-0">
						<li class="nav-item">
							<a class="nav-link active" href="${pageContext.request.contextPath}/sub/rooms">Rooms</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/sub/facilities">Facilities</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/sub/notice">Notice</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/faq.jsp" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Community</a>
							<div class="dropdown-menu" aria-labelledby="dropdown04">
								<a class="dropdown-item" href="${pageContext.request.contextPath}/sub/faq">FAQ</a>
								<a class="dropdown-item" href="${pageContext.request.contextPath}/sub/qna">Q&A</a>
							</div>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/sub/location">location</a>
						</li>
<!-- 						<li class="nav-item dropdown"> -->
<!-- 							<a class="nav-link dropdown-toggle" href="rooms.html" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin</a> -->
<!-- 							<div class="dropdown-menu" aria-labelledby="dropdown04"> -->
<!-- 								<a class="dropdown-item" href="rooms.html">Room Videos</a> -->
<!-- 								<a class="dropdown-item" href="rooms.html">Presidential Room</a> -->
<!-- 								<a class="dropdown-item" href="rooms.html">Luxury Room</a> -->
<!-- 								<a class="dropdown-item" href="rooms.html">Deluxe Room</a> -->
<!-- 							</div> -->
<!-- 						</li> -->
					</ul>
					<ul class="navbar-nav ml-auto pl-lg-5 pl-0">
					    <li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/member/login">로그인</a>
					    </li>
						<li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/member/insert">회원가입</a>
					    </li>
					    <li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/member/myReservation">예약조회</a>
					    </li>
<%-- 					    <% --%>
<%-- 					    if(1 == 2){ %>  --%>
					    <li class="nav-item">
							<a class="nav-link" href="${pageContext.request.contextPath}/admin/adminPage">관리자페이지</a>
					    </li>
<%-- 					    <%} %> --%>
					</ul>
				</div>
			</div>
		</nav>
    </header>