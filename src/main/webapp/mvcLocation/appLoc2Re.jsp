<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
body {
   padding-top: 20px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("td[lang='no']").click(function() {
		if(this.id.length>0){
			//alert(this.id.split("#")[1]);
			 $.ajax({
				url:'springMemberInfo.do',
				datatype:'json',
				type:'POST',
				data:{no:this.id.split("#")[1]},
				success:function(v){
					$("tr#ajax").html("<th>"+v.no+"</th><th>"+v.id+"</th><th>"+v.email+"</th><th>"+v.address+"</th><th>"+v.name+"</th><th>"+v.regdate+"</th>");
				},
				error:function(){
					alert('error');
				}
			}); 
		}
	});
	$("input[value='삭제']").click(function() {
		$.ajax({
			url:'springMemberDelete.do',
			type:'POST',
			datatype:'json',
			data:{no:this.id},
			success:function(){
				alert('삭제완료');
				location.reload();
			},error:function(){
				alert('error');
			}
		});
	});
	 $("input[value='수정']").click(function() {
		var cnt=this.id.split("#")[0];
		var no=this.id.split("#")[1];
		if($("td[lang='"+cnt+"#email#cat']").children("input[type='text']")){
		$("td[lang='"+cnt+"#email#cat']").html("<td id=email#"+no+" lang="+cnt+"#email#cat>"+$("td[lang='"+cnt+"#email#cat']").children("input[type='text']").val()+"</td>");
		} if($("td[lang='"+cnt+"#address#cat']").children("input[type='text']")){
		$("td[lang='"+cnt+"#address#cat']").html("<td id=email#"+no+" lang="+cnt+"#address#cat>"+$("td[lang='"+cnt+"#address#cat']").children("input[type='text']").val()+"</td>");
		} if($("td[lang='"+cnt+"#name#cat']").children("input[type='text']")){
		$("td[lang='"+cnt+"#name#cat']").html("<td id=email#"+no+" lang="+cnt+"#name#cat>"+$("td[lang='"+cnt+"#name#cat']").children("input[type='text']").val()+"</td>");
	}
	}); 
	 
	$("input[value='저장']").click(function() {
		var cnt=this.id.split("#")[0];
		//alert($("td[lang='"+cnt+"#email#cat']").text() + $("td[lang='"+cnt+"#address#cat']").text() + $("td[lang='"+cnt+"#name#cat']").text());
		 $.ajax({
			url:'springMemberModify.do',
			datatype:'json',
			type:'POST',
			data:{no:this.id.split("#")[1],email:$("td[lang='"+cnt+"#email#cat']").text(),
				address:$("td[lang='"+cnt+"#address#cat']").text(),
				name:$("td[lang='"+cnt+"#name#cat']").text()},
			success:function(v){
				alert('수정완료');
			},
			error:function(){
				alert('error');
			}
		});
		//저장 누르면 cnt값 읽어와서 json으로 보내십쇼 수고하세요
	});
	$("td[lang$='cat']").dblclick(function () {
		
		var cat=this.lang.split("#")[1];
		var cnt=this.lang.split("#")[0];
		
		//$(this).html("<input type='text' value=''>");
		$.ajax({
			url:'springMemberInfo.do',
			datatype:'json',
			type:'POST',
			data:{no:this.id.split("#")[1]},
			success:function(v){
				$("td[lang='"+cnt+"#"+cat+"#cat']").html("<input type='text' value='"+v[cat]+"'>");
			},
			error:function(){
				alert('error');
			}
		});
		
		
	});
	
});
</script>
</head>
<body>
<div>
<input type="button" onclick="location.href='mvcLocation/appLoc2.jsp'" value="게시물 등록">
</div>
<div class="container">
  <h2>Contextual Classes</h2>
  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
  <table class="table">
    <thead>
      <tr>
        <th>no</th>
        <th>id</th>
        <th>email</th>
        <th>address</th>
        <th>name</th>
        <th>regdate</th>
      </tr>
    </thead>
    <tbody>
      
      	<c:forEach items="${member}" var="i" varStatus="cnt">
      	<tr class="success" lang="${cnt }">
      		<td id="no#${i.no}" lang="no">${i.no }</td>
      		<td id="id#${i.no}" >${i.id }</td>
      		<td id="email#${i.no}" lang="${cnt.count}#email#cat">${i.email }</td>
      		<td id="address#${i.no}" lang="${cnt.count}#address#cat">${i.address }</td>
      		<td id="name#${i.no }" lang="${cnt.count}#name#cat">${i.name }</td>
      		<td id="regdate#${i.no }" >${i.regdate }</td>
      		<td>
      		<input type="button" value="삭제" id="${i.no }">
      		<input type="button" value="저장" id="${cnt.count}#${i.no }">
      		<input type="button" value="수정" id="${cnt.count}#${i.no }">
      		</td>
      	</tr>
      	</c:forEach>
   <!--        
      <tr class="success">
      
      <tr class="danger">
        
      <tr class="info">
       
      <tr class="warning">
        
      <tr class="active"> -->
        
    </tbody>
  </table>
</div>
<div class="container">
  <h2>Contextual Classes</h2>
  <p>Contextual classes can be used to color table rows or table cells. The classes that can be used are: .active, .success, .info, .warning, and .danger.</p>
  <table class="table">
    <thead>
      <tr>
        <th>no</th>
        <th>id</th>
        <th>email</th>
        <th>address</th>
        <th>name</th>
        <th>regdate</th>
      </tr>
    </thead>
    <tbody>
     
      	<tr class="success" id="ajax">
      		
      	</tr>
   
   <!--        
      <tr class="success">
      
      <tr class="danger">
        
      <tr class="info">
       
      <tr class="warning">
        
      <tr class="active"> -->
        
    </tbody>
  </table>
</div>
</body>
</html>