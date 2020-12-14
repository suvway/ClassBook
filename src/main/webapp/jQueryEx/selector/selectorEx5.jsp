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
<script  src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
   $(function () {
      $("tr:even").css("background-color","pink").each(function () {
         $(this).hide(1000);
      });
      $("tr:odd").css("background-color","gray").each(function () {
         $(this).hide(1000);
      });
   });
</script>
</head>
<body>

<h4 class="text-primary">class="table table-bordered" 적용시</h4>
<table class="table table-bordered">
   <thead>
      <tr>
         <th>NO</th>
         <th>MESSAGE</th>
         <th>SUBJECT</th>
         <th>FREEBOARD</th>
         <th>LOGIN</th>
      </tr>
   </thead>
   <tbody>
   <c:forEach var="i" begin="1" end="100" step="1">
      <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
      </tr>
   </c:forEach>
   </tbody>

</table>



<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>

</body>
</html>