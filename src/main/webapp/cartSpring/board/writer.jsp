<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/web/cartSpring/css/default.css" />
<script src="/DosiAir/js/bbs.js" charset = "UTF-8"></script>
<script src="/DosiAir/js/jquery-2.1.4.min.js" charset = "UTF-8"></script>
</head>
<body style="background:url('/DosiAir/img/airplane4.jpg') top no-repeat;" >

<!--Wrap-->
 <div id="wrap">
	<!--Header-->
		<jsp:include page="/cartSpring/include/topGnb.jsp"></jsp:include>
	<!--END Header-->

	<!--Container-->
	<div id="sub_container">
		<div class="sub_con3">
			<div class="board_form">	
				<div class="con_title">
					<p>���ǰԽ���</p>	
				</div>
				<div class="board_form02">
					<div class="board_form03">
	                   <div class="board_l" style="background:url('/web/cartSpring/img/board02.jpg') top no-repeat; border:1px solid #ddd;">
                           
                       </div>
	                    <div class="board_r">
						   <ul class="board_divide">
	                       		<li>����</li>
	                       		<li>
	                       			<select name="bbsCategory" id="bbsCategory">
	                       				<option>����</option>
	                       				<option>����</option>
	                       				<option>����/���</option>
	                       				<option>�⳻����</option>
	                       				<option>���Ϲ�</option>
	                       				<option>�߱�/Ƽ�ϼ���</option>
	                       				<option>��Ÿ</option>
	                       			</select>
	                       		</li>
	                       </ul>
	                       <ul class="board_title">
	                       		<li>����</li>
	                       		<li><input type="hidden" id="" name="" value='#'><input type="text" name="" id="" value=''></li>
	                       </ul>
	                     <!--   <ul class="board_pass">
	                       		<li>��й�ȣ</li>
	                       		<li><input type="text"></li>
	                       </ul> -->
		                   <ul class="board_contents">
	                       		<li style="margin-bottom:7px; ">����</li>
	                       		<li><textarea rows="11" cols="60" name="" id="" style="border:1px solid #bbb;"></textarea></li>
	                       </ul>
	                       
	                       <ul class="board_writer">
	                       		<li id="writer">
	                       		<input type="button" class="board_button01" onclick="location.href='board.jsp'" id="" name="" value="�ۼ�">
	                       		<input type="button" class="board_button01" onclick="location.href='board.jsp'" id="" name="" value="����">
	                       		<input type="button" class="board_button02" onclick="location.href='board.jsp'" value="���">
	                       		</li>
	                       </ul>
		                   
	                    </div>
                    </div>
                    </form>
				</div>
				<div>
				</div>
			</div>
		</div>	
	<!--END Container-->
	</div>
		
	<!--Footer-->
		<jsp:include page="/cartSpring/include/footer.jsp"></jsp:include>
	<!--END Footer-->
 </div><!--END Wrap-->
 	
</body>
</html>