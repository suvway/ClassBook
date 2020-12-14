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
	
	 $("progress").eq(0).click(function(){
		var id=setInterval(function(){
			$("progress").each(function(index,dom){
				$(this).val($(this).val()+1);
			});
		},100);
		
		$("progress").eq(1).click(function(){
			clearInterval(id);
		});
	});
	var id="";
	$("meter").eq(0).click(function(){
		id=setInterval(setValue,100);
	});
	function setValue(){
		$("meter").each(function(){
			$(this).val($(this).val()+1);
		});
	}
	$("meter").eq(1).click(function(){
		clearInterval(id);
	});
	
});
</script>
</head>
<body>
 <meter value="1" max="100" min="0"></meter>
 <meter value="10" max="100" min="0"></meter>
 <meter value="50" max="100" min="0"></meter>
 
 <progress value="10" max="100"></progress>
 <progress value="5" max="100"></progress>
 <progress value="1" max="100"></progress>

</body>
</html>

















