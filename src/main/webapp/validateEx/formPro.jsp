<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="spring"  uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form"%>

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
<spring:hasBindErrors name="command"/>
<form:errors path="command"/>
  <form action="/web/formValidate.do" method="post">
    ID: <input type="text" name="id" value="${test.id}">
    <font color="red" size="4">
    <form:errors path="id"></form:errors>
    </font>
    <br>
    NAME: <input type="text" name="name" value="${test.name}">
    <font color="red" size="4">
    <form:errors path="name"></form:errors>
    </font>
    <br>
    ADDR: <input type="text" name="addr" value="${test.addr}">
    <font color="red" size="4">
    <form:errors path="addr"></form:errors>
    </font>
    <br>
    EMAMIL: <input type="text" name="email" value="${test.email}">
    <font color="red" size="4">
    <form:errors path="email"></form:errors>
    </font>
    <br>
    <input type="submit" value="Send"> 
  
  </form>
   
</body>
</html>
















