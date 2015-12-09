<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>How?Stay!</title>
<%
request.setCharacterEncoding("EUC-KR");
%>
<script>
function focusLogin(){
	$("#popid").trigger("click");	
}
	function findID() {
		var obj = document.idFrm;
		if (!obj.m_email.value) {
			alert("찾고자하는 아이디의 이메일을 입력해주세요.");
			obj.m_email.value = '';
		} else {
			obj.submit();
		}
	}
	function findPass(){
		var obj=document.passFrm;
		if(!obj.m_id.value || obj.m_pass_q.value=='empty'){
			alert("찾고자하는 아이디와 비밀번호 힌트를 입력하세요.");
			obj.m_id.value='';
		}else{
			hintCheck();
		}
	}
	
	function hintCheck() {
		var obj=document.passFrm;
		if(obj.question.value!='empty'){
			obj.m_pass_q.value=obj.question.value;
			obj.submit();
		}else{
			alert('힌트를 고르세요');
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
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>아이디 비밀번호 찾기</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>아이디 비밀번호 찾기</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="text-left">
				<div class="jumbotron">
					<form action="/howstay/jsp/login_join/MemberFindId.do" name="idFrm">

						<h2>
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							아이디 찾기
						</h2>
						<br>
						<h5>아이디를 찾기 위한 곳이에요!</h5>
						<h5>정보를 입력해서 아이디를 찾아부러!</h5>
						<div class="input-group">
					      <input type="text" class="form-control" placeholder="사용자의 이메일" name="m_email">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button" onclick="findID()">찾기</button>
					      </span>
					    </div>
						<br> 
						<span onclick="focusLogin()">
						<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
									로그인 하기</span>
					</form>
					</div>
				</div>
			</div>
		<div class="col-md-6">
			<div class="text-left">
				<div class="jumbotron">
					<form action="/howstay/jsp/login_join/MemberFindPass.do" name="passFrm">
						<h2>
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							비밀번호 찾기
						</h2>
						<br>
						<h5>비밀번호를 찾기 위한 곳이에요!</h5>
						<h5>정보를 입력해서 아이디를 찾아부러!</h5>
							<input type="text" placeholder="사용자의 아이디" size="30" name="m_id" id="m_id"><br>
							<select id="question" name="question"
								class="btn btn-default">
									<option selected="selected" value="empty">선택하세요</option>
									<option value="내가 제일 좋아하는 고기는?">내가 제일 좋아하는 고기는?</option>
									<option value="나의 옜날 별명은?">나의 옜날 별명은?</option>
									<option value="내게 가장 소중한것은?">내게 가장 소중한것은?</option>
							</select>
							<input type="hidden" name="m_pass_q" id="m_pass_q"> 
							<input type="text" placeholder="사용자의 비밀번호 답" size="30" name="m_pass_a" id="m_pass_a">
							
							<input type="button" class="btn btn-primary" value="찾기"
								onclick="findPass()">								
							<br>
							<span onclick="focusLogin()">
						<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
									로그인 하기</span>
						
					</form>
				</div>
				</div>
			</div>
		</div>		
	</div>



	
	<br>
	<br>
	<br>
<jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>