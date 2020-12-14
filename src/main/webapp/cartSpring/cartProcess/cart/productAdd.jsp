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
		 /* if($(this).html()=='����<span style=\"display: none;\">'+$(this).children().eq(0).text()+"</span>"){
		 $(this).html('DP<span style=\"display: none;\">'+$(this).children().eq(0).text()+"</span>");
		 }
		 else{
			alert($(this).children().eq(0).text());
			
		 } */
		 //alert($(this).html().toString().split("<")[0]);
		 //alert($(this).find("span").first().text());
		 if($(this).text()=='����'){
			 $(this).text('DP');
		 }else if($(this).text()=='DP'){
			 alert($(this).next().prev().next().text());
			 //document.location.href='delete.do?cmd=delete&no='+$(this).siblings().text();
		 }
		 
		 if($(this).text()=='����'){
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
		               <p>��ǰ���/����/����</p>   
		            </div>
			
			
			
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="#">���</a></span>
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
								<td><select style="width: 200px;">
										<option>�����ϼ���</option>
								</select></td>
								<th>��ǰ��</th>
								<td><input type="text" name="" style="border:1px solid #ddd; height:20px;" class="inputText" size="30" />
									<span class="button"><a href="#">�˻�</a></span></td>
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
										<th scope="col">��ǰ��</th>
										<th scope="col">��</th>
										<th scope="col">����</th>
										<th scope="col">����</th>
										
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
										<span class="buttonFuc" title="mod"><a href="#">����</a><span  style="display: none;" >${i.no}</span></span>
										<span class="buttonFuc" title="del"><a href="#">����</a><span style="display: none;">${i.no}</span></span>
										</td>
									</tr>
									</c:forEach>
									
								 
                                   
								</tbody>
							</table>
						</div>
                        <span id="sm"></span>
						<div class="tbWrapRt">
							<ul class="tabA clfix mgb15">
								<li class="over"><a href="#info1">01. ��ǰ���</a></li>
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
											<th>��ǰ��</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productName" id="productName" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>������</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productOrigin" id="productOrigin" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>��ǰ����</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productPrice" id="productPrice" class="inputText"
												size="50" /></td>
												
										</tr>
										<tr>
											<th>ī�װ�</th>
											<td>
											<select style="width: 200px;" name="productCategory" id="productCategory">
												<option selected="selected">�����ϼ���</option>
												<option value="cloth">�Ƿ�/��ȭ</option>
												<option value="electronic">������ǰ</option>
												<option value="furniture">����</option>
												<option value="cosmetic">ȭ��ǰ/���</option>
												<option value="foods">��ǰ/�ַ�</option>
												<option value="car">������ǰ</option>													
											</select>
											</td>
										</tr>
										<tr>
											<th>��ǰ�̹���1</th>
											<td class="alignM"><input type="file" name="file"  id="file"
												class="inputText" size="10" /><span id="imgSpan"></span></td>
										</tr>
									</tbody>
								</table>
							</div>
							</form>
						</div>

						<p class="agr">
							<span class="button"><a href="#" id="hi">����</a></span>
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