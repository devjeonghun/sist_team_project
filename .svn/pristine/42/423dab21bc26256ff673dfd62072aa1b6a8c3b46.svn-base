<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>How?Stay! 회원가입을 환영합니다!</title>
<script src="/howstay/js/join.js" charset="UTF-8"></script>
</head>
<body>
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>회원 가입 </h1>
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
	<div class="container-fluid">	
	<div class="col-md-2"></div>
	<div class="col-md-4">
	 
			<form action="/howstay/jsp/login_join/MemberJoin.do" name="joinFrm" method="post">
						<table>
							<tr>
								<td>
									<div class="input-group">
										<span class="input-group-addon"  >아이디</span>
	  									<input type="text" name="m_id" class="form-control" size="15" style="" onclick="idcheck()"/>
	  									<!-- <input type="text" name="m_id" class="form-control" size="15" /> -->
									</div>
								</td>
							</tr>

							<tr>
								<td>
									<div class="input-group">
										<span class="input-group-addon"  >비밀번호</span>
	  									<input type="password" name="pass1" class="form-control" size="15" />
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div class="input-group">
										<span class="input-group-addon"  >비밀번호 확인</span>
	  									<input type="password" name="pass2" class="form-control" size="15" onblur="passCheck()"/>
									</div>
									<input type="hidden" name="m_password" class="inputText" size="15" />
								</td>
							</tr>
							<tr>
								<td>
									<div class="input-group">
										<span class="input-group-addon"  >이름</span>
	  									<input type="text" name="m_name" class="form-control" size="15">
									</div>
									
								</td>
							</tr>
							<tr>
								<td>
									<div class="input-group">
										<span class="input-group-addon"  >생년월일</span>
	  									<!-- <input type="text" name="year" class="form-control" size="15"> -->
	  									<input type="date" size="15" class="form-control" name="m_birth">
									</div>
								</td>
							</tr>
								<!-- <tr>
								<td>
									<div class="input-group">
									<input type="text" name="month" class="form-control" size="15">
										<span class="input-group-addon"  >월</span>
	  									<input type="text" name="day" class="form-control" size="15" onblur="birthCheck()">
	  									<span class="input-group-addon"  >일</span>
	  									<input type="hidden" name="m_birth" size="15">
	  								</div>
								</td>
								</tr> -->
							<tr>
								<td>
									<div class="input-group">
										<span class="input-group-addon">성별</span>
										<span class="input-group-addon">
	  									<input type="radio" class="" size="15" name="m_gender" id="m_gender" value="m">남
	  									<input type="radio" class="" size="15" name="m_gender" id="m_gender" value="f">여
										</span>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									<div class="input-group">
										<span class="input-group-addon">주소</span>
										<input type="text" name="post1" class="form-control" size="15" readonly="readonly"><span class="input-group-addon">-</span>
	  									<input type="text" name="post2" class="form-control" size="15" readonly="readonly" onblur="addressCheck()">
	  									<span class="input-group-addon"><a href="javascript:addressCate()">우편 번호 검색</a></span>
									</div>
	  									<input class="form-control" type="text" name="address1" size="40" readonly="readonly">
	  									<input class="form-control" type="text" name="address2" size="40"><br>
	  									<input type="hidden" name="m_address" size="50">
								</td>
							</tr>
							<tr>
								<td colspan="1">
								
									<div class="input-group">
										<span class="input-group-addon">E-mail</span>
										<input type="text" id="email1" name="email1" class="form-control"><span class="input-group-addon">@</span>
	  									<input type="text" id="email2" name="email2" class="form-control" disabled="disabled">
	  									<input type="hidden" name="m_email"/>
									</div>
								</td>
								<td colspan="1">	
									<select onchange="emailChange()" id="email3" name="email3">
	  										<option selected="selected" value="empty">선택하세요</option>
											<option value="direct">직접입력</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="nate.com">nate.com</option>
											<option value="gmail.com">gmail.com</option>
									</select>
								</td>	
 								<td>
 								</td>
 								<td>
 								</td>
								
							</tr>
							
							<tr>
								<td colspan="2">
									<div class="input-group">
										<span class="input-group-addon">전화번호</span>
										<input type="text" id="tel1" name="tel1" class="form-control" size="15" maxlength="3"><span class="input-group-addon">-</span>
										<input type="text" id="tel2" name="tel2" class="form-control" size="15" maxlength="4"><span class="input-group-addon">-</span>
	  									<input type="text" id="tel3" name="tel3" class="form-control" size="15" maxlength="4" onblur="telCheck()">
	  									<input type="hidden" name="m_tel" size="30" />
 									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<div class="input-group">
										<span class="input-group-addon">휴대폰 번호</span>
										<input type="text" id="cp1" name="cp1" class="form-control" size="20" maxlength="3"><span class="input-group-addon">-</span>
										<input type="text" id="cp2" name="cp2" class="form-control" size="30" maxlength="4"><span class="input-group-addon">-</span>
	  									<input type="text" id="cp3" name="cp3" class="form-control" size="30" maxlength="4" onblur="mobileCheck()">
	  									<input type="hidden" name="m_mobile" size="30" />
 									</div>
								</td>
							</tr>
							<tr>
								<td colspan="1">
									<div class="input-group-btn">
										<span class="input-group-addon">비밀번호 힌트
										<select id="question" name="question"  class="btn btn-default">
										<option selected="selected" value="empty" >선택하세요</option>
										<option value="내가 제일 좋아하는 고기는?">내가 제일 좋아하는 고기는?</option>
										<option value="나의 옛날 별명은?">나의 옛날 별명은?</option>
										<option value="내게 가장 소중한것은?">내게 가장 소중한 것은?</option>
										</select> 
	  									<input type="hidden" name="m_pass_q" size="40"  class="form-control" />
										</span>
	  									<input type="text" name="m_pass_a" size="30" class="form-control"/>
 									</div>
								</td>
							</tr>
							
							<tr>
								<td><a href="javascript:membersubmit()"><input type="button"
									class="btn btn-primary" value="등록"></a></td>
								<td><a href="/howstay/jsp/main.jsp"><input type="button" class="btn btn-primary" value="취소"></a></td>
							</tr>
						</table>
					</form>
					<br><br><br><br><br>
			</div>
				
<jsp:include page="/jsp/footer.jsp"></jsp:include>
		
	</div>
</body>
</html>