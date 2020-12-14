<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="copyright" content="Copyright 2009 @ high1 all rights reserved" />
<link href="../css/default.css" rel="stylesheet" type="text/css" />

<script  src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script >
$(document).ready(function(){
	 $("#btnSubmit").click(function(){
		 $("form").submit();		 
	 });	
});

</script>
</head>
<body>
	<div id="wrap">
		<!-- header -->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>��ٱ��� ����Ʈ</p>   
		            </div>
			<form name="login" method="post" action="/web/cartAdminLogin.do">
			 <div id="loginWrapper">
			  <div class="loginForm">
			   <fieldset>
			    <legend>������ �ý��� �α���</legend>
			    <dl>
			     <dt><img src="../img/common/th_id.gif" alt="���̵�" /></dt>
			     <dd><input type="text" name="id" class="text" id="user_id" /></dd>
			
			     <dt><img src="../img/common/th_pw.gif" alt="��й�ȣ" /></dt>
			     <dd><input type="password" name="pw" class="text" id="user_passwd" /></dd>
			    </dl>
			    <div class="btn">
			     <img id="btnSubmit" src="../img/button/btn_login.gif" alt="LOGIN" title="LOGIN"  />
			    </div>			    
			    <div class="saveId"><input type="checkbox" id="checker" name="checker" /> 
			     <img src="../img/common/save_id.gif" alt="���̵� ����" />
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