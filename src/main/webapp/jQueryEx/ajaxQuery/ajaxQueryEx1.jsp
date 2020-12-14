<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %> 
<%@ taglib prefix="function"  uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">

function show1(){
   alert('show1');
}
function show2(){
   alert('show2');
}
   $(function(){
      $("input[type='button']").click(function(){
         //alert($(this).val());      //=get value
         //$(this).val('Action');      //=set value
         if($(this).val()=='Click1'){
            //show1();
            $.ajax({   
               url:'/web/jQueryEx/ajaxData/dataValue1.jsp',
               dataType:'text',
               success:function(data){
            	   $("span#sp1").append(data);
               }
            });
         }
         if($(this).val()=='Click2'){
            //show2();
            $.ajax({
            	url:'/web/jQueryEx/ajaxData/dataValue2.jsp',
            	dataType:'json',
            	success:function(data){
            		//console.log(data);
            		$(data).each(function(index,dom){
            			//console.log(index+" "+dom.no);
            			$("ul#u").append("<li>"+dom.no+"+"+dom.Title+"</li>");
            			
            		});
            	}
            	
            });
         }
         if($(this).val()=='Click3'){
        	 $.ajax({
        		 url:'/web/ajaxData.do?cmd=ajaxData',
        		dataType:'text',
        		success:function(data){
        			$("span#sp1").html(data);
        		}
        	 });
         }
      });
      
   });

</script>

</head>
<body>
<input type="button" value="Click1">
<input type="button" value="Click2">
<input type="button" value="Click3">
<input type="button" value="Click4">
<span id="sp1"></span>
<ul id="u">
</ul>
</body>
</html>