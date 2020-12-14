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
	var src='';
/*    $("img").click(function () {
	$(this).attr("src",$("img").eq(0).attr("src"));
}) */
   $("img").mouseover(function () {
	$(this).attr("src",$("img").eq(0).attr("src"));
});
	$("img").click(function () {
		$(this).attr("src",src);
	})
});
</script>
</head>
<body>
<img alt="" src="/web/img/1.jpg" width="300" height="200">
<img alt="" src="/web/img/2.jfif" width="300" height="200">
<img alt="" src="/web/img/3.jfif" width="300" height="200">
<img alt="" src="/web/img/4.jfif" width="300" height="200">
<img alt="" src="/web/img/5.jpg" width="300" height="200">
<img alt="" src="/web/img/6.png" width="300" height="200">
</body>
</html>