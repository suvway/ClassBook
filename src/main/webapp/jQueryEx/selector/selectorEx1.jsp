<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button").click(function(){
	//console.log(document.getElementsByTagName("p")[0].innerHTML);
	/* console.log($("p").html());//java
	console.log($($("p")[0]).html());//java $("p")[0]의 html 실행
	console.log($("p").eq(0).html());//java eq는 순번 */
	//.html()은 getElement와 같은것 괄호 안에 뭔가 넣으면 innerHtml
/* 	for(var i=0;i<$("p").length;i++){
		$("p").eq(i).html("<font color=gray>"+$("p").eq(i).html()+"</font>");
	} */
	/* $("p").each(function(index,dom){//each는 첫번째 인자로 index 두번째 인자로 dom을 준다.
		console.log(index+$(dom).html());	
	
		}); */
	});
	$("p").click(function(){
		$(this).text("hi");
	});
});
</script>
</head>
<body>
	<button id="btn1">Click1</button>
	<p>JAVA</p>
	<p>Spring</p>
	<p>Oracle</p>
	
</body>
</html>