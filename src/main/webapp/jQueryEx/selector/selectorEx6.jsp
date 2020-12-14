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
#bigimg{
 	position: absolute;
 	padding: .5em;
 	background: #e3e3e3;
	border: 1px solid #BFBFBF;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   $("p").click(function(){
	  $("span").trigger('tig');
   });
	   var i=0;;
   $("span").bind('tig',function(){
	  $(this).text("");
	  $(this).append("sapn changed"+" "+ ++i); 
   });
   
   //$("img").animate({"opacity":0.3});
   $("img").hover(function (e) {
		$(this).animate({"opacty":0.5});
		var src=$(this).attr("src");
		$("<img id='bigimg' src="+src+" width=300 height=200>").css('top',e.pageY).css('left',e.pageX).
		appendTo("body");
	},function(){
		 $(this).animate({"opacity":0.3});
	     $("#bigimg").remove();
	});
});
</script>
</head>
<body>
	<div>
	<p>p tag</p>
	</div>
	<span>span</span><br>
	<img alt="" src="/web/img/1.jpg" width="300" height="200">
</body>
</html>