<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/default.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="../../js/member.js" charset="UTF-8"></script>
<script type="text/javascript" src="/js/jquery-1.10.2.js"></script>

</head>

<body>
	<!--Wrap-->
	<div id="wrap">
		<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--END Header-->

		<!--Container-->
		<div id="sub_container">
			<div class="sub_con1">
				<div class="reserve_form_join">
					<div class="join_m">
							<h1>ȸ������</h1>
							<div class="join_l">
								<ul class="join_name">
									<li>�ѱ� ��<span>*</span></li>
									<li><input type="text" id="" name=""></li>
								</ul>
								<ul class="join_name">
									<li>�ѱ� �̸�<span>*</span></li>
									<li><input type="text" id="" name=""></li>
								</ul>
								<ul class="join_birth">
									<li>�������<span>*</span></li>
									<li><input type="text" id="" name=""></li>
									<li><input type="text" id="month" name="month"></li>
									<li><input type="text" id="day" name="day"></li>
								</ul>
								<ul class="join_mw">
									<li>����<span>*</span></li>
									<input type="radio" name="" value="man" />&nbsp; ����
									<input type="radio" name="" value="women" />&nbsp; ����
								</ul>

								<ul>
									<li>�̸����ּ�</li>
									<li><input type="text" id="" name=""></li>
									<li><select name="" id="" >
											<option selected="selected" value="empty">�����ϼ���</option>
											<option value="direct">�����Է�</option>
											<option value="naver.com">naver.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="hanmail.net">hanmail.net</option>
											<option value="nate.com">nate.com</option>
											<option value="daum.net">daum.net</option>
									</select></li>
									
									<li><input type="hidden" id="" name=""value="" /></li>
									<input type="hidden" id="" name="">
									
								</ul>
								<ul>
									<li>�޴��� ��ȣ<span>*</span></li>
									<!-- ���⿡ �ȳ��� . '-' ���� �Է����ּ���.  -->
									<li><input type="text" id="" name=""></li>
								</ul>
							</div>

							<div class="join_r">
								<ul class="join_loca">
									<li>�����ּ�<span>*</span></li>
									<li>
									<input type="text" id="" name="">-&nbsp;&nbsp;
									<input type="text" id="" name="">&nbsp;
									<input class="lo_button" type="button" value="�����ȣȮ��" onclick="location.href='.jsp'"></li>
									
									<input type="hidden" id="" name="">
									<li class="input_wh"><input type="text" id=""name=""></li>
									<li class="input_wh"><input type="text" id="" name="" placeholder="���ּҸ� �Է����ּ���."></li>
								</ul>
								<ul class="join_id">
									<li>ȸ�����̵�<span>*</span></li>
									<li><input type="text" id="" name="" placeholder="����&���� ����(6~12�ڸ�)"></li>
									<li id="resultIdCheck"></li>
								</ul>
									 <ul>
                           <li>��й�ȣ<span>*</span></li>
                           <li><input type="password" id="" name=""></li>
							<span id="span1" style="display: none;">
							<font id="message1" color="blue" size="2"> ��� �����մϴ�.</font>
							</span>
							</td>
                        </ul>
                        <ul>
                           <li>��й�ȣ Ȯ��<span>*</span></li>
                           <li><input type="password" id="pwck" name="pwck" onkeyup="passConfirmCheck(event)" onfocus="checkPass()" onblur="passCheck2()" placeholder="8~20�ڸ�"></li>
                              <span id="span2" style="display: none;"><font id="message2" color="RED" size="2">��й�ȣ�� ��ġ���� �ʽ��ϴ�.</font></span></td>
                              
                           <input type="hidden" name="mbpw" onblur="passCheck()"> 
                        </ul>
								<ul class="agree">
									<!-- <li><input type="checkbox">�������� ��3�� ������ �����մϴ�(���û���)</li> -->
									<li class="ag_button"><input type="button" id="btn" value="Ȯ��" onclick="location.href='.jsp'"/></li>
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

	</div>
	<!--END Wrap-->
</body>
</html>