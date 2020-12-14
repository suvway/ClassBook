<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   /* $(document).keydown(function (e) {문자가 아닌거(방향키)는 keydown으로 처리해야한다..
	$("div#dv").append("<font color=red>["+e.keyCode+"]"+String.fromCharCode(e.keyCode)+"</font>");
	}) */
/*    	$(document).keyup(function (e) {
	$("div#dv").append("<font color=red>["+e.keyCode+"]"+String.fromCharCode(e.keyCode)+"</font>");
	}) */
   	/* $(document).keypress(function (e) {//keypress는 소대문자 구분
	$("div#dv").append("<font color=red>["+e.keyCode+"]"+String.fromCharCode(e.keyCode)+"</font>");
	}) */
	/* $(document).keydown(function(e) {
		 if(e.keyCode==39){
	   		$("img").animate({"marginLeft":"+=50px"},0)
   		}
		if(e.keyCode==37){
	   		$("img").animate({"marginLeft":"-=50px"},0)
   		}
		if(e.keyCode==40){
	   		$("img").animate({"marginTop":"+=50px"},0)
   		}
		if(e.keyCode==38){
	   		$("img").animate({"marginTop":"-=50px"},0)
   		} 
   		//$("div#dv").append("<font color=gray>["+e.keyCode+"]</font>");
	}); */
   $(document).mousedown(function(e)) {
		if(e.which==1){
			alert('mouseDownLeft');
		}	
		if(e.which==2){
			alert('mouseDownRight');
		}	
		if(e.which==3){
			alert('mouseDownWheel');
		}	
	});
});
</script>
</head>
<body>
	<div id="dv">
	</div>
	<img alt="" src="/web/img/1.jpg" width="300" height="200">
</body>
</html>