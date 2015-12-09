<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>Insert title here</title>
</head>
<body>
<!-- 세션처리 -->
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
					<h1>비밀번호 확인</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>비밀번호 확인</h2>
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
	<div class="container-fluid">
		<!-- 컨테이너 시작 -->
	
		<!-- 내용시작-->
		<div class="col-md-12"><!-- cod-md-12시작 -->
						<div class="row" style="margin: 0px auto; text-align: center;">
						<h2> 비밀번호를 다시 입력해주세요</h2>
						<br/><br/><br/><br/><br/><br/><br/>
						 <form action="/howstay/jsp/mypage/MemberMyModify.do" method="post">
							  <table style="margin: 0px auto; text-align: center;">								 
								  <tr>
									  <td>
									    <h4><span class="label label-success label-lg">Password</span></h4>
									  </td>
									  <td>									    
									    <input type="password" class="form-control" name="m_password">
									  </td>
									  <td>
									  	&ensp;<button type="submit" class="btn btn-default btn-lg" >로그인</button>
									  </td>
								  </tr>
							  </table>
						  </form>
						  <br><br><br><br><br><br><br><br><br><br><br>
						 </div>					     
					</div>						
				</div>	
</div>

	
	
<!-- 아랫단 시작-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	<!-- 아랫단 종료-->

</body>
</html>