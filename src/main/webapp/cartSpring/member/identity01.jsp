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
			<div class="identity">
				
				<!-- idenTop.jsp include -->
				<jsp:include page="../include/idenTop.jsp"></jsp:include>
				<!-- END idenTop.jsp include -->
				
				<div class="iden_submenu">
					<ul>
						<a href="../member/identity01.jsp"><li><img src=""><strong>ȸ������ ����</strong></li></a>
						<a href="../member/identity01_01.jsp"><li><img src="">ȸ������ ����</li></a>
						<a href="../member/identity01_02.jsp"><li><img src="">��й�ȣ ����</li></a>
					</ul>
				</div>
				
				<div class="iden_info">
					<h2>ȸ������ ����</h2>
					<table cellpadding="0" cellspacing="0">
						<tr>
							<th>ȸ���̸�</th>
							<td>�϶���</td>
							<th></th>
							<td></td>
						</tr>
						
						<tr>
							<th>�޴��� ��ȣ</th>
							<td>01010101</td>
							<th>�������</th>
							<td>89111</td>
						</tr>
						
						<tr>
							<th>�ּ�</th>
							<td>�λ곲����ȣ1��</td>
							<th>�̸��� �ּ�</th>
							<td>motokrzr11@</td>
							
						</tr>
						<!-- <tr>
							<th>ȸ�����</th>
							<td><s:property value="mbgrade" /></td>
							<th>ȸ�����ϸ���</th>
							<td><s:property value="mbmileage" /></td>
						</tr> -->
					</table>
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