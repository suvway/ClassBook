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
 <div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->

	<!--Container-->
	<div id="sub_container">
		<div class="sub_con2">
			<div class="del">
				
				<!-- idenTop.jsp include -->
				<jsp:include page="../include/idenTop.jsp"></jsp:include>
				<!-- END idenTop.jsp include -->
				<div class="del_info">
					<h2>ȸ��Ż��</h2>
					<ul class="del_line">
						<li>�ȳ����� ���� �� ��й�ȣ �Է� �� [Ż��] ��ư�� ������ ���ͳ� ȸ���� Ż�� ó���� �Ϸ� �˴ϴ�.</li>
						<li><strong>Ż�� �Ŀ��� ���ͳ� ȸ������ �簡���Ͻ� �� ������, ������ ����ϼ̴� ���̵� �ٽ� ����Ͻ� ���� �����ϴ�.</strong></li>
						<li>
							<input type="checkbox">&nbsp;���ͳ� ȸ�� Ż�� ���մϴ�.
						</li>
					</ul>
					<ul class="del_button">
						<li>��й�ȣ �Է�</li>
						<li><input type="text" name="mbpw">&nbsp;<a href="javascript:comp()"><input type="button" value="Ȯ��" onclick="location.href='.jsp'"/></a></li>
					</ul>
				</div>
				</form>
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