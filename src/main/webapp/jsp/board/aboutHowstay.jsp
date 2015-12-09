<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HowStay</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
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
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>ABOUT US</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>ABOUT US</h2>
		</div>				
	</div>
	<br/>
	</div>
<div class="container-fluid">
<div class="row">
<div class="col-md-12" style="margin: 0px auto; text-align: center;">
<img src="/howstay/image/aboutHowstay.jpg"/>
</div>
</div>
</div>
	
	<!-- 아랫단 시작-->

	<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
	
	<!-- 아랫단 종료-->

</body>
</html>