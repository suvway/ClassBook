<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="..css/default.css" />
<script src="/web/js/jquery-2.1.4.min.js" charset = "UTF-8"></script>
</head>
<script src="/web/js/myPage.js" charset="UTF-8"></script>

<body>
   <div id="header">
      <div class="header_wrap">
         <div class="bg_black_login">
            <ul class="korea">
               <li><img src="/web/cartSpring/img/korea.jpg"></li>
               <li>대한민국</li>
            </ul>
            <ul class="login">
               <li>
                  <a href="/web/cartSpring/member/login.jsp" class="desc">로그인</a>
                      <input type="hidden" id="url" value="">
                      <!-- 액션명 받아오기 -->
                  <a href="#" class="desc">님 로그아웃</a>
                </li>
               <li>|</li>
               <li>
                  <a href="/web/cartSpring/member/join.jsp" class="desc">회원가입</a>
                  <a href="/web/cartSpring/member/identity01.jsp" class="desc">마이페이지</a>
               </li>
            </ul>
         </div>

			<div class="header_gnb">
				<a href="/web/cartSpring/jsp/main.jsp"><p>
						<img alt="" src="/web/cartSpring/img/logo2.jpg">
					</p></a>
				<ul class="gnb_menu">
					
					<a href="/web/productList.do?id=${id }">
						<li><img src="/web/cartSpring/img/reserve.png" onmouseover="this.src='/web/cartSpring/img/reserve_on.png'" onmouseout="this.src='/web/cartSpring/img/reserve.png'"></li>
						<li>목록</li>
					</a>
					<a href="/web/cartSpring/cart/cartList.jsp">
						<li><img src="/web/cartSpring/img/reserve.png" onmouseover="this.src='/web/cartSpring/img/reserve_on.png'" onmouseout="this.src='/web/cartSpring/img/reserve.png'"></li>
						<li>장바구니</li>
					</a>
					<a href="/web/cartSpring/cart/cartList.jsp">
						<li><img src="/web/cartSpring/img/reserve.png" onmouseover="this.src='/web/cartSpring/img/reserve_on.png'" onmouseout="this.src='/web/cartSpring/img/reserve.png'"></li>
						<li>장바구니</li>
					</a>

					<a href="/web/cartSpring/board/board.jsp">
					<li><img src="/web/cartSpring/img/sch.png" onmouseover="this.src='/web/cartSpring/img/sch_on.png'" onmouseout="this.src='/web/cartSpring/img/sch.png'"></li>
					<li>게시판</li>

					</a>
				
				</ul>
			</div>
		</div>
	</div>
</body>
</html>