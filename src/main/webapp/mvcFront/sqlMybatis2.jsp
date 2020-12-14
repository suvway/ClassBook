<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>   
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
   
});
</script>
</head>


<body>
<form action="/web/empCheckSelect.do">
   <input type="checkbox" name="empno" value="7369">7369
   <input type="checkbox" name="empno" value="7499">7499
   <input type="checkbox" name="empno" value="7521">7521
   <input type="checkbox" name="empno" value="7566">7566
   <input type="checkbox" name="empno" value="7654">7654
   <input type="submit" value="Send">
   </form>
  <a href="/web/updateEmpAction.do?empno=7369&job=student&sal=9000">empno=7369&job=student&sal=9000</a>
  <a href="/web/updateEmpAction.do?empno=7369&job=doctor">empno=7369&job=doctor</a>
  <a href="/web/updateEmpAction.do?empno=7369&sal=8900">empno=7369&sal=8900</a>
</body>
</html>


























