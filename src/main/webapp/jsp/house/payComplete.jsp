<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>How?Stay!</title>
<link href="/howstay/css/contents.css" rel="stylesheet" type="text/css" />
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="/howstay/css/bootstrap.min.css" type="text/css">
<link rel="shortcut icon" href="/howstay/image/fav.ico">

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="/howstay/font-awesome/css/font-awesome.min.css"
	type="text/css">
<script >
function loginCheck() {
	var obj=document.login;
	if(!obj.m_id.value||!obj.m_password.value){
		alert('ID or PASS CHECK');
		obj.m_id.value='';
		obj.m_password.value='';
		obj.m_id.focus();
		return;
	}else{
	obj.submit();
	}
}
</script>
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
					<h1>결제 완료 </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>결제 완료</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-rm-center" align="center">
				<h2><font face="Malgun Gothci">결제가 정상 처리되었습니다.</font></h2>
				<br>
				<img src="/howstay/image/logo_whenpay.png">
				<br>
				<br>
				<h2><font face="Malgun Gothci">이용해 주셔서 감사합니다.</font></h2>
				<br><br><br><br>
			</div>
		</div>
	</div>

	<section id="services">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">At Your Service</h2>
				<hr class="primary">
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-paper-plane wow bounceIn text-primary"
						data-wow-delay=".1s"></i>
					<h3>숙박정보</h3>
					<p class="text-muted">국내의 여러 숙박정보를 한눈에 찾아서 볼 수 있어요!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-diamond wow bounceIn text-primary"></i>
					<h3>위시리스트</h3>
					<p class="text-muted">위시리스트로 맘속에 찜했던 곳을 쉽게 찾을 수 있어요!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-newspaper-o wow bounceIn text-primary"
						data-wow-delay=".2s"></i>
					<h3>커뮤니티</h3>
					<p class="text-muted">숙소 주변 관광지에 대해서 좋은 정보를 나눌 수 있어요!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-heart wow bounceIn text-primary"
						data-wow-delay=".3s"></i>
					<h3>고객센터</h3>
					<p class="text-muted">혹시 불편사항이 있으신가요? 지금 바로 들러보세요!</p>
				</div>
			</div>
		</div>
	</div>
	</section>

		<!-- 아랫단 시작-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>
						
<!-- 아랫단 종료-->
</body>
</html>