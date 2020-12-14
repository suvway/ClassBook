
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>	

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<!--  관리자페이지 구현 X  -->

<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="/web/css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="/web/cartSpring/css/default.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/web/js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="/web/js/design.js">

</script>
<script src="/web/script/jquery-1.7.2.js"></script>
<script >
$(document).ready(function(){
	 $("#hi").click(function(){
		 $("form").submit();		 
	 });	
});
</script>





</head>
<body>
	<div id="wrap">
		<!-- header -->
		<jsp:include page="/cartSpring/include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>상품 등록/보기/수정</p>   
		            </div>
	
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="#">목록</a></span>
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
								<th>업체명</th>
								<td><select style="width: 200px;">
										<option>선택하세요</option>
								</select></td>
								<th>상품명</th>
								<td><input type="text" name="" style="border:1px solid #ddd; height:20px;" class="inputText" size="30" />
									<span class="button"><a href="#">검색</a></span></td>
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
										<th scope="col">상품명</th>
										<th scope="col">이미지</th>
										<th scope="col">원산지</th>
										<th scope="col">가격</th>
										<th scope="col">종류</th>
										<th scope="col">날짜</th>
										<th scope="col">판매자</th>									
										
									</tr>
								</thead>

								<tbody>
							        <c:forEach var="i" items="${cList}" varStatus="cnt">
									<tr>
										<td>${cnt.count} </td>
										<td>${i.productName}</td>
										<td><a href="clientInfo.do?cmd=clientInfo&pk=${i.pk}">
										<img src="/web/upload/${i.fileName}" width="50" height="50"></img></a></td>
										<td>${i.productOrigin}</td>
										<td>${i.productPrice}</td>
										<td>${i.productCategory}</td>
										<td>${i.regdate}</td>
										<td>${i.seller}</td>										
									
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
	
  <!--Footer-->
      <jsp:include page="/cartSpring/include/footer.jsp"></jsp:include>
   <!--END Footer-->	
	</div>
</body>
</html>