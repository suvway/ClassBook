<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/default.css" />
<script src="/DosiAir/js/member.js" charset = "UTF-8"></script>
</head>

<body style="background-color:white;" onload="emailsel()">
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
						<a href="../member/identity01.jsp"><li><img src="">ȸ������ ����</li></a>
						<a href="../member/identity01_01.jsp"><li><img src=""><strong>ȸ������ ����</strong></li></a>
						<a href="../member/identity01_02.jsp"><li><img src="">��й�ȣ ����</li></a>
					</ul>
				</div>
				<div class="iden_info">
						
					<h2>ȸ������ ����</h2>
					
					<table cellpadding="0" cellspacing="0">
						<tr>
							<th>ȸ���̸�</th>
							<td>�̸�</td>
							<th></th>
							<td></td>
						</tr>
					</table>
				</div>
				
				<div class="info_con">
					<div class="info_l">
						<ul>
							<li class="m_t">�̸��� �ּ�</li>
							<input type="hidden" id="" value=""/>
							<li><input type="text" id="" name="" value=""></li>
							<li>	
								<select name="" id="" onchange="">
									<option>�����ϼ���</option>
									<option value="direct">�����Է�</option>
									<option value="naver.com">naver.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmail.net">hanmail.net</option>
									<option value="nate.com">nate.net</option>
                         	     	<option value="daum.net">daum.net</option>
								</select>
							</li>
							<li><input type="hidden" id="" name="" value="" /></li>
                              <input type="hidden"  name="" id="">
						</ul>
						<ul>
							<li class="m_t">�޴��� ��ȣ</li>
							<li><input type="text" name="mbtel"  value=""></li>
						</ul>
					</div>
					<div class="info_r">
						<ul>
							<li class="m_t">�����ȣ</li>
							<li><input hidden="text" id="bfzip" value=""/>
							<input class="zip_num" type="text" id="zip1" value="">&nbsp;-&nbsp;<input class="zip_num" type="text" id="zip2">&nbsp;<input class="zip_button" type="button" value="�����ȣȮ��" onclick="location.href='.jsp'"/></li>
							<input type="hidden" id="mbzip" name="mbzip">
							<li class="m_t">�ּ�</li>
							<li><input type="text" name="mbaddr" value=""/></li>
							<li><input type="text" name="mbaddr2"  value=""/></li>
						</ul>
						
						<ul>
							<li>ȸ������ ������ ���� ��й�ȣ �Է��� ���ֽñ� �ٶ��ϴ�.</li>
							<li><input type="text" class="button" name=""></li>
							</form>
							<li><input type="button" class="button01" value="Ȯ��" onclick="location.href='.jsp'">&nbsp;&nbsp;<input type="button" class="button02" value="���" onclick="location.href='.jsp'"/></li>
						</ul>
					</div>
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