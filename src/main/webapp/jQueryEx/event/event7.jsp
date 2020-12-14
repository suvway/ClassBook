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
	/* $("h1").click(function(){
		$(this).text("Click");
	}); */
	/* $("h1").mouseover(function(){
		//$(this).html("<font color='red'>Test</font>");
		$(this).html(function(index,dom){
			alert(dom);
			return dom+"★";
		});
	}); */
	$("div").click(function(){
		var h=$("h1",this).text();
		var p=$("p",this).text();
		//alert(h+'♥'+p);
	});
	
	$("h1").dblclick(function(){
		$(this).html(function(index,data){
			return data+"♥";
		});
	});
	setInterval(function(){
		$("h1").first().trigger("dblclick");
	},1000);
});
</script>
</head>
<body>
  <!-- <h1>HEADER-0</h1>
  <h1>HEADER-1</h1>
  <h1>HEADER-2</h1> -->
  <div>
    <h1>동현</h1>
    <p>선규</p>
  </div>
  
  <h1>Start:</h1>
  <h1>Start:</h1>

</body>
</html>


















