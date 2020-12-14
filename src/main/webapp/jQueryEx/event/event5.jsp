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
$(function(){
	
	function checkFun(state){
	/* 	$("input:checkbox[name='ck']").each(function(){
			this.checked=state;
		}); */		
		$("input:checkbox[name=ck]").attr("checked",state);
	}
	$("input[type='button']").click(function(){
		//console.log($("input:checkbox[id='java']").is(":checked"));
		//console.log($("input:checkbox[name='ck']").is(":checked"));
		//console.log($("input:checkbox[name='ck']").length);
		//checkFun(this.value=='ClickCheck');
		
		/* $.each($("input[type='checkbox']"),function(index,dom){
			console.log(this.checked?this.value:"");
		}); */
		
		checkFun(this.id=='c1');
		
	});
	
});
</script>
</head>
<body>
      <input type="checkbox" name="ck" value="java" id="java">java
      <input type="checkbox" name="ck" value="oracle" id="oracle">oracle
      <input type="checkbox" name="ck" value="spring" id="spring">spring
      <input type="checkbox" name="ck" value="xml" id="xml">xml
      <input type="checkbox" name="ck" value="json" id="json">json
      <input type="button" value="ClickCheck" id="c1">
      <input type="button" value="ClickUnCheck" id="c2">
</body>
</html>

















