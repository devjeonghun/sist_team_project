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
<c:if test="${m_id==null|| m_id==''}">
	<c:redirect url="/jsp/login_join/login.jsp" />
</c:if>
<script type="text/javascript">
function success(){
	alert("수정후 재로그인 해주십시오");
	
}
</script>
	<jsp:include page="/jsp/nav.jsp" />
	<!-- 사이드바 -->
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>회원 정보 수정</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>회원 정보 수정</h2>
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
		<div class="col-md-12"><!-- cod-md-12시작 -->
			<br>
			<div role="tabpanel"><!-- tabpanel시작 -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="mymodify">
						<div class="text-center">
						 <br>
						<div class="row">
							<form action="/howstay/jsp/mypage/MemberMyModifyUpdate.do" method="post">
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">ID</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_id" value="${bean.m_id }" Style="width: 30%;" readonly="readonly">
							  </div>
								<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Pass</span>&ensp;&ensp;
							    <input type="password" class="form-control" name="m_password" value="${bean.m_password}" Style="width: 30%;">
							  </div>
								<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">PassQ</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_pass_q" value="${bean.m_pass_q }" Style="width: 30%;">
							  </div>
							  	<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">PassA</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_pass_a" value="${bean.m_pass_a }" Style="width: 30%;">
							  </div><br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Address</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_address" value="${bean.m_address }" Style="width: 30%;">
							  </div>
							  	<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Email</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_email" value="${bean.m_email }" Style="width: 30%;">
							  </div>
							  	<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Cp</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_mobile" value="${bean.m_mobile }" Style="width: 30%;">
							    <input type="hidden" name="m_no" value="${bean.m_no }">
							    <input type="hidden" name="m_name" value="${bean.m_name }">
							    <input type="hidden" name="m_birth" value="${bean.m_birth }">
							    <input type="hidden" name="m_tel" value="${bean.m_tel }">
							    <input type="hidden" name="m_gender" value="${bean.m_gender }">
							    <input type="hidden" name="m_regdate" value="${bean.m_regdate }">
							    <input type="hidden" name="m_point" value="${bean.m_point }">
							    <input type="hidden" name="m_grade" value="${bean.m_grade }">
							    
							  </div>
							  	<br>
							  	<input type="submit" class="btn btn-success" value="수정"> 
							  	<br>
		<br><br><br><br><br>
							</form>
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