<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/cartSpring/css/default.css" rel="stylesheet" type="text/css" />
<link href="/web/cartSpring/css/reply.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="./script/jquery-1.7.2.js"></script>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script type="text/javascript">
	$(function() {
		$("button#btn").click(function () {
			if(!$("input[type='radio']").is(':checked')){
				alert("이미지를 선택하세요");
			}else{
				$("form#frm").submit();
			}
		});
	});
</script>
</head>
<body>

	<div id="wrap">
		<!-- header -->
		<jsp:include page="/cartSpring/include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">
					<div class="con_title">
						<p>게시판 상세보기</p>
					</div>
					<div class="contents">
						<div class="btnSet clfix mgb15">
							<span class="fr"> <span class="button"><a href="#">물품구매</a></span>
								<span class="button"> <a
									href="cartAdd.do?cmd=cartAdd&pk=${info.pk}">장바구니</a></span> <span
								class="button"><a href="clientList.do?cmd=clientList">목록</a></span>
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
								<td>${info.pk}</td>
							</tr>
							<tr>

								<td class="fir" rowspan="7"><img
									src="/web/upload/${info.fileName }" width="400" height="400" /></td>
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
							<form id="frm" action="replyInsert.do" method="post"
								enctype="application/x-www-form-urlencoded">
								<fieldset class="fld_cmt">
									<div class="screen_out">
										<strong class="" style="text-align: left;">댓글 작성</strong> <input
											type="hidden" name="id" id="id" value="${info.id }" /> <input
											type="hidden" name="infopk" id="infopk" value="${info.pk }" />
										<input type="hidden" name="state" id="state" /> <input
											type="radio" name="img" value="angry.png" /><img
											src="/web/cartSpring/img/angry.png" width="50" height="50" /> <input
											type="radio" name="img" value="sad.png" /><img
											src="/web/cartSpring/img/sad.png" width="50" height="50" /> <input
											type="radio" name="img" value="haha.png" /><img
											src="/web/cartSpring/img/haha.png" width="50" height="50" /> <input
											type="radio" name="img" value="wow.png" /><img
											src="/web/cartSpring/img/wow.png" width="50" height="50" />
									</div>
									<textarea name="contents" id="contents" class="tf_cmt" cols="115" rows="5"
										title="한줄 토크를 달아주세요">한줄 토크를 달아주세요! (300자)</textarea>
									<button type="button" id="btn" class="btn_cmt">등록</button>
									<p class="info_append">
										<span class="screen_out">입력된 바이트 수 : </span> <span
											class="txt_byte">55</span> / 300자 <span class="txt_bar">|</span>
										<a href="#none">댓글 운영원칙</a>
									</p>
								</fieldset>
							</form>
							<div class="screen_out">
								<strong class="" style="text-align: left;">전체 댓글</strong>
							</div>

							<div id="idv">
								<c:forEach var="i" items="${infoList}">
									<div class="list_cmt" align="left">
										" <img src="/web/cartSpring/img/${i.img}" width="50" height="50" />
										<div class="cmt_body">
											<span class="info_append"><span class="txt_name"
												id="reviewId">${i.id }</span> <span class="txt_bar">|</span>
												<span class="txt_time" id="reviewRegdate">${i.regdate }</span>
											</span>
											<p class="txt_desc" id="reviewContents">${i.contents }</p>
										</div>
										<div class="cmt_foot\"></div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--Footer-->
		<jsp:include page="/cartSpring/include/footer.jsp"></jsp:include>
		<!--END Footer-->
	</div>
</body>
</html>






