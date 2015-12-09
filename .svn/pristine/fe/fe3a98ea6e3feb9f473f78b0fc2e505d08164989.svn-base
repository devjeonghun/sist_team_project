<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>HowStay</title>
</head>
<body>
	<!-- 네비게이션바 -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<!-- include가 디스패처 방식이라 따로 페이지에 css,스크립트 설정안해주셔도 됩니다 -->
	<!-- 상단바랑 carousel을 맞춰주기 위해 들어간 br임 -->
	<br>
	<br>
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>관광 정보</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>관광 정보</h2>
		</div>				
	</div>
			</div>	
<div class="row">	
	</div>
<!-- <form action="/howstay/tour/tourDelete.action" name="dfrm" method="post" enctype="multipart/form-data">
	<div id="infoTop">
		<div class="container">
			<div class="row"> -->
			
			
				<div class="button">
		<div class="col-md-6" align="left">
					<div class="btn-group" role="group" aria-label="/howstay.">
					<a href="/howstay/jsp/tour/mainTour.do?ct_no=${info.ct_no}&page=${param.page}"><button type="button" class="btn btn-default btn-lg">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</button></a>
					</div>
					<div class="btn-group" role="group" aria-label="/howstay.">
					<a href="/howstay/jsp/tour/selectInfo.do?ct_no=${info.ct_no}&page=${param.page}"><button type="button" class="btn btn-default btn-lg">수정</button></a>
					<!-- &page=${param.page} -->
					</div>
					<div class="btn-group" role="group" aria-label="/howstay.">
					<a href="/howstay/jsp/tour/deleteTour.do?ct_no=${info.ct_no}&page=${param.page}"><button type="button" class="btn btn-default btn-lg">삭제</button></a>
				</div>
			</div>	
		<div class="col-md-6" align="right">
					<div class="btn-group" role="group" aria-label="/howstay.">
					<button type="button" class="btn btn-default btn-lg">HIT : ${info.ct_hit }</button>
					</div>	
		</div>	
			<br><br><br>
	</div>


	<div class="container">
	<div class="row">
		<div class="col-md-6" align=left>	
				<h1>${info.ct_title}</h1>
		</div>	
				
		<div class="col-md-6" align="right">
			<h4>작성자 : ${info.m_name}</h4>
			<h4>${info.ct_regdate }</h4>
		</div>
	</div>
	</div>
			
				
				<br>
				<div id="contents" align="center">
					<div class="container">
						<img src='/howstay/upload/tourImage/${info.ct_file}'>
							<!-- <h1></h1> -->
							<h4>${info.ct_contents}</h4>
					</div>
					<br> <br> <br>
				</div>
<!-- 			</div>				
		</div>
	</div>
</form> -->


<div id="infoReply">
	<div class="container">
		<div class="row">
			<div class="text-area">
				<textarea class="form-control" rows="3" style="height: 80px" placeholder="댓글을 입력해 주세요."></textarea>
			</div>
		</div>
	</div>
</div>
<br>

<div id="infoReplyButton">
	<div class="container">
		<div class="row">
			<div class="button" align="right">
				<div class="btn-group" role="group" aria-label="/howstay.">
					<button type="button" class="btn btn-default">등록</button>
				</div>

				<div class="btn-group" role="group" aria-label="/howstay.">
					<button type="button" class="btn btn-default">취소</button>
				</div>
			</div>
		</div>
	</div>
</div>
<br>

<div id="replyList">
	<div class="container">
		<div class="row">
			<div class="well well-md">저도 가고 싶네요~</div>
			<div class="well well-md">건물이 굉장히 멋지네요!</div>
			<div class="well well-md">날씨가 좋아보입니다.</div>
		</div>
	</div>
</div>

	<jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>
