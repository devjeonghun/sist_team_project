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
							<li class="location_item">게시판관리</li>
							<li class="location_item">공지사항</li>
						</ul>


						<form action="/user/user.htm" method="get"
							class="search_box vspace49">
							<fieldset>
								<select name="field">
									<option value="Title" selected="selected">제목</option>
									<option value="Content">내용</option>
								</select> <input name="query" class="search_input" value="" /> <input
									type="submit" id="btnSubmit" class="btn_style btn_search"
									value="검색">
							</fieldset>
						</form>


						<div class="bbs_box">
							<ul class="bbs_row bg_hl">
								<li class="bbs_cell bbs_col_seq">번호</li>
								<li class="bbs_cell split bbs_col_title">제목</li>
								<li class="bbs_cell split bbs_col_writer">작성자</li>
								<li class="bbs_cell split bbs_col_regdate">작성일</li>
								<li class="bbs_cell split bbs_col_hit">조회수</li>
							</ul>
							<c:forEach var="i" items="${ANlist}">
							<ul>
								<li class="bbs_row"><span class="bbs_cell bbs_col_seq">${i.CN_NO}</span>
									<span class="bbs_cell split bbs_col_title">
									<a href="/howstay/jsp/admin/board/adnoticeInfo.do?no=${i.CN_NO}">${i.CN_TITLE}</a></span>
									<span class="bbs_cell split bbs_col_writer">${i.A_NAME}</span>
									<span class="bbs_cell split bbs_col_regdate">${i.CN_REGDATE}</span>
									<span class="bbs_cell split bbs_col_hit">${i.CN_HIT}</span>
								</li>
							</ul>
							</c:forEach>
						</div>
						<div class="rtl vspace10">
							<a class="btn_style btn_add" href="noticeInsert.jsp">등록하기</a>
						</div>
						<div class="bbs_pager_box">
							<span class="strong_r">1</span> / 1 pages
						</div>

						<div class="pager_box vspace10 center">
							<div class="pager">
								<p class="pager_num">
								
									<a href="user?pg=1&amp;field=Title&amp;query="> <img
										src="/howstay/images/admin/body/btnPrev.png" alt="이전">
									</a>
								</p>
								<ul>
									<li class="pager_num"><a
										style="color: Red; font-weight: bold;"
										href="user?pg=1&amp;field=Title&amp;query=">1</a></li>
								</ul>
								<p class="pager_num">
									<a href="user?pg=1&amp;field=Title&amp;query="> <img
										src="/howstay/images/admin/body/btnNext.png" alt="다음">
									</a>
								</p>
							</div>
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