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
   $("input").click(function() {
	//$(this).val($(this).val().concat("님"));
	$("#s"+this.id.substr(this.id.length-1)).text('');
	$("<font color='blue' size=5>"+$(this).val()+"</font>").appendTo("#s"+this.id.substr(this.id.length-1));
	});
});
</script>
</head>
<body>
	<input type="button" id="btn1" value="김동현">
	<input type="button" id="btn2" value="변진환">
	<input type="button" id="btn3" value="김상배">
	<input type="button" id="btn4" value="주병찬">
	<input type="button" id="btn5" value="채승호">
	<span id="s1">s1</span>
	<span id="s2">s2</span>
	<span id="s3">s3</span>
	<span id="s4">s4</span>
	<span id="s5">s5</span>
</body>
</html>