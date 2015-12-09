<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
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
						
						<div class="bbs_box">
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">제목</dt>
								<dd class="bbs_cell bbs_data_cell strong_r">${bean.cq_title}</dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">작성일</dt>
								<dd class="bbs_cell bbs_data_cell">${bean.cq_regdate}</dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">작성자</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.m_name}</dd>
								<dt class="bbs_cell bbs_field_cell">조회수</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cq_hit}</dd>
							</dl>
							<dl class="bbs_field_row bbs_content_size">
								<dt class="bbs_cell bbs_field_cell">내용</dt>
								<dd class="bbs_cell bbs_data_cell">${bean.cq_contents}</dd>
							</dl>
						</div>
						<div class="rtl vspace10">
							<a class="btn_style btn_list" href="/howstay/jsp/admin/board/adminQa.do">목록</a> <a
								class="btn_style btn_edit" href="userEdit.html">수정</a> <a
								class="btn_style btn_del" href="user.html">삭제</a>
						</div>
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