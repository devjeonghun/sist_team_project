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
<!-- 세션처리 -->
<c:if test="${m_id==null|| m_ids==''}">
	<c:redirect url="/jsp/login_join/login.jsp" />
</c:if>
	<jsp:include page="/jsp/nav.jsp" />
	<!-- 사이드바 -->
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>회원 정보</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>회원 정보</h2>
		</div>				
	</div>
	<br/>
	<div role="tabpanel">
	 <ul class="nav nav-tabs" role="tablist">  	
    <li role="presentation"  class="active"><a href="/howstay/jsp/mypage/MemberMypage.do" >마이페이지</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/checkpass.jsp" >정보 수정</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/myReservation.do" >예약 내역</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/selectWishList.do?m_id=${sessionScope.m_id }" >위시리스트</a></li>
  </ul>
  </div>
	<!-- 사이드바 종료 -->
	<div class="container-fluid">
		<!-- 컨테이너 시작 -->
		<!-- 내용시작-->
		<div class="col-md-12"><!-- cod-md-12시작 -->
			<br>
			<div role="tabpanel"><!-- tabpanel시작 -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="myinfo">
						<div class="text-center">
						<div class="row">
						<div class="col-md-4"></div>
						<form>
						<table>
							<tr>
								<td>
								<div class="input-group">
									<span class="input-group-addon" id="basic-addon1">ID</span>
  									<input type="text" class="form-control" id="id" value=" ${bean.m_id }" readonly="readonly">
								</div>
								</td>
							</tr>
							<tr>
								<td>
								<div class="input-group">
									<span class="input-group-addon">주소</span>
  									<input type="text" class="form-control" id="address" value=" ${bean.m_address }" readonly="readonly">
	
								</div>
								</td>
								
							</tr>
							<tr>
								<td>
								<div class="input-group">
									<span class="input-group-addon">포인트</span>
  									<input type="text" class="form-control" id="point" value=" ${bean.m_point }" readonly="readonly">
								</div>
								</td>				
							</tr>
							<tr>
								<td>
								<div class="input-group">
								<span class="input-group-addon">GRADE</span>
								<input type="text" class="form-control" id="grade" value="${bean.m_grade }" readonly="readonly">
								</div>
							</td>
							</tr>
							<tr>
							<td>
							<div class="input-group">
								<span class="input-group-addon">Email</span>
								<input type="text" class="form-control" id="email" value=" ${bean.m_email }" readonly="readonly">
							</div>
							</td>
							</tr>
							<tr>
							<td>
							<div class="input-group">
								<span class="input-group-addon">Regdate</span>
								<input type="text" class="form-control" id="regdate" value=" ${bean.m_regdate }" readonly="readonly">
							</div>
							</td>
							</tr>
							<tr>
							<td>
							<div class="input-group">
								<span class="input-group-addon">Cp</span>
								<input type="text" class="form-control" id="cp" value=" ${bean.m_mobile }" readonly="readonly">
							</div>
							</td>
							</tr>
						
						</table>
					</form>
					<br><br><br><br>
							</div>
						</div>
					</div>						
				</div><!-- Tab panes끝-->
			</div><!-- tabpanel끝-->
		</div><!-- cod-md-12시작 -->
		</div>
		
	</div>
	<!-- container끝 -->
	<!-- 내용끝-->
	<!-- 아랫단 시작-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	<!-- 아랫단 종료-->

</body>
</html>