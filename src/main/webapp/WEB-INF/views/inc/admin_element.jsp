<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="sidebar">
        <div class="sidebar-brand">
            <h2><a href="../admin/adminPage.jsp"><span>관리자페이지</span></a>
            </h2>
        </div>
        <div class="sidebar-menu">
            <ul>
                 <li>
                    <a class="active" href=""><span><i class="far fa-igloo"></i></span><span>회원관리</span></a>
                </li>
                <li>
                    <a href=""><span><i class="far fa-users"></i></span><span>객실현황</span></a>
                </li>
                <li>
                    <a href=""><span><i class="far fa-clipboard-list"></i></span><span>예약관리</span></a>
                </li>
                <li>
                    <a href=""><span><i class="far fa-inventory"></i></span><span>쿠폰관리</span></a>
                </li>
                <li>
                    <a href="/TeamProject/sub/notice.jsp"><span><i class="fab fa-first-order"></i></span><span>공지사항 관리</span></a>
                </li>
                <li>
                    <a href="/TeamProject/sub/qna.jsp"><span><i class="fab fa-first-order"></i></span><span>문의내역 관리</span></a>
                </li>
                <li>
                    <a href="/TeamProject/sub/faq.jsp"><span><i class="fab fa-first-order"></i></span><span>FAQ 관리</span></a>
                </li>
            </ul>
        </div>
    </div>
   
        <header>
            <div class="header-title">
                <h2>
                     Dashboard
                </h2>
            </div>
            <div class="search-wrapper">
                <span><i class="fas fa-search"></i></span>
                <input type="search" placeholder="Search here.......">
            </div>
            <div class="user-wrapper">
                <img src="assets/images/user.jpg" height="50px" width="50px" alt="">
                <div>
                    <h4>Md. Admin</h4>
                    <small>Super Admin</small>
                </div>
            </div>
        </header>


