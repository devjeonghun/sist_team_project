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
<link rel="stylesheet" href="/howstay/css/bootstrap.css" type="text/css">
<script type="text/javascript">
	function tourSearch() {
		document.sFrm.submit();
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
				<div class="title_b">
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
	<div id="bbsTourMid">
		<div class="row">
			<table>
				<c:forEach var="i" items="${list}" varStatus="cnt">
					<div class="col-md-4">
						<div class="thumbnail">
							<img src='/howstay/upload/tourImage/${i.ct_file}' style="width: 500px; height: 450px">
							<h3>${i.ct_title}</h3>
							<div class="Button">
							<c:choose>
							<c:when test="${param.keyword eq null}">
								<a href="/howstay/jsp/tour/hitTour.do?ct_no=${i.ct_no}&page=${param.page}" class="btn btn-primary" role="button">리뷰 보기</a>
							</c:when>
							<c:otherwise>
								<a href="/howstay/jsp/tour/hitTour.do?ct_no=${i.ct_no}&page=${param.page}&keyword=${param.keyword}" class="btn btn-primary" role="button">리뷰 보기</a> 
								</c:otherwise>
								</c:choose>	
							</div>
						</div>
					</div>
				</c:forEach>
			</table>
		</div>
	</div>
	
	
	<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<form action="/howstay/tour/tourSearch.action?page=${param.page}" name="sFrm" method="post">
                <div class="input-group">
                     <input type="text" class="form-control" name="keyword" id="keyword"  placeholder="원하는 정보를 입력하세요!">
                      <span class="input-group-btn">
                		<button onclick="tourSearch()" class="btn btn-default" type="button">Go!</button>
                		
                		<c:choose>
                		<c:when test="${m_id eq null}">
                     	<a href="/howstay/jsp/login_join/login.jsp" class="btn btn-default" role="button">글쓰기</a>
                		</c:when>
                		<c:otherwise>
                     	<a href="/howstay/jsp/tour/insertTour.jsp" class="btn btn-default" role="button">글쓰기</a>
                		</c:otherwise>
                		</c:choose>
                     	
                     	
                     </span>
                  </div>
                  </form>
               </div>
            </div>
	
	
		<table align="center">
			<tr>
				<td>
				<ul class="pagination">
				<li>
				<a href="/howstay/tour/tourSearch.action?page=1" aria-label="Previous">
				
				<span aria-hidden="true">&laquo;</span>
				</a>
				</li>
			
				<li>
				<c:choose>
				<c:when test="${bean.currentBlock>1}">
				<a href="/howstay/tour/tourSearch.action?page=${bean.startPage-1}&keyword=${keyword}"
					aria-label="Previous"> <span aria-hidden="true">&lsaquo;
				</span>
				</a>
				</c:when>
				<c:otherwise>
				<a href="#" aria-label="Previous"> 
				<span aria-hidden="true">&lsaquo;</span> 
				</a>
				</c:otherwise>
				</c:choose>
				</li>
				
				
				<c:if test="${bean.currentPage>1 }">
				<li>
				<a href="/howstay/tour/tourSearch.action?page=${bean.currentPage-1}&keyword=${keyword}">BEFORE</a>
				</li>
				</c:if>
				
				
				<c:forEach var="i" begin="${bean.startPage}" end="${bean.endPage}" step="1">
				<c:choose>
				<c:when test="${bean.currentPage eq i}">
				<li><a href="#"><font color="skyBlue" size="3">${i}</font></a></li>
				</c:when>

				<c:otherwise>
				<li><a href="/howstay/tour/tourSearch.action?page=${i}&keyword=${keyword}">${i}</a>
				</li>
				</c:otherwise>
				</c:choose>
				</c:forEach>


				<c:if test="${bean.totalPage >bean.currentPage }">
				<li>
				<a href="/howstay/tour/tourSearch.action?page=${bean.currentPage+1 }&keyword=${keyword}">NEXT</a>
				</li>
				</c:if>
				
				<c:choose>
				<c:when test="${bean.totalPage > bean.endPage }">
				<li><a href="/howstay/tour/tourSearch.action?page=${bean.endPage+1}&keyword=${keyword}" aria-label="Next"> 
				<span aria-hidden="true">&rsaquo;</span>
				</a></li>
				</c:when>
														
				<c:otherwise>
				<li><a href="#" aria-label="Next"> 
				<span aria-hidden="true">&rsaquo;</span>
				</a></li>
				</c:otherwise>
				</c:choose>

				<li>
				<a href="/howstay/tour/tourSearch.action?page=${bean.totalPage}&keyword=${keyword}" aria-label="Next"> 
				<span aria-hidden="true">&raquo;</span>
				</a>
				</li>
				</ul>
				</td>
			</tr>
		</table>		
														
		
	
    <br><br>
        
	<jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>
