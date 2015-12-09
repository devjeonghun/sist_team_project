<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
<script type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#insertN").click(function() {
		//제약사항
		//alert('abc');		
		 $("form #nFrm").submit();
	});
});
 </script>
<title>Insert title here</title>
</head>
<body>
	<!-- Header Start -->
	<jsp:include page="/jsp/admin/menubar.jsp"></jsp:include>
	<!-- Content Start-->
	<div id="contentBgColor">
		<div id="contentWrapper" class="frame">
			<div id="content">
				<jsp:include page="boardCategory.jsp"></jsp:include>
				<div id="bodyWrapper">
					<div id="content_body">
						<h2 class="content_title">공지사항</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">회원관리</li>
							<li class="location_item">회원목록</li>
						</ul>
						<div class="content_space"></div>
						
						
						
					<form action="/howstay/jsp/admin/board/adNotInsert.do" id="nFrm" name="nFrm" method="post" enctype="multipart/form-data">
						<div class="bbs_box">
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">제목</dt>
								<dd class="bbs_cell bbs_data_cell strong_r">
								<input type="text" style="margin-top: 5px" name="cn_title"/> </dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">작성자</dt>
								<dd class="bbs_cell bbs_data_half_cell">session
								<!-- <input type="text" name="a_no"> --><dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">첨부파일</dt>
								<dd class="bbs_cell bbs_data_cell"><input type="file" name="cn_file" /></dd>
							</dl>
							<dl class="bbs_field_row bbs_content_size">
								<dt class="bbs_cell bbs_field_cell">내용</dt>
								<dd class="bbs_cell bbs_data_cell"><textarea style="height: 95%; width: 95%" name="cn_contents"></textarea > </dd>
							</dl>
						</div>
						<div class="rtl vspace10">
						<!-- javascript:insertN() -->
							<button id="insertN">등록</button>
							<!-- <a href="#"><input type="button" id="insertN" value="등록"/></a> -->
							<a href="/howstay/admin/adnotice.action"><input type="button" id="reset" value="취소"/></a>
						</div>
					</form>
					
						<div class="bbs_box" style="border-top: 1px double #d1d1d1;">
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">이전글</dt>
								<dd class="bbs_cell bbs_data_cell">[공지] 공지사항 입니다.</dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">다음글</dt>
								<dd class="bbs_cell bbs_data_cell">[공지] 공지사항 입니다.</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer 시작-->
	<div id="footerBgColor">
		<div id="footer">
			<p>
				<span>Copyright ⓒ HOWSTAY. All Right Reserved.</span>
			</P>
		</div>
	</div>
</body>
</html>