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
      tr.question{
         background: pink;
      }
      tr.answer{
      	border: solid 0.1em gray;
      }
</style>
<script  src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
   $(function () {
      $(".question").css("cursor","pointer");
      $(".answer").hide();
      $(".question").each(function(index) {
    	$(this).click(function() {
		$(".answer").eq(index).show(1000);
		$(".answer").eq(index).css("background", "green")
		});
    	$(this).dblclick(function() {
		$(".answer").eq(index).hide(1000);
		});
		
	});
   });
</script>
</head>
<body>
<div class="table-responsive">
<table class="table">
   <thead>
      <tr>
         <th>Show Hide Data</th>
      </tr>
   </thead>
   <tbody>
      <tr class="question">
         <td>당신의 보물1호는?</td>
      </tr>
      <tr class="answer">
         <td>노트북</td>
      </tr>
      
      <tr class="question">
         <td>당신의 나이는?</td>
      </tr>
      <tr class="answer">
         <td>26</td>
      </tr>
      
      <tr class="question">
         <td>당신의 성별은?</td>
      </tr>
      <tr class="answer">
         <td>남자</td>
      </tr>
      
      <tr class="question">
         <td>당신의 혈액형은?</td>
      </tr>
      <tr class="answer">
         <td>a</td>
      </tr>
      
   </tbody>

</table>
</div>




<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>

</body>
</html>