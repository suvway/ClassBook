<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
               <li><img src="/web/img/korea.jpg"></li>
               <li>���ѹα�</li>
            </ul>
            <ul class="login">
               <li>
                  <a href="/web/member/login.jsp" class="desc">�α���</a>
                      <input type="hidden" id="url" value="">
                      <!-- �׼Ǹ� �޾ƿ��� -->
                  <a href="#" class="desc">�� �α׾ƿ�</a>
                </li>
               <li>|</li>
               <li>
                  <a href="/web/member/join.jsp" class="desc">ȸ������</a>
                  <a href="/web/member/identity01.jsp" class="desc">����������</a>
               </li>
            </ul>
         </div>

			<div class="header_gnb">
				<a href="/web/jsp/main.jsp"><p>
						<img alt="" src="/web/img/logo2.jpg">
					</p></a>
				<ul class="gnb_menu">
					
					<a href="/web/cart/cartList.jsp">
						<li><img src="/web/img/reserve.png" onmouseover="this.src='/web/img/reserve_on.png'" onmouseout="this.src='/web/img/reserve.png'"></li>
						<li>��ٱ���</li>
					</a>
					<a href="/web/cart/cartList.jsp">
						<li><img src="/web/img/reserve.png" onmouseover="this.src='/web/img/reserve_on.png'" onmouseout="this.src='/web/img/reserve.png'"></li>
						<li>��ٱ���</li>
					</a>
					<a href="/web/cart/cartList.jsp">
						<li><img src="/web/img/reserve.png" onmouseover="this.src='/web/img/reserve_on.png'" onmouseout="this.src='/web/img/reserve.png'"></li>
						<li>��ٱ���</li>
					</a>

					<a href="/web/board/board.jsp">
					<li><img src="/web/img/sch.png" onmouseover="this.src='/web/img/sch_on.png'" onmouseout="this.src='/web/img/sch.png'"></li>
					<li>�Խ���</li>

					</a>
				
				</ul>
			</div>
		</div>
	</div>
</body>
</html>