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
$(function(){
	   $("ul li a").click(function(){
	      //alert($(this).text());
	      //console.log($(this).parent());
	      $("ul li").each(function(){
	         $(this).removeClass("active");
	      });      
	      $(this).parent().addClass("active");
	   });
	   
	});
</script>
</head>
<body>
 <div class="container ">  


   <h1> 드롭다운 </h1>

   <hr>

        <h4>알약형 형 네비게이션 드롭다운  </h4>
           <ul class="nav nav-pills">
               <li  class="active"><a href="#">메뉴1</a></li>
             <li class="dropdown">
                 <a data-toggle="dropdown" data-target="#" href="dropdown.html">메뉴 2 <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                   <li><a role="menuitem" href="#" >1</a></li>
                   <li><a role="menuitem" href="#">2</a></li>
                   <li><a role="menuitem" href="#">3</a></li>
                   <li class="divider"></li>
                   <li><a role="menuitem" href="#">분리된 메뉴 </a></li>
              </ul>
         </li>
         <li class="dropdown">
               <a data-toggle="dropdown" href="#">메뉴 3 <span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                <li><a role="menuitem" href="#">1</a></li>
                <li><a role="menuitem" href="#">2</a></li>
                <li><a role="menuitem" href="#">3</a></li>
                <li class="divider"></li>
                <li><a role="menuitem" href="#">분리된 메뉴 </a></li>
              </ul>
         </li>
         <li class="dropdown">
               <a data-toggle="dropdown" href="#">메뉴 4 <span class="caret"></span></a>
               <ul class="dropdown-menu" role="menu">
                <li><a role="menuitem" href="#">1</a></li>
                <li><a role="menuitem" href="#">2</a></li>
                <li><a role="menuitem" href="#">3</a></li>
                <li class="divider"></li>
                <li><a role="menuitem" href="#">분리된 메뉴 </a></li>
              </ul>
         </li>
     </ul>






<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>

</body>
</html>