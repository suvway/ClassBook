<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="/web/css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="/web/css/default.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="/web/js/design.js">

</script>
<script  src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script >
var obj;
$(document).ready(function(){
	 $("#hi").click(function(){
		 if($("#hi").text()=='Modify'){
			  if($("#file").val().length==0){
				  //alert("FileCheck");
				  //$("form").attr("enctype","application/x-www-form-urlencoded")
			  }else{
				  //$("form").attr("enctype","multipart/form-data");
			  }
			  //alert($("form").attr("enctype"));
			 
		   //$("form").attr("action","productInsert.do?cmd=productInsert&job=modify&no="+$("span#sm").text()+"&fileName="+obj.fileName);
			  
		 }else{
			
			 $("form").attr("action","productInsert.do?cmd=productInsert&job=insert");
		 }
		 $("form").submit();
	 });	
	 $("span a").click(function(){
		 /* if($(this).html()=='삭제<span style=\"display: none;\">'+$(this).children().eq(0).text()+"</span>"){
		 $(this).html('DP<span style=\"display: none;\">'+$(this).children().eq(0).text()+"</span>");
		 }
		 else{
			alert($(this).children().eq(0).text());
			
		 } */
		 //alert($(this).html().toString().split("<")[0]);
		 //alert($(this).find("span").first().text());
		 if($(this).text()=='삭제'){
			 $(this).text('DP');
		 }else if($(this).text()=='DP'){
			 alert($(this).next().prev().next().text());
			 //document.location.href='delete.do?cmd=delete&no='+$(this).siblings().text();
		 }
		 
		 if($(this).text()=='수정'){
			 $(this).text('MP');
		 }else if($(this).text()=='MP'){
			 //alert($(this).next().prev().next().text());
			 //document.location.href='delete.do?cmd=delete&no='+$(this).siblings().text();
			  
			 $("span#sm").text($(this).siblings().text());
			 $.ajax({
				 url:'/web/info.do?cmd=info&no='+$(this).siblings().text(),
				 dataType:'json',
				 success:function(data){					
					$("#productName").val(data.productName);
					$("#productOrigin").val(data.productOrigin);
					$("#productPrice").val(data.productPrice);
					
					var index=0;
					switch(data.productCategory){
					case 'cloth':
						index=1;break;
					case 'electronic':
						index=2;break;
					case 'furniture':
						index=3;break;
					case 'cosmetic':
						index=4;break;
					case 'foods':
						index=5;break;
					case 'car':
						index=6;break;						
					}
					$("#productCategory").prop("selectedIndex",index);
					//$("#productCategory").val(data.productCategory);
					$("#imgSpan").html("<img src='/web/upload/"+data.fileName+"' width=20 height=20>");
					$("#hi").text("Modify");
				 }
				 
			 });
		 }
		 
	 });
    
});
</script>
</head>
<body>

	<div id="wrap">
		<!-- header -->
		<jsp:include page="/include/topGnb.jsp"></jsp:include> 
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>상품등록/보기/수정</p>   
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

					<div class="clfix">
						<div class="tbWrapLt">
							<table class="bbsList">
								<colgroup>
									<col width="30" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
								</colgroup>
								<thead>								
								
									<tr>
										<th scope="col">NO.</th>
										<th scope="col">상품명</th>
										<th scope="col">모델</th>
										<th scope="col">가격</th>
										<th scope="col">상태</th>
										
									</tr>
								</thead>

								<tbody>
								   <c:forEach var="i" items="${list }" varStatus="cnt">
									<tr>
										<td>${cnt.count }</td>
										<td>${i.productName} </td>
										<td><img src="/web/upload/${i.fileName}" width="50" height="50"></img></td>
										<td>${i.productPrice}</td>
										
										<td>
										<span class="buttonFuc" title="mod"><a href="#">수정</a><span  style="display: none;" >${i.no}</span></span>
										<span class="buttonFuc" title="del"><a href="#">삭제</a><span style="display: none;">${i.no}</span></span>
										</td>
									</tr>
									</c:forEach>
									
								 
                                   
								</tbody>
							</table>
						</div>
                        <span id="sm"></span>
						<div class="tbWrapRt">
							<ul class="tabA clfix mgb15">
								<li class="over"><a href="#info1">01. 상품등록</a></li>
							</ul>
							 
 		              	<form action="productInsert.do?cmd=productInsert&job=insert" name="frm" method="post" enctype="multipart/form-data">
							<div id="info1" class="tbWrapCnt" style="display: block;">
								<table class="bbsWrite mgb10">
									<caption></caption>
									<colgroup>
										<col width="95" />
										<col />
									</colgroup>
									<tbody>
										<tr>
											<th>상품명</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productName" id="productName" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>원산지</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productOrigin" id="productOrigin" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>상품가격</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productPrice" id="productPrice" class="inputText"
												size="50" /></td>
												
										</tr>
										<tr>
											<th>카테고리</th>
											<td>
											<select style="width: 200px;" name="productCategory" id="productCategory">
												<option selected="selected">선택하세요</option>
												<option value="cloth">의류/잡화</option>
												<option value="electronic">전자제품</option>
												<option value="furniture">가구</option>
												<option value="cosmetic">화장품/향수</option>
												<option value="foods">식품/주류</option>
												<option value="car">차량용품</option>													
											</select>
											</td>
										</tr>
										<tr>
											<th>상품이미지1</th>
											<td class="alignM"><input type="file" name="file"  id="file"
												class="inputText" size="10" /><span id="imgSpan"></span></td>
										</tr>
									</tbody>
								</table>
							</div>
							</form>
						</div>

						<p class="agr">
							<span class="button"><a href="#" id="hi">저장</a></span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
  <!--Footer-->
     <jsp:include page="../include/footer.jsp"></jsp:include>
   <!--END Footer-->	
   	</div>
	
</body>
</html>