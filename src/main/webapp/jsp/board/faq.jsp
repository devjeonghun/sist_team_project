<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HowStay</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
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
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>자주 하는 질문 </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>자주 하는 질문</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="row">

		<div class="col-md-12">
	<hr/>
						<center>
						<div class="panel panel-default">
		 					<table class="table table-hover table-condensed">
								<colgroup>
									<col width="10%" />
									<col width="75%" />
									<col width="15%" />
								</colgroup>
							<thead>
							<tr>
								<th scope="col" style="text-align: center;">번호</th>
								<th scope="col">FAQ</th>
								<th scope="col">작성자</th>
							</tr>
							</thead>
							
							<tbody>
							<c:forEach var="i" items="${list}">
								<tr>
									<td class="fir" rowspan="2">${i.cf_no}</td>
									<td class="fir" style="text-align: left;">
										<span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>
										${i.cf_title}
									</td>
									<td class="fir" rowspan="2">관리자</td>
								</tr>
								<tr>
									<td class="fir" style="text-align: left;">
										<span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
										${i.cf_contents}
									</td>
								</tr>
							</c:forEach>
							</tbody>
							
							</table>
								<!-- <nav>
				  		 			<form class="navbar-form" role="search">
						  				<ul class="pagination">
						    				<li>
						      					<a href="#" aria-label="Previous">
						        				<span aria-hidden="true">&laquo;</span>
						      					</a>
						    				</li>
										    <li><a href="#">1</a></li>
										    <li><a href="#">2</a></li>
										    <li><a href="#">3</a></li>
										    <li><a href="#">4</a></li>
										    <li><a href="#">5</a></li>
										    <li>
										      <a href="#" aria-label="Next">
										        <span aria-hidden="true">&raquo;</span>
										      </a>
										    </li>
										    <li>
										       <input type="text" class="form-control" placeholder="Search">
						        		       <button type="submit" class="btn btn-default">검색</button>
						        		    </li>
						  				</ul>
						 			</form>
								</nav> -->
			 				</div>
						</center>
					
		</div>
			
	</div>
	<hr/>
	<br/>
	<br/>
	<br/>

	<!-- 아랫단 시작-->
	
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
	<!-- 아랫단 종료-->

</body>
</html>