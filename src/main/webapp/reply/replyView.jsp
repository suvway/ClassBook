<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="rss.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
   function replyList(v) {
	var temp="";
	$(v).each(function(index,dom) {
	temp+="<div class=\"list_cmt\">";
	temp+="<div class=\"cmt_head\"></div>";
	temp+="<div class=\"cmt_body\">";
	temp+="<span class=\"info_append\">"; 
	temp+="<span class=\"txt_name\">"+dom.id+"</span>";
	temp+="<span class=\"txt_bar\">|</span>";
	temp+="<span class=\"txt_time\">"+dom.regdate+"</span>";
	temp+="</span>";
	temp+="<p class=\"txt_desc\">"+dom.contents+"</p></div>";
	temp+="<div class=\"cmt_foot\">";
	temp+="<a href=\"#none\">답글</a><span class=\"txt_bar\">|</span><a href=\"#none\">수정</a><span class=\"txt_bar\">|</span><a href=\"#none\" id=\"del\">삭제</a><span class=\"txt_bar\">|</span><a href=\"#none\">신고</a>";
	temp+="</div>";
	temp+="</div>";
	});
	$("div.list_cmt").html(temp);
   }
   
   $(function() {
	   $("a#del").click(function () {
		alert('del');
	});
	   $.ajax({
   		 url:"/web/testBoardList.do",
   		 type:'post',
   		 dataType:'json',
   		 data:$("form[name='originForm']").serialize(),
   		 contentType:"application/x-www-form-urlencoded;charset=UTF-8",
   	 	success:function(v){
   	 		replyList(v); 
   	 	},
   	 	error:function(v){
   			 alert('error');
   	 	}
     		});

      $("textarea#contents").focus(function() {

      });

      $("textarea#contents").keyup(function() {
         console.log($(this).val().length);
         if ($(this).val().length > 50) {
            alert('글자 초과');
            return false;
         }
         $("span.txt_byte").text($(this).val().length);
      });
      
     $(function () {
		
	})
      $("input[type='button']").click(function () {
      	$.ajax({
     		 url:"/web/testBoardInsert.do",
     		 type:'post',
     		 dataType:'json',
     		 data:$("form[name='originForm']").serialize(),
     		 contentType:"application/x-www-form-urlencoded;charset=UTF-8",
     	 	success:function(v){
     	 		replyList(v); 
     	 	},
     	 	error:function(v){
     			 alert('error');
     	 	}
       		});
		});
   });
</script>
</head>
<body>
   <div class="cmt_comm">
      <form action="#" name="originForm" enctype="application/x-www-form-urlencoded">
         <fieldset class="fld_cmt">
            <legend class="screen_out">댓글 작성</legend>
            <input type="text" name="id" id="id" size="9" maxlength="9">
            <textarea class="tf_cmt" cols="90" rows="5" title="한줄 토크를 달아주세요" name="contents" id="contents">한줄 토크를 달아주세요! (300자)</textarea>
            <!-- <button type="submit" class="img_sample btn_cmt">등록</button> -->
            <input type="button" value="등록"
               style="position: absolute; top: 50px; width: 100px; height: 54px;">
            <p class="info_append">
               <span class="screen_out">입력된 바이트 수 : </span> <span class="txt_byte">55</span>
               / 300자 <span class="txt_bar">|</span> <a href="#none">댓글 운영원칙</a>
            </p>
         </fieldset>
      </form>
      <strong class="screen_out">전체 댓글</strong>
      <div class="list_cmt">
         
      </div>
      
      
   </div>

</body>
</html>