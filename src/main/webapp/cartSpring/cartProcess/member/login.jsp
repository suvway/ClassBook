<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background:#fff">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<link type="text/css" rel="stylesheet" href="../css/default.css" />
<script src="/DosiAir/js/member.js" charset="UTF-8"></script>
<script src="/DosiAir/js/jquery-2.1.4.min.js" charset = "UTF-8"></script>
<title>Insert title here</title>
</head>
<script>


</script>

<body id="bg_white" onload="">
<div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->

	<div class="sub_con4">
		<div class="login_bg">
			<ul>
				<li class="login_font">�α���</li>
				<li class="text01">DOSIAIRLINE �α��������� �Դϴ�.</li>
			</ul>

			<div class="id_left">
				<dl>
					<dt>���̵�</dt>
					<dd><input type="text" name="" id="" value="" />
					<input type="hidden" id="" name="" value=""/></dd>
				</dl>
			</div>
			<div class="id_left02">
				<dl>
					<dt>��й�ȣ</dt>
					<dd><input type="password" name="" id="" value="" ></dd>
				</dl>
			</div>
			
			<div class="login_message">
			<span id="span1" style="display: none;">
				<font id="failMessage" color="red" size="2"></font>
			</span>
			</div>
			
			<div class="login_check">
				<ul>
					<li><input type="button" value="�α���" onclick="loginCheck()"></li>
				</ul>				
			</div>

			<div class="search_login">
				<ul>
					<li>���̵�/��й�ȣ ã��</li><br/>			
					<li>ȸ������ �������� ������ ����<br/>���� �����ϼ���. <a href="join.jsp">ȸ������</a></li>			
				</ul>
			</div>
		</div>
	</div>
 </div>	
</body>
</html>