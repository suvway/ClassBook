<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="copyright" content="Copyright 2009 @ high1 all rights reserved" />
<link href="/web/cartSpring/css/default.css" rel="stylesheet" type="text/css" />

<script  src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script >
$(function () {
	$("img#btnSubmit").click(function() {
		if($("input#id").val().length==0||$("input#pw").val().length==0){
			alert('id or password check');
			$("input#id").val('');
			$("input#pw").val('');
			return false;
		}else{
			$("form").submit();
		}
	});
});

</script>
</head>
<body>
	<div id="wrap">
		<!-- header -->
		<jsp:include page="/cartSpring/include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>장바구니 리스트</p>   
		            </div>
			<form name="login" method="post" action="/web/cartAdminLogin.do">
			 <div id="loginWrapper">
			  <div class="loginForm">
			   <fieldset>
			    <legend>관리자 시스템 로그인</legend>
			    <dl>
			     <dt><img src="/web/cartSpring/img/common/th_id.gif" alt="아이디" /></dt>
			     <dd><input type="text" name="id" class="text" id="id" /></dd>
			
			     <dt><img src="/web/cartSpring/img/common/th_pw.gif" alt="비밀번호" /></dt>
			     <dd><input type="password" name="pw" class="text" id="pw" /></dd>
			    </dl>
			    <div class="btn">
			     <img id="btnSubmit" src="/web/cartSpring/img/button/btn_login.gif" alt="LOGIN" title="LOGIN"  />
			    </div>			    
			    <div class="saveId"><input type="checkbox" id="checker" name="checker" /> 
			     <img src="/web/cartSpring/img/common/save_id.gif" alt="아이디 저장" />
			    </div>
			   </fieldset>
			  </div>
			 </div>
			</form>			
			</div>
			</div>
			</div>			
		</div>
</body>
</html>