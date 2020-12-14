<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/cartSpring/css/contents.css" rel="stylesheet" type="text/css" />
<link href="reply.css" rel="stylesheet" />

</head>
<body>
	<div id="wrapper">
		<div id="header">
				<div class="topInfoWrap">
					<div class="topInfoArea clfix">
						<div class="loginWrap">
							<span class="fir">2012.05.17</span>
							<span>13:30:22</span>
							<span><em>OOO님</em> 좋은 하루 되세요</span>
							<a href="" class="btnLogout"><img src="/web/cartSpring/img/common/btn_logout.gif" alt="로그아웃" /></a>
						</div>
					</div>
				</div>
				<div class="gnbSubWrap">
					
				</div>
			</div>
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 상세보기</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
							<span class="button"> <a href="">수정</a></span>
							<span class="button"><a href="">삭제</a></span>
							<span class="button"><a href="">목록</a></span>
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
                             <td></td>
                        </tr>
                        <tr>
                        
                          <td class="fir" rowspan="7"><img src="" width="400" height="400"/></td>
                          <th scope="col">작성자</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">제목</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">내용</th>
                          <td height="200"></td>
                        </tr>
                        <tr>
                          <th scope="col">등록일</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">조회수</th>
                          <td></td>
                        </tr>                   
                      
					</table>
					
				</div>
			</div>
			
			<!-- 덧글 div--> 
<div class="cmt_comm">
	<form action="#">
		<fieldset class="fld_cmt">
			<legend class="screen_out">댓글 작성</legend>
			<textarea class="tf_cmt" cols="115" rows="5" title="한줄 토크를 달아주세요">한줄 토크를 달아주세요! (300자)</textarea>
			<button type="submit" class="btn_cmt"  >등록</button>
			<p class="info_append">
				<span class="screen_out">입력된 바이트 수 : </span>
				<span class="txt_byte">55</span> / 300자
				<span class="txt_bar">|</span>
				<a href="#none">댓글 운영원칙</a>
			</p>
		</fieldset>
	</form>
	<strong class="screen_out">전체 댓글</strong>
	<div class="list_cmt">
		<div class="cmt_head"></div>
		<div class="cmt_body">
			<span class="info_append">
				<span class="txt_name">글쓴이</span>
				<span class="txt_bar">|</span>
				<span class="txt_time">2013.01.01 14:22</span>
			</span>
			<p class="txt_desc">
				댓글 내용이 나오는 곳...댓글댓글 내용이 나오는 곳...댓글 내용이 나오는 곳...댓글 내용이 나오는 곳...
			</p>
		</div>
		<div class="cmt_foot">
			<a href="#none">답글</a><span class="txt_bar">|</span><a href="#none">수정</a><span class="txt_bar">|</span><a href="#none">삭제</a><span class="txt_bar">|</span><a href="#none">신고</a>
		</div>
	</div>
	
	
	
	

</div>

			<!--덧글 div 끝 --> 
			
		</div>
	</div>
</body>
</html>






