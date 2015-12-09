<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>HowStay</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
</head>
<body>
<%-- ${bean} --%>
	<!-- 네비게이션바 -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>공지 사항 </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>공지 사항</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="button">
		<div class="col-md-6" align="left">
					<div class="btn-group" role="group" aria-label="/howstay." align="left">
					<a href="/howstay/board/noticeList.action?page=${page}&keyword=${keyword}"><button type="button" class="btn btn-default btn-lg">
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					</button></a>
					</div>
		</div>
		<div class="col-md-6" align="right">
			<div class="btn-group" role="group" aria-label="/howstay.">
			<button type="button" class="btn btn-default btn-lg">${bean.cn_hit }</button>
			</div>	
		</div>
	</div>
	
	<div id="infoTop">
		<div class="container" align="left">
			<div class="row">
				<h1>${bean.cn_title}</h1>
				<br>
				<div id="contents" align="center">
					<div class="container">
						<img src='/howstay/upload/notice/${bean.cn_file}' style="width: 500px; height: 450px">
						<br><br>
							<h4>${bean.cn_contents}</h4>
					</div>
					<br> <br> <br>
				</div>
			</div>				
		</div>
	</div>

<jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>
