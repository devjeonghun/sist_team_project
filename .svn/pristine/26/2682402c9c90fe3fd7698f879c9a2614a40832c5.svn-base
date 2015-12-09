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
						<h2 class="content_title">Q&A</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">게시판관리</li>
							<li class="location_item">공지사항</li>
						</ul>


						<form action="" method="get"
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


						<table width="100%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="25%" />
                            <col width="50%" />
                            <col width="25%" />
						</colgroup>
						
						<tr class="bbs_row bg_hl">
								<th style="text-align: center">번호</th>
								<th style="text-align: center">제목</th>
								<th style="text-align: center">작성자</th>
						</tr>
						
						<c:forEach var="i" items="${list}">
							<tr align="center">
									<td style="text-align: center">${i.cf_no}</td>
									<td style="text-align: center">
									<a href="/howstay/jsp/admin/board/adFaqInfo.do?cf_no=${i.cf_no}">${i.cf_title}</a></td>
									<td style="text-align: center">${i.a_name}</td>
									<td>
									<a href="/howstay/jsp/admin/board/adminFaqDel.do?cf_no=${i.cf_no }"><input type="button" value="삭제"></a>
									</td>
								</tr>
							</c:forEach>
					</table>
					
					
						<div class="rtl vspace10">
							<a class="btn_style btn_del" href="#">삭제하기</a>
							<%-- howstay.adminBoard.adQaDelete.action?cq_no=${.cq_no } --%>
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