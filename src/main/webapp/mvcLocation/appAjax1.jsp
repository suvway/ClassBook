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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function ajaxJson(url,dataType,id){
	$.ajax({
		url:url,
		dataType:dataType,
		type:'GET',
		success:function(v){
			$("div#"+id).html("<ul><li>"+v.no+"</li><li>"+v.name+"</li><li>"+v.age+"</li></ul>");
		},error:function(){
			
		}
	});
}
$(function() {
	$("ul li a").click(function(){
		//$("div#"+this.href.split("#")[1]).html("<b>Hi"+this.href.split("#")[1]+"</b>");
		if(this.href.split("#")[1]=='home'){
			ajaxJson('jsonParseData.do','text');
		}else if(this.href.split("#")[1]=='tab1'){
			ajaxJson('jsonParseData2.do','json','tab1');
		}else if(this.href.split("#")[1]=='tab2'){
			ajaxJson('jsonParseData3.do','json','tab2');
		}else if(this.href.split("#")[1]=='tab3'){
			ajaxJson('jsonParseData4.do','json','tab3');
		}		
	});
	
});
</script>
</head>
<body>
 <div class="container">  
    <h2>Toggle Tab</h2>
    <ul class="nav nav-tabs" id="myTab">
      <li><a href="#home" id="a1">동현일기</a></li>
      <li><a href="#tab1" id="a2">지나일기</a></li>
      <li><a href="#tab2" id="a3">선규일기</a></li>
      <li><a href="#tab3" id="a4">승호일기</a></li>
    </ul>
   
  <div class="tab-content">
    <div class="tab-pane" id="home">
      
    </div>  

    <div class="tab-pane" id="tab1">
      
    </div>    

    <div class="tab-pane" id="tab2">    
    </div>
    <div class="tab-pane" id="tab3">      
    </div>
  
</div>
</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="../js/bootstrap.min.js"></script>
    <script>
      $('#myTab a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')  
      })
      $('#myTab a:first').tab('show')

    </script>
</body>
</html>