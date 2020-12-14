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
	/* $("button").click(function(){
		$("div").eq(0).html("<img width='400' height='300' src='/web/img1/1.jpg'>");
		$("div").eq(1).html(this);
	}); */
	/* $("button#btn1").click(function(){
		$("div").eq(0).html("<img width='400' height='300' src='/web/img1/1.jpg'>");
	}); */
	/* $("button.cbs").click(function(){
		$("div").eq(0).html("<img width='400' height='300' src='/web/img1/1.jpg'>");
	}); *///class는.으로 id는 #으로
	/* $("button").click(function(){
		if(this.id=='btn1'){
		$("div").eq(0).html("<img width='400' height='300' src='/web/img1/1.jpg'>");
		}
		if(this.id=='btn2'){
		$("div").eq(0).html("<img width='400' height='300' src='/web/img1/2.jpg'>");
		}
		if(this.id=='btn3'){
		$("div").eq(0).html("<img width='400' height='300' src='/web/img1/3.jpg'>");
		}
	}); */
	/* $("button").click(function() {
		if($(this).attr("id")=='btn1'){//this.id==$(this).attr.("id") 즉 어트리뷰트 반환함수가 $(this).attr
			//$("div").eq(0).html("<img width='400' height='300' src='/web/img1/1.jpg'>");
			//$("div").eq(0).append("<img width='400' height='300' src='/web/img1/1.jpg'>");
			alert($("div").eq(0).html());
			alert($($("div")[0]).text());
		}
	}); */
	$("button").eq(2).click(function(){
		$("ul#ui2 li").each(function(index,dom) {
			switch (index) {
			case 0:
				$(dom).css('color','red').fadeOut(1000).fadeIn(1000);
				break;
			case 1:
				$(dom).css('color','gray').fadeOut(1000).fadeIn(1000);
				break;
			case 2:
				$(dom).css('color','yellow').fadeOut(1000).fadeIn(1000);
				break;
			case 3:
				$(dom).css('color','cyan').fadeOut(1000).fadeIn(1000);
				break;

			default:
				break;
			}
		});
	});
});
</script>
</head>
<body>
	<button id="btn1">Click1</button>
	<button id="btn2" class="cbs">Click2</button>
	<button id="btn3">Click3</button><br>
	
	<div><span>ActionSpan</span></div>
	<div></div>
	<div></div>
	
	<ul id="ui1">
		<li>딸기</li>
		<li>수박</li>
		<li>멜론</li>
		<li>참외</li>
	</ul>
	<ul id="ui2">
		<li>땅콩</li>
		<li>키위</li>
		<li>낑깡</li>
		<li>사과</li>
	</ul>
</body>
</html>