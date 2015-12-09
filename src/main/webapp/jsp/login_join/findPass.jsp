<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/howstay/css/contents.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>How?Stay! 회원가입 츄카츄카!</title>
<%
request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
	<!-- 네비게이션바 -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<!-- include가 디스패처 방식이라 따로 페이지에 css,스크립트 설정안해주셔도 됩니다 -->
	<!-- 상단바랑 carousel을 맞춰주기 위해 들어간 br임 -->
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>비밀번호 찾기</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>비밀번호 찾기</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="container">
		<br>
		<br>
		<br>
		<br>
		<br>
		<div class="container">
		<div class="row">
		<div class="col-md-8 col-md-offset-2">
		<div class="jumbotron"> 
	<c:choose>
	<c:when test="${ m_password != null}">
			<h2>${m_id } 회원님의</h2>
			<h2>비밀번호는 ${m_password }</h2>
			<h2>입니다.</h2>
	</c:when>
		<c:otherwise>
		<h2>입력하신 정보와</h2>
		<h2>일치하는 아이디와 비밀번호가 없습니다.</h2>
		</c:otherwise>
	</c:choose>
			<br><br>			
			<p>
				<a class="btn btn-primary btn-large" href="/howstay/jsp/main.jsp">메인하러 가기!</a>
				<a class="btn btn-primary btn-large" href="/howstay/jsp/mypage/checkpass.jsp">회원정보 수정하러 가기!</a>
			</p>
		</div>
		</div>
		</div>
		</div>
	<br>
	<br>
	<br>
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="copyright">
							<p class="text-center">
								Copyright &copy; 2015 <a href="#" target="_blank">howstay</a>.
								All Rights Reserved.<br />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>