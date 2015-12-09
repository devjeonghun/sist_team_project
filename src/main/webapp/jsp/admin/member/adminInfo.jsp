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
	<div class="container-fluid">
	<!-- Content Start-->
	<div id="contentBgColor">
		<div id="contentWrapper" class="frame">
			<div id="content">
				<jsp:include page="memberCategory.jsp"></jsp:include>
				<div id="bodyWrapper">
					<div id="content_body">
						<h2 class="content_title">STEP 정보 관리</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">STEP 관리</li>
							<li class="location_item">STEP 상세정보</li>
						</ul>
						<div class="col-md-4">
							<form action="/howstay/admin/adminMemberUpdate.action" name="adminMemberFrm"
								method="post">
								<table>
									<tr>
										<td>
											<div class="input-group">
												<span class="input-group-addon">관리자 아이디</span> 
												<input type="text" name="a_id" class="form-control" size="15" value="${bean.a_id}" readonly="readonly"/>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="input-group">
												<span class="input-group-addon">비밀번호</span> 
												<input type="password" name="a_password" class="form-control" size="15" value="${bean.a_password }"/>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group">
												<span class="input-group-addon">이름</span> 
												<input type="text" name="a_name" class="form-control" size="15" value="${bean.a_name }"/>
											</div>

										</td>
									</tr>
									<tr>
										<!-- <td><input
												type="submit" class="btn btn-primary" value="등록"></td> -->
										<td><a href="/howstay/admin/adminStepList.action"><input
												type="button" class="btn btn-primary" value="취소"></a></td>
									</tr>
								</table>
							</form>
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