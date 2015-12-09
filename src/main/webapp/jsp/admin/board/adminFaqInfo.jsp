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
						<h2 class="content_title">��������</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">ȸ������</li>
							<li class="location_item">ȸ�����</li>
						</ul>
						<div class="content_space"></div>
						
						<div class="bbs_box">
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">����</dt>
								<dd class="bbs_cell bbs_data_cell strong_r">${info.cf_title}</dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">�ۼ���</dt>
								<dd class="bbs_cell bbs_data_half_cell">${info.a_name}</dd>
							</dl>
							<dl class="bbs_field_row bbs_content_size">
								<dt class="bbs_cell bbs_field_cell">����</dt>
								<dd class="bbs_cell bbs_data_cell">${info.cf_contents}</dd>
							</dl>
						</div>
						<div class="rtl vspace10">
							<a class="btn_style btn_list" href="/howstay/jsp/admin/board/adminFaq.do">���</a> <a
								class="btn_style btn_edit" href="userEdit.html">����</a> <a
								class="btn_style btn_del" href="user.html">����</a>
						</div>
						<div class="bbs_box" style="border-top: 1px double #d1d1d1;">
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">������</dt>
								<dd class="bbs_cell bbs_data_cell">[����] �������� �Դϴ�.</dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">������</dt>
								<dd class="bbs_cell bbs_data_cell">[����] �������� �Դϴ�.</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer ����-->
	<div id="footerBgColor">
		<div id="footer">
			<p>
				<span>Copyright �� HOWSTAY. All Right Reserved.</span>
			</P>
		</div>
	</div>
</body>
</html>