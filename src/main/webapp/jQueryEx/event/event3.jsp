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
      //alert($("div").eq(0).attr("id"));
      //$("div").eq(0).attr("id","action");       //attr("바꿀 속성", "바꿀 값")
      
   /*    $("div").each(function(index,dom){         //for문 돌려서 div id별 id값 나타내기 
         alert(this.id+" "+$(this).attr("id"));
      }) */
      
      $("div").attr("id",function(index){
         //alert(index+" "+this.id);
         //alert('index'+index);
         return "div-id-"+index;
      
      }).each(function(jx, dom){
         //alert('jx'+jx+" "+$(this).text());
         $("span",this).html("(ID='<B>'"+this.id+"'</B>')");
         
         
      });
   });
</script>
</head>
<body>
	<div id="d1">ZERO-TH<span></span></div>
	<div id="d2">FIRST<span></span></div>
	<div id="d3">SECOND<span></span></div>
</body>
</html>