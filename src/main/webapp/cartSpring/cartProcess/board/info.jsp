<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../css/default.css" />

</head>
<body style="background:url('/DosiAir/img/airplane4.jpg') top no-repeat;" >
<!--Wrap-->
 <div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->


	<!--Container-->
	<div id="sub_container">
		<div class="sub_con3">
			<div class="board_form">	
				<div class="con_title">
					<p>���ǰԽ���</p>	
				</div>
				<div class="board_form04">
					<div class="board_form05">
						<form action="" name="modiFrm" method="get">
	                    <div class="board_top">
	                    	<ul class="board_t">
	                    		<li><strong>������ ���ϴ�.</strong></li>
	                    		<li>|</li>
	                    		<li>�ۼ���</li>
	                    	</ul>
	                    	<ul class="board_date">
	                    		<li>2015-12-15</li>
	                    	</ul>
	                    </div>
	                    
	                    <div class="board_b">
	                    	<ul>
	                    		<li><strong>�ۼ���</strong></li>
	                    		<li>(���̵�)</li>
	                    	</ul>
	                    </div>
	                    <div class="board_text">
	                    	<ul>
	                    		<li style="min-height:200px;">������ ���ϴ�.������ ���ϴ�.������ ���ϴ�.</li>
	                    	</ul>
	                    </div>
	                    
	                    <div class="board_bottom">
	                     	<div class="board_letter">
	                    		<div class="letter_top">
		                    		<ul>
										 <li class="letter_f"><strong>�ۼ���</strong> </li>
										 <li><span>|</span></li>
										 <li class="letter_f02"><img alt="" src="../img/re.jpg" style="width:10px;height:10px;">&nbsp;���</li>
										 <li class="letter_cl">�����̵��ϴ�.</li>
									</ul>
									
									<!-- ���� �ۼ��� �κи� ���� ���� ���� -->
									 <ul class="letter_r">
										 <li><span>���� </span></li>
										 <li><span>|</span></li>
										 <li><span>����</span></li>
									</ul> 
								</div>
							<div class="letter_bottom">
		                    		<ul>
		                    			<li></li>
		                    		</ul>
	                    	</div>
	                    	</div>
	                    	
	                    	<div class="board_writer02">
	                    		<ul>
	                    			<li><textarea rows="" cols="" ></textarea>&nbsp;&nbsp;<input type="button" value="���" onclick="location.href='.jsp'"/></li>
	                    		</ul>
	                    	</div>
	                    	
	                    	
	                    	<div class="board_writer03">
	                    		<ul>
	                    			<li><textarea rows="" cols="" ></textarea>&nbsp;&nbsp;<input type="button" value="���" onclick="location.href='.jsp'"/></li>
	                    		</ul>
	                    	</div>
	                    </div>
	                    <div class="board_button_bt">
	                     	<ul>
	                     		<li>
	                     		<input type="button" value="�۾���" onclick="location.href='.jsp'" />&nbsp;&nbsp;
	                     		<input type="button" value="����" onclick="location.href='.jsp'" />&nbsp;&nbsp;
	                     		<input type="button" value="����"onclick="location.href='.jsp'" />&nbsp;&nbsp;
	                     		<input type="button" value="���" onclick="location.href='.jsp'" />
	                     		</li>
	                     	</ul>
	                    </div>
                    </form>
                    </div>
				</div>
				<div>
				</div>
			</div>
		</div>	
	<!--END Container-->
	</div>
		
	<!--Footer-->
		<jsp:include page="../include/footer.jsp"></jsp:include>
	<!--END Footer-->
 </div><!--END Wrap-->
 	
</body>
</html>