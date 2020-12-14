<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="../css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="../css/default.css" rel="stylesheet" type="text/css" />
<script  src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script>
   $(function(){
	   var temp=0;
	  $("input[name='price']").each(function(){
		  temp+=eval($(this).val());
	  });
	  $("input#total").val(temp);
	  $("input#sale").click(function(){
		 $("input#total").val(parseInt($("input#total").val())-1000);
		 $(this).hide(1000);
	  });
	  
	  $("a[name='del']").click(function(){
		  
		  document.location.href='/web/cartDelete.do?cmd=cartDelete&no='+this.id;
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
					<div class="contents">
					
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="productAdd.jsp">���</a></span>
						</span>
					</div>

					<table class="bbsWrite mgb35">
						<caption></caption>
						<colgroup>
							<col width="95" />
							<col width="395" />
							<col width="95" />
							<col />
						</colgroup>
						<tbody>
							<tr>
								<th>��ü��</th>
								<td><select style="border:1px solid #ddd; height:20px; width:200px;">
										<option>�����ϼ���</option>
								</select></td>
								<th>��ǰ��</th>
								<td><input type="text" name="" class="" size="30" style="border:1px solid #ddd; height:20px;"/>
									<span class="button"><a href="#">�˻�</a></span></td>
							</tr>
						</tbody>
					</table>
							<table class="bbsList">
								<colgroup>
									<col width="80" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
									<col width="170" />
								</colgroup>
								<thead>								
								
									<tr>
										<th scope="col">NO.</th>																				
										<th scope="col">��ǰ��</th>
										<th scope="col">�̹���</th>
										<th scope="col">������</th>
										<th scope="col">����</th>
										<th scope="col">����</th>
										<th scope="col">��¥</th>
										<th scope="col">����</th>									
									</tr>
								</thead>
								<tbody>
								  <c:forEach var="i" items="${cart}" varStatus="cnt"> 
									<tr>
										<td>${cnt.count} </td>
										<td>
										  ${i.productName }										 
										 </td>
										<td>
										<a href="productInfo.jsp"><img src="/web/upload/${i.fileName }" width="50" height="50"></img></a></td>
										<td>${i.productOrigin }</td>
										<td>${i.productPrice }
										<input  type="hidden" name="price" value="${i.productPrice }"/>
										</td>
										<td>${i.productCategory }</td>
										<td>${i.regdate }</td>
										<td>
										<span class="buttonFuc"><a href="#">����</a>
										</span>
										<span class="buttonFuc">
										
											<a href="#" name="del" id="${i.no}">����</a></span>
										</td>										
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<table class="bbsList" align="right">
							<tr align="right">
								<th align="right">���հ� &nbsp; <input type="text" name="total" id="total" class="inputText" size="30"  align="right" value="0"/><input type="button" id="sale" value="����1000"/> </th>
								</tr>	
							</table>	
						</div>
					</div>
					</div>
				</div>
   <!--Footer-->
      <jsp:include page="../include/footer.jsp"></jsp:include>
   <!--END Footer-->	
   </div>
	</div>
</body>
</html>