<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/howstay/css/contents.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>How?Stay! 회원가입 츄카츄카!</title>
</head>
<body>
<%-- ${list } --%>
	<!-- 네비게이션바 -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<!-- include가 디스패처 방식이라 따로 페이지에 css,스크립트 설정안해주셔도 됩니다 -->
	<!-- 상단바랑 carousel을 맞춰주기 위해 들어간 br임 -->
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>회원 가입  </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>회원 가입</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="container">
			<div class="jumbotron hero-spacer">
			<h1>${m_id }님 가입 츄카츄카 !!</h1>
			<h2>우리 How?Stay!에 가입하신걸 환영합니다!</h2>
			<p>저희조에서 만든 How?Stay!에 가입해주셔서 너무 감사드립니다. 저희가 노력되는한 안드로메다까지 예약을
				잡아드릴테니 보내줄때 떠나세요!!</p>
			<p>
				<a class="btn btn-primary btn-large" href="/howstay/jsp/main.jsp">바로 방보러 가기!</a>
			</p>
		</div>



		<div class="row">
			<!-- Title -->
			<div class="row">
				<div class="col-lg-12">
					<h3>최근 인기 상품 !</h3>
				</div>
			</div>
			<!-- /.row -->

			<!-- Page Features -->
			<div class="row text-center">


			<c:forEach var="i" items="${list }" >
				<div class="col-md-3 col-sm-6 hero-feature">
					<div class="thumbnail">
						<img src="/howstay/upload/house/${i.h_file }" alt=""
							style="width: 500px; height: 300px">
						<div class="caption">
							<h3 align="left">${i.h_name }</h3>
							<p>${i.h_category }</p>
							<p>
								<a href="#" class="btn btn-primary">구매!</a> <a href="#"
									class="btn btn-default">상세 정보</a>
							</p>
						</div>
					</div>
				</div>
				
			</c:forEach>
			</div>
		</div>
		
		
	</div>
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
</body>
</html>