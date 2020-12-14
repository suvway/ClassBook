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
   $("h3").each(function () {
		$(this).text("Subject");
	});
   $("h3").click(function() {
		//$(this).next().text("click");
		//$(this).next().next().first().text("우다다다다다");
	});
   $("a[role='button']").click(function() {
	$(".col-lg-6").slideUp(1000).slideDown(1000);
});
});
</script>
</head>
<body>
	<div class="container"> 
 <h1> 썸네일 </h1>
 <div class="row">
    <div class="col-lg-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="DSC_6305.jpg" alt="...">
      </a>
    </div>
      <div class="col-lg-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="DSC_0374.jpg" alt="...">
      </a>
    </div>
      <div class="col-lg-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="DSC_5041.jpg" alt="...">
      </a>
    </div>
      <div class="col-lg-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="DSC_4999.jpg" alt="...">
      </a>
    </div>
 </div>
 <hr>
 <div class="row">
    <div class="col-lg-6 col-md-3">
      <div class="thumbnail">
        <img src="DSC_6305.jpg" alt="...">
          <div class="caption">
            <h3>제목과 </h3>
            <p>내용도 넣을 수 있다.</p>
            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
        </div>
      </div>
    </div> 
    <div class="col-lg-6 col-md-3">
     <div class="thumbnail">
       <img src="DSC_0374.jpg" alt="...">
        <div class="caption">
          <h3>제목과 </h3>
          <p>내용도 넣을 수 있다.</p>
          <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
        </div>
      </div>
    </div>
    <div class="col-lg-6 col-md-3">
      <div class="thumbnail">
       <img src="DSC_5041.jpg" alt="...">
        <div class="caption">
          <h3>제목과 </h3>
          <p>내용도 넣을 수 있다.</p>
          <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
        </div>
      </div>
    </div>
    <div class="col-lg-6 col-md-3">
      <div class="thumbnail">
       <img src="DSC_4999.jpg" alt="...">
        <div class="caption">
          <h3>제목과 </h3>
          <p>내용도 넣을 수 있다.</p>
          <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
        </div>
      </div>
    </div> 
 </div>  

</div>
</body>
</html>