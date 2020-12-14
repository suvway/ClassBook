<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
*{
	margin: 0;
	padding: 0;
}
#wrap{
	width:90%;
	height:500px;
	margin: 0 auto;
	border: 4px solid #000;
}
.container{
	width:960/900;
	height:492px;
	margin: 0 auto;
	border: 4px solid gray;
}
.container div{
	display: inline-block;
	height: 100%;
}
.container div:first-child{
	width:33.33333333%;
	background: blue;
}
.container div:first-child + div{
	width:66.666666666666%;
	background: blue;
	background: gray;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   
});
</script>
</head>
<body>
	<div id="wrap">
		<div class="container">
		<div></div><div></div>
		</div>
	</div>
</body>
</html>