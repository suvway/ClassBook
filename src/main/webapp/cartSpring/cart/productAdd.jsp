<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="/web/css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="/web/cartSpring/css/default.css" rel="stylesheet"
	type="text/css" />
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	function modify(data) {
		$("input[name='productName']").val(data.productName);
		$("input[name='productOrigin']").val(data.productOrigin);
		$("input[name='productPrice']").val(data.productPrice);
		$("input[name='fileName']").val(data.fileName);
		$("select[name='productCategory']").val(data.productCategory);
		$("p.agr")
				.html(
						"<span class=\"button\"  id=\"buttonState\"><a href=\"#\" id=\"modify\">Modify</a></span><span class=\"button\"  id=\"buttonState\"><a href=\"/web/productList.do?id=${id}\" id=\"cancle\">Cancel</a></span>");

		//추가
		$("a#modify").click(function() {
			$("input[name=pk]").val(data.pk);
			$("input[name=job]").val("modify");
			$("form").submit();
		});

	}

	$(function() {
		$("a#search").click(function() {
			var query = $("select#query");
			var data = $("input#data");
			if (query.val() == 'empty' || data.val().length == 0) {
				alert('No SuchElement');
				query.prop("selectedIndex", 0);
				data.val('');
				return false;
			}
			$.ajax({
				url : '/web/productSearch.do',
				dataType : 'json',
				type : 'POST',
				data : {
					query : query.val(),
					data : data.val(),
					id : '${id}'
				},
				success : function(v) {
					console.log(v);
				},
				error : function() {
					alert('Error');
				}
			});

		});
		$("a#save").click(function() {
			var state = false;
			$("input[name=job]").val("new");//추가 
			$("input[name=pk]").val(0);//추가 
			$("input[lang='in']").each(function() {
				if ($(this).val().length == 0) {
					state = true;

				}
			});//each
			if (state || $("select#productCategory").val() == 'empty') {
				alert('InputDataCheck');
				$("select#productCategory").prop("selectedIndex", 0);
				$("input[type='text']").each(function() {
					this.value = '';
				});
				return false;
			}
			$("form").submit();

		});
		$("a")
				.click(
						function() {
							//alert(this.id);
							var state = this.id.split("#");
							if (state[0] == 'del') {
								document.location.href = '/web/adminProductDelete.do?id=${id}&pk='
										+ state[1];
							} else if (state[0] == 'mod') {
								$.ajax({
									url : '/web/adminProductMod.do',
									dataType : 'json',
									type : 'POST',
									data : {
										pk : state[1]
									},
									success : function(data) {
										console.log(data);
										modify(data);
									},
									error : function() {
										alert('error');
									}
								});
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
						<p>상품등록/보기/수정</p>
					</div>



					<div class="contents">
						<div class="btnSet clfix mgb15">
							<span class="fr"> <span class="button"><a href="/web/clientList.do">목록</a></span>
							</span>
						</div>

						<table class="bbsWrite mgb35">
							<caption></caption>
							<colgroup>
								<col width="95" />
								<col width="395" />
								<col width="95" />
								<col />
							</colgroup>
							<tbody>
								<tr>
									<th>검색</th>
									<td><select style="width: 200px;" id="query" name="query">
											<option selected="selected" value="empty">선택하세요</option>
											<option value="productName">productName</option>
											<option value="productorigin">productorigin</option>
											<option value="productcategory">productcategory</option>
									</select></td>
									<th>상품명</th>
									<td><input type="text" name="data" id="data"
										style="border: 1px solid #ddd; height: 20px;"
										class="inputText" size="30" /> <span class="button"><a
											href="#" id="search">검색</a></span></td>
								</tr>
							</tbody>
						</table>

						<div class="clfix">
							<div class="tbWrapLt">
								<table class="bbsList">
									<colgroup>
										<col width="30" />
										<col width="100" />
										<col width="100" />
										<col width="100" />
										<col width="100" />
									</colgroup>
									<thead>

										<tr>
											<th scope="col">NO.</th>
											<th scope="col">상품명</th>
											<th scope="col">모델</th>
											<th scope="col">가격</th>
											<th scope="col">상태</th>

										</tr>
									</thead>

									<tbody>
										<c:forEach var="i" items="${adminProduct }" varStatus="cnt">
											<tr>
												<td>${cnt.count }</td>
												<td>${i.productName}</td>
												<td><img src="/web/upload/${i.fileName}" width="50"
													height="50"></img></td>
												<td>${i.productPrice}</td>

												<td><span class="buttonFuc" title="mod"><a
														href="#" id="mod#${i.pk }">수정</a><span
														style="display: none;">${i.pk}</span></span> <span
													class="buttonFuc" title="del"><a href="#"
														id="del#${i.pk }">삭제</a><span style="display: none;">${i.pk}</span></span>
												</td>
											</tr>
										</c:forEach>



									</tbody>
								</table>
							</div>
							<span id="sm"></span>
							<div class="tbWrapRt">
								<ul class="tabA clfix mgb15">
									<li class="over"><a href="#info1">01. 상품등록</a></li>
								</ul>

								<form action="/web/productInsert.do" name="frm" method="post"
									enctype="multipart/form-data">
									<div id="info1" class="tbWrapCnt" style="display: block;">
										<table class="bbsWrite mgb10">
											<caption></caption>
											<colgroup>
												<col width="95" />
												<col />
											</colgroup>
											<tbody>
												<tr>
													<th>상품명</th>
													<td><input type="text" lang="in"
														style="border: 1px solid #ddd; height: 20px;"
														name="productName" id="productName" class="inputText"
														size="50" /> <input type="hidden" name="id" value="${id}" />
                                    				<input  type="hidden" name="pk"/>
                                    				<input  type="hidden" name="job"/>
                                    				<input  type="hidden" name="fileName"/>
													
													</td>

												</tr>
												<tr>
													<th>원산지</th>
													<td><input type="text" lang="in"
														style="border: 1px solid #ddd; height: 20px;"
														name="productOrigin" id="productOrigin" class="inputText"
														size="50" /></td>
												</tr>
												<tr>
													<th>상품가격</th>
													<td><input type="text" lang="in"
														style="border: 1px solid #ddd; height: 20px;"
														name="productPrice" id="productPrice" class="inputText"
														size="50" /></td>

												</tr>
												<tr>
													<th>카테고리</th>
													<td><select style="width: 200px;"
														name="productCategory" id="productCategory">
															<option selected="selected" value="empty">선택하세요</option>
															<option value="cloth">의류/잡화</option>
															<option value="electronic">전자제품</option>
															<option value="furniture">가구</option>
															<option value="cosmetic">화장품/향수</option>
															<option value="foods">식품/주류</option>
															<option value="car">차량용품</option>
													</select></td>
												</tr>
												<tr>
													<th>상품이미지1</th>
													<td class="alignM"><input type="file" name="file"
														id="file" class="inputText" size="10" /><span
														id="imgSpan"></span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</form>
							</div>

							<p class="agr">
								<span class="button" id="buttonState"><a href="#"
									id="save">저장</a></span>
							</p>
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