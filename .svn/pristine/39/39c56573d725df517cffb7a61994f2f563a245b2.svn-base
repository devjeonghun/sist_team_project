<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>이미지형 게시판 상세 페이지</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
</head>
<body>
<%-- ${bean } --%>
<%-- ${bean.cq_no } --%>

	<!-- 네비게이션바 -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>Q & A </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>Q&A</h2>
		</div>				
	</div>
	<br/>
	</div>

<div class="col-md-6" align="left">
					
					<div class="btn-group" role="group" aria-label="/howstay.">
					<c:choose>
							<c:when test="${m_id eq null}">
								<a href="/howstay/jsp/login_join/login.jsp"><button type="button" class="btn btn-default btn-lg">수정</button></a>
							</c:when>
							<c:otherwise>
								<a href="/howstay/jsp/board/boardQaSelect.do?cq_no=${bean.cq_no }"><button type="button" class="btn btn-default btn-lg">수정</button></a>
							</c:otherwise>		
						</c:choose>						
					</div>
					
					<div class="btn-group" role="group" aria-label="/howstay.">
					<c:choose>
							<c:when test="${m_id eq null}">
								<a href="/howstay/jsp/login_join/login.jsp"><button type="button" class="btn btn-default btn-lg">삭제</button></a>
							</c:when>
							<c:otherwise>
								<a href="/howstay/jsp/board/boardQaDelete.do?cq_no=${bean.cq_no }"><button type="button" class="btn btn-default btn-lg">삭제</button></a>
							</c:otherwise>		
						</c:choose>
				</div>
			</div>	
			<br><br>
	 
<div>
<form action="#" name="dfrm" method="post" enctype="multipart/form-data">
	<div id="infoTop">
		<div class="container" align="left">
			<div class="row">
			
			<center>
				<h1><b> ${bean.cq_title} </b></h1>
				</center>
				
				<br><br>
				
				<div id="contents" align="center">
					<div class="container">
						<h3> ${bean.cq_contents}</h3>
							<!-- <h1></h1> -->
							<br><br>
							<h6>${bean.cq_regdate}</h6>
					</div>
					<br> <br> <br>
				</div>
				
			</div>				
		</div>
	</div>
</form>

</div>

<div id="likeButton">
	<div class="container">
		<div class="row">
		
		</div>
	</div>
</div>
<br>



<br>


							<!-- 밑에 단 --> 


	<jsp:include page="/jsp/footer.jsp"></jsp:include>

</body>
</html>
