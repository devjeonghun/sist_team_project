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
<title>How?Stay! ȸ������ ��ī��ī!</title>
<%
request.setCharacterEncoding("UTF-8");
%>
</head>
<body>
	<!-- �׺���̼ǹ� -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<!-- include�� ����ó ����̶� ���� �������� css,��ũ��Ʈ ���������ּŵ� �˴ϴ� -->
	<!-- ��ܹٶ� carousel�� �����ֱ� ���� �� br�� -->
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>��й�ȣ ã��</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>��й�ȣ ã��</h2>
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
			<h2>${m_id } ȸ������</h2>
			<h2>��й�ȣ�� ${m_password }</h2>
			<h2>�Դϴ�.</h2>
	</c:when>
		<c:otherwise>
		<h2>�Է��Ͻ� ������</h2>
		<h2>��ġ�ϴ� ���̵�� ��й�ȣ�� �����ϴ�.</h2>
		</c:otherwise>
	</c:choose>
			<br><br>			
			<p>
				<a class="btn btn-primary btn-large" href="/howstay/jsp/main.jsp">�����Ϸ� ����!</a>
				<a class="btn btn-primary btn-large" href="/howstay/jsp/mypage/checkpass.jsp">ȸ������ �����Ϸ� ����!</a>
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