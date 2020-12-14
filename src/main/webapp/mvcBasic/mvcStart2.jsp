<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="function"
	uri="http://java.sun.com/jsp/jstl/functions"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	
		function ajaxProcess(url, data, dataType) {
			$.ajax({
				url : url,
				type : 'GET',
				dataType : dataType,
				data : {
					job : data
				},
				success : function(v) {
					console.log(v);
				},
				error : function() {
					alert('error');
				}
			});
		}
	
	$(function() {
		$("button").click(function() {
			if (this.id == 'btn1') {
				ajaxProcess('/web/responseData.do', 'java', 'text');
			} else if (this.id == 'btn2') {
				ajaxProcess('/web/responseData.do', 'oracle', 'text');
			} else if (this.id == 'btn3') {
				ajaxProcess('/web/responseData2.do', 'spring', 'json');
			} else if (this.id == 'btn4') {
				ajaxProcess('/web/responseData3.do', 'html', 'json');
			} else if (this.id == 'btn5') {
				ajaxProcess('/web/responseData4.do', 'html', 'json');
			}
		});
	});
</script>

</head>
<body>
	<font size=6><b><a href="/web/mvcDemo1.do">mvcDemo1</a></b></font>
	<font size=6><b><a href="mvcDemo2.do">mvcDemo2</a></b></font>
	<button id="btn1">IDBTN1</button>
	<button id="btn2">IDBTN2</button>
	<button id="btn3">IDBTN3</button>
	<button id="btn4">IDBTN4</button>
	<button id="btn5">IDBTN4</button>

</body>
</html>