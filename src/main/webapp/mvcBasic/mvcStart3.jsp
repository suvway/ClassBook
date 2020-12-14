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
   $("button").click(function () {
	if($(this).text()=='Java'){
		document.location.href='headRead1.do'
	}else if($(this).text()=='Oracle'){
		document.location.href='headRead2.do'
	}else if($(this).text()=='Jsp'){
		document.location.href='headRead3.do'
	}else if($(this).text()=='Cookie'){
		document.location.href='cookieTest1.do?color=gray';
	}
})
});
</script>
</head>
<body>
	<button id="btn1">Java</button>
	<button id="btn2">Oracle</button>
	<button id="btn3">Jsp</button>
	<button id="btn3">Cookie</button>
</body>
</html>