<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/default.css" />

</head>
<body style="background-color:white;">
<!--Wrap-->
<!-- ȸ����й�ȣ ���� -->
 <div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->

	<!--Container-->
	<div id="sub_container">
		<div class="sub_con2">
			<div class="identity">
				<div class="passMod">
					<!-- idenTop.jsp include -->
					<jsp:include page="../include/idenTop.jsp"></jsp:include>
					<!-- END idenTop.jsp include -->
					<div class="iden_submenu">	
						<ul>
							<a href="../member/identity01.jsp"><li><img src="">ȸ������ ����</li></a>
							<a href="../member/identity01_01.jsp"><li><img src="">ȸ������ ����</li></a>
							<a href="../member/identity01_02.jsp"><li><img src=""><strong>��й�ȣ ����</strong></li></a>
						</ul>
					</div>
	

						<form action="#" method="post" name="">
						<div class="iden_info">
							<h2>��й�ȣ ���� </h2>
								<ul class="passMod_line">
									<li>���ο� ��й�ȣ���� ������ ���� �ٽ��ѹ� ������ ��й�ȣ�� �Է����ֽñ� �ٶ��ϴ�. </li>
								</ul>
								<ul class="passMod_button">
									<li>��й�ȣ �Է�</li>
									<li><input type="password" id="" name=""></li>
									
									<li>�� ��й�ȣ</li>
									<li><input type="password" id="" name=""></li>
								
									<li>�� ��й�ȣ Ȯ��</li>
									<li><input type="password" id="" name="">&nbsp;<input type="button" value="Ȯ��" onclick="location.href='.jsp'"/></li>
								</ul>
							</div>
					</form>
					
				</div>	
			</div>	
		</div>
	</div>
	
	<!--END Container-->



	<!--Footer-->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!--END Footer-->

 </div><!--END Wrap-->
</body>
</html>