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
						<h2 class="content_title">회원 정보 관리</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">회원 정보 관리</li>
							<li class="location_item">회원 관리</li>
							<li class="location_item">회원 상세정보</li>
						</ul>
						<div class="col-md-4">
							<form action="/howstay/jsp/admin/adminMemberUpdate.do" name="adminMemberFrm"
								method="post">
								<table>
									<tr>
										<td>
											<div class="input-group">
												<span class="input-group-addon">아이디</span> 
												<input type="text" name="m_id" class="form-control" size="15" value="${bean.m_id}" readonly="readonly"/>
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="input-group">
												<span class="input-group-addon">비밀번호</span> 
												<input type="password" name="m_password" class="form-control" size="15" value="${bean.m_password }"/>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group">
												<span class="input-group-addon">이름</span> 
												<input type="text" name="m_name" class="form-control" size="15" value="${bean.m_name }"/>
											</div>

										</td>
									</tr>
									<tr>
										<td>
											<div class="input-group">
												<span class="input-group-addon">생년월일</span>
												<input type="text" size="15" class="form-control" name="m_birth" value="${bean.m_birth }"/>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="3">
											<div class="input-group">
												<span class="input-group-addon">주소</span>
											<input type="text" name="m_address" size="60" value="${bean.m_address }">
										</td>
									</tr>
									<tr>
										<td colspan="1">

											<div class="input-group">
												<span class="input-group-addon">E-mail</span> 
												<input type="text"name="m_email" value="${bean.m_email }"/>
											</div>
										</td>
										
										<td></td>
										<td></td>

									</tr>

									<tr>
										<td colspan="2">
											<div class="input-group">
												<span class="input-group-addon">전화번호</span> 
												<input type="text" name="m_tel" size="30" value="${bean.m_tel }"/>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="input-group">
												<span class="input-group-addon">휴대폰 번호</span>
												 <input type="text" name="m_mobile" size="30" value="${bean.m_mobile }"/>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="1">
											<div class="input-group-btn">
												<span class="input-group-addon">비밀번호 힌트 
														<input type="text" name="m_pass_q" size="40" class="form-control" value="${bean.m_pass_q }"/>
												</span> <input type="text" name="m_pass_a" size="30" class="form-control" value="${bean.m_pass_a }"/>
											</div>
										</td>
									</tr>

									<tr>
										<td><input
												type="submit" class="btn btn-primary" value="등록"></td>
										<td><a href="/howstay/jsp/admin/adminMemberList.do"><input
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