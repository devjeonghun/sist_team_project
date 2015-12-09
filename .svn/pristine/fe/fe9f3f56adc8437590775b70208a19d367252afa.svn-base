<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>How?Stay!</title>
</head>
<body onload="getLogin()">
<script>
	function loginCheck() {
		var obj = document.login;
		if (!obj.m_id.value || !obj.m_password.value) {
			alert('ID or PASS CHECK');
			obj.m_id.value = '';
			obj.m_password.value = '';
			obj.m_id.focus();
			return;
		} else {
			if (obj.checker.checked) {

				saveLogin(obj.m_id.value);
			} else {
				saveLogin("");
			}
			obj.submit();
		}
	}
	//로그앤 채크박스 알림
	function saveId(checkbox) {
		var isRemember;

		if (checkbox.checked) {
			isRemember = confirm("이 PC에 ID를 저장하시겠습니까? ");

			if (!isRemember)
				checkbox.checked = false;
		}
	}
	
	
	//쿠키저장, 날자 설정
	function setsave(name, value, expiredays) {
		var today = new Date();
		today.setDate(today.getDate() + expiredays);
		document.cookie += name + "=" + escape(value) +"++"+"; path=/; expires="
				+ today.toGMTString() + ";"
	}
	//아이디 쿠키에 저장	
	function saveLogin(m_id) {
		if (m_id != "") {
			// userid 쿠키에 id 값을 7일간 저장
			setsave("m_id", m_id, 30);
		} else {
			// userid 쿠키 삭제
			/* setsave("m_id", m_id, -1); */
		}
	}
	function getLogin() {
		// userid 쿠키에서 id 값을 가져온다.
		var cook = document.cookie + ";";
		var idx = cook.indexOf("m_id", 0);
		var val = "";
		if (idx != -1) {
			cook = cook.substring(idx, cook.length);
			begin = cook.lastIndexOf("++", cook.length) ;
			end = cook.lastIndexOf("m_id=", begin)+5;
			val = unescape(cook.substring(end, begin));
		}

		// 가져온 쿠키값이 있으면
		if (val != "") {
			document.login.m_id.value =val;
			document.login.checker.checked = true;
		}
	}
</script>
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
					<h1>로그인 </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>로그인</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-rm-center">
				<form name="login" method="post"
					action="/howstay/jsp/login_join/Memberlogin.do" class="form-signin">
					<div class="text-center">
						<div>
							<h2 align="center">How?Stay! 로그인</h2>
							<tr>
								<td>
								</td>
								<td><input type="text" name="m_id" id="m_id" class="text"
									placeholder="아이디" /></td>
								<td>
									<!-- <image src="/howstay/image/common/th_pw.gif" alt="비밀번호" /> -->
								</td>
								<td><input type="password" name="m_password"
									id="m_password" class="text" placeholder="비밀번호" /></td>
							</tr>
							<div class="btn">
								<tr>
									<image id="btnSubmit" Tabindex="0" src="/howstay/image/button/btn_login.gif"
										alt="LOGIN" title="LOGIN" onclick="loginCheck()" />
								</tr>

							</div>
							<div >
								<input type="checkbox" id="checker" name="checker" 
									onclick="saveId(this)" /> <font size="2">아이디 저장할꼬야 ?</font>
								<input type="hidden" value="" id="mm_id">
							</div>

							<tr>
								<td><br> <!-- <img src="/howstay/image/common/ico_depth2.gif" alt="회원가입"> -->
									<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
									<a href="/howstay/jsp/login_join/memberJoin.jsp">회원가입</a>
									<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
									 <a href="find.jsp">아이디/비밀번호 찾기</a></td>
							</tr>
					</div>
					</div>
				</form>
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
					<p class="text-muted">여러 숙박정보를 한눈에 찾아서 볼 수 있어요!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-diamond wow bounceIn text-primary"></i>
					<h3>쇼핑</h3>
					<p class="text-muted">여행의 필수품 ! 우리 마켓을 이용하여 편히 준비하세요!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-newspaper-o wow bounceIn text-primary"
						data-wow-delay=".2s"></i>
					<h3>커뮤니티/공지사항</h3>
					<p class="text-muted">커퓨니티와 공지사항을 한눈에 볼 수 있어요!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box">
					<i class="fa fa-4x fa-heart wow bounceIn text-primary"
						data-wow-delay=".3s"></i>
					<h3>위시리스트</h3>
					<p class="text-muted">사고 싶엇지만 돈이 없었던 당신! 지금 바로 질러보세요!</p>
				</div>
			</div>
		</div>
	</div>
	</section>


	<div class="navbar-fixed-bottom">
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
	<br>
	<br>
	<br>
	<br>

</body>
</html>