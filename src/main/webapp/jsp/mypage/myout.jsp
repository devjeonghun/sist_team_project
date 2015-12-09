<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>mypage</title>
</head>
<body>
<c:if test="${m_id==null|| m_id==''}">
	<c:redirect url="/jsp/login_join/login.jsp" />
</c:if>
	<jsp:include page="/jsp/nav.jsp"/>
	<!-- 사이드바 -->
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>회원 탈퇴</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>회원 탈퇴</h2>
		</div>				
	</div>
	<br/>

	<div role="tabpanel">
	<ul class="nav nav-tabs" role="tablist">  	
    <li role="presentation"><a href="/howstay/jsp/mypage/MemberMypage.do" >마이페이지</a></li>
    <li role="presentation" class="active"><a href="/howstay/jsp/mypage/checkpass.jsp" >정보 수정</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/myReservation.do" >예약 내역</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/selectWishList.do?m_id=${sessionScope.m_id }" >위시리스트</a></li>
  </ul>
  </div>
	<!-- 사이드바 종료 -->
	<div class="container-fluid">
		<!-- 컨테이너 시작 -->
		<!-- 내용시작-->
		<div class="col-md-3">
		</div>
		<div class="col-md-6">
		<br><br><br>
		<h2 class="text-info">탈퇴하시게 되면 저희 사이트를 이용 할 수 없습니다.</h2>
		<br><br><br>
		<h1 class="text-danger"><strong> 정말 탈퇴 하실건가요?</strong></h1><br>
		<br><br>
		<select>
			<option selected="selected">선택해주세요</option>
			<option>타 사이트 가입을 위해</option>
			<option>재 가입을 위해</option>
			<option>서비스가 불편하여</option>
		</select>
		<a href="">
		<button class="btn btn-danger" type="button">탈퇴하기</button>
		</a>
		</div>

		
	</div>
	</div>
	<!-- container끝 -->
	<!-- 내용끝-->
	<!-- 아랫단 시작--><br><br><br><br><br><br>
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	<!-- 아랫단 종료-->

</body>
</html>