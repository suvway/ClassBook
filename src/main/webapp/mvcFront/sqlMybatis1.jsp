<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
   uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("button").eq(0).click(function(){
		document.location.href='/web/sqlEmpSelect.do';
	});
	
	$("button").eq(1).click(function(){
		document.location.href='/web/sqlEmpSelect.do?sal=3000';
	});
	
	$("button").eq(2).click(function(){
		document.location.href='/web/sqlEmpSelect.do?job=MANAGER';
	});
	
	$("button").eq(3).click(function(){
		document.location.href='/web/sqlEmpSelect.do?job=SALESMAN';
	});
});
</script>
</head>
<body>
  <button type="button" class="btn">EmpBasic</button>
<button type="button" class="btn btn-default">Sal3000미만</button>
<button type="button" class="btn btn-primary">ManagerJob</button>
<button type="button" class="btn btn-success">SalesManJob</button>
<button type="button" class="btn btn-info">Info</button>
<button type="button" class="btn btn-warning">Warning</button>
<button type="button" class="btn btn-danger">Danger</button>
<button type="button" class="btn btn-link">Link</button>
</body>
</html>