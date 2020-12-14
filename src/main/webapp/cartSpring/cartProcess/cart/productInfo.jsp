<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="./css/default.css" rel="stylesheet" type="text/css" />
<link href="/web/css/reply.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="./script/jquery-1.7.2.js"></script>
<script  src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("input[type='radio']").click(function(){
			$("#state").val($(this).val());
			
		});
		$("button#btn").click(function(){
			if($("#state").val().length==0){
				alert('StateCheck!');
				return false;
			}
			var formData="ct="+$("#ct").val()+"&id="+$("#id").val()+"&infopk="+$("#infopk").val()+"&state="+$("#state").val();
			var temp="";
			$.ajax({
				url:'/web/reView.do?cmd=reView',
				dataType:'json',
				data:formData,
				type:'post',
				success:function(vv){					
					$(vv).each(function(i,data){
						temp+="<div class=\"list_cmt\" align=\"left\">"
						temp+="<img src=\"/web/img/"+data.state+"\" width=\"50\" height=\"50\"/>"
						temp+="<div class=\"cmt_body\">"
						temp+="<span class=\"info_append\"> <span class=\"txt_name\" id=\"reviewId\">"+data.id+"</span>"
						temp+="<span class=\"txt_bar\">|</span> <span class=\"txt_time\" id=\"reviewRegdate\">"+data.regdate+"</span>"
						temp+="</span>"
						temp+="<p class=\"txt_desc\" id=\"reviewContents\">"+data.contents+"</p>"
						temp+="</div>"
						temp+="<div class=\"cmt_foot\">"
						temp+="</div>"
						temp+="</div>"	
					});
					$("#idv").html(temp);
				}
			});
			//alert($("#ct").val()+' '+$("#id").val()+' '+$("#infopk").val()+" "+$("#state").val());
		});

	});	

</script>
</head>
<body >

	<div id="wrap">
		<!-- header -->
		<jsp:include page="/include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>게시판 상세보기</p>   
		            </div>
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr">
						
                            <span class="button"><a href="#">물품구매</a></span>
							<span class="button"> <a href="cartAdd.do?cmd=cartAdd&no=${info.no}">장바구니</a></span>						
							<span class="button"><a href="clientList.do?cmd=clientList">목록</a></span>
						</span>
					</div>
					<table class="bbsList">
						<colgroup>
							<col width="400" />
                            <col width="100" />
                            <col width="" />
						</colgroup>
						<tr>
							<th scope="col" class="fir">이미지</th>
                             <th scope="col">글번호</th>
                             <td>${info.no}</td>
                        </tr>
                        <tr>
                        
                          <td class="fir" rowspan="7"><img src="/web/upload/${info.fileName }" width="400" height="400"/></td>
                          <th scope="col">아이디</th>
                          <td>${info.id}</td>
                        </tr>
                        <tr>
                          <th scope="col">상품이름</th>
                          <td>${info.productName}</td>
                        </tr>
                        <tr>
                          <th scope="col">가격</th>
                          <td>${info.productPrice}</td>
                        </tr>
                        <tr>
                          <th scope="col">원산지</th>
                          <td>${info.productOrigin}</td>
                        </tr>
                        <tr>
                          <th scope="col">카테고리</th>
                          <td>${info.productCategory}</td>
                        </tr>
                        <tr>
                          <th scope="col">등록일</th>
                          <td>${info.regdate}</td>
                        </tr>                        
					</table>
					
					<div class="cmt_comm">
							<form action="#" method="post" enctype="application/x-www-form-urlencoded">
								<fieldset class="fld_cmt">
									<div class="screen_out"><strong class="" style="text-align: left;">댓글 작성</strong>
									<input type="hidden" name="id" id="id" value="blue"/>
									<input type="hidden" name="infopk" id="infopk" value="${info.no }"/>
									<input type="hidden" name="state" id="state"/>
									<input type="radio" name="img" value="angry.png"/><img src="/web/img/angry.png" width="50" height="50"/>
									<input type="radio" name="img" value="sad.png"/><img src="/web/img/sad.png" width="50" height="50"/>
									<input type="radio" name="img" value="haha.png"/><img src="/web/img/haha.png" width="50" height="50"/>
									<input type="radio" name="img" value="wow.png"/><img src="/web/img/wow.png" width="50" height="50"/>
									</div>
									<textarea name="ct" id="ct" class="tf_cmt" cols="115" rows="5" title="한줄 토크를 달아주세요">한줄 토크를 달아주세요! (300자)</textarea>
									<button type="button" id="btn" class="btn_cmt">등록</button>
									<p class="info_append">
										<span class="screen_out">입력된 바이트 수 : </span> 
										<span class="txt_byte">55</span> / 300자
										<span class="txt_bar">|</span>
										<a href="#none">댓글 운영원칙</a>
									</p>
								</fieldset>
							</form>
							<div class="screen_out">
								<strong class="" style="text-align: left;">전체 댓글</strong>
							</div>
							
							<div id="idv">
							<c:forEach var="i" items="${reViewList}"> 
							 <div class="list_cmt" align="left">"
						<img src="/web/img/${i.state}" width="50" height="50"/>
						<div class="cmt_body">
						<span class="info_append"><span class="txt_name" id="reviewId">${i.id }</span>
						<span class="txt_bar">|</span> <span class="txt_time" id="reviewRegdate">${i.regdate }</span>
						</span>
						<p class="txt_desc" id="reviewContents">${i.contents }</p>
						</div>
						<div class="cmt_foot\">
						</div>
						</div>
						</c:forEach>	
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
					
	<!--Footer-->
      <jsp:include page="/include/footer.jsp"></jsp:include>
   <!--END Footer-->	
	</div>
</body>
</html>






