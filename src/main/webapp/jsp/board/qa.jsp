<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>How?Stay!</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<script type="text/javascript">
	function qaSearch() {
		document.qsFrm.submit();
		
	}
	
</script>
</head>
<body>
<% response.setCharacterEncoding("EUC-KR"); %>

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
	
	<div class="row">
	
		<div class="col-sm-12">
		<hr/>
			<!-- <div class="text-center">
						<div class="row">
						    <h3>NOTICE&ensp;<small>공지사항</small></h3>
				        </div>
				        </div> -->
			<!-- 게시판테이블 :가운데정렬 -->
			<center>
				<div class="panel panel-default">
					<table class="table table-hover table-condensed">
						<colgroup>
							<col width="10%" />
							<col width="45%" />
							<col width="15%" />
							<col width="15%" />
							<col width="15%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col" style="text-align: center;">번호</th>
								<th scope="col">제목</th>
								<th scope="col">작성자</th>
								<th scope="col">조회수</th>
								<th scope="col">작성일</th>
							</tr>
						</thead>

						<!--            정보 출력란                         -->

						<tbody>

							<c:forEach var="i" items="${list }">
								<tr>
									<td class="fir">${i.cq_no }</td>
									<td class="fir" style="text-align: center;"><a
										href="/howstay/jsp/board/boardqaInfo.do?cq_no=${i.cq_no }">${i.cq_title }</a></td>
									<td class="fir">${i.m_name }</td>
									<td class="fir">${i.cq_hit }</td>
									<td class="fir">${i.cq_regdate }</td>
								</tr>
							</c:forEach>

						</tbody>

					</table>

					<nav> <br>
					<div class="col-sm-12">
						<div class="col-sm-11"></div>
						<div class="col-sm-1">
						<c:choose>
							<c:when test="${m_id eq null}">
								<a href="/howstay/jsp/login_join/login.jsp"><button
									type="button" class="btn btn-default">글쓰기</button></a>
							</c:when>
							<c:otherwise>
							<a href="/howstay/jsp/board/qaInsert.jsp"><button
									type="button" class="btn btn-default">글쓰기</button></a>
							</c:otherwise>		
						</c:choose>
							<%-- boardQaInsert.action?hno=${id } --%>
						</div>
						
					</div>


				
					



					<!-- 페이징시작 --> 
					
				<table align="center">
				<tr>
				<td>
				<ul class="pagination">
				<li>
				<a href="/howstay/board/boardQaList.action?page=1&keyWord=${keyWord}" aria-label="Previous">
				
				<!-- 이거 젤 처음 페이지로 나오게 했음 -->
				
				<span aria-hidden="true">&laquo;</span>
				</a>
				</li>
			
				<li>
				<c:choose>
				<c:when test="${bean.currentBlock>1}">
				<a href="/howstay/board/boardQaList.action?page=${bean.startPage-1}&keyWord=${keyWord}"
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
				<a href="/howstay/board/boardQaList.action?page=${bean.currentPage-1}&keyWord=${keyWord}">BEFORE</a>
				</li>
				</c:if>
				
				
				<c:forEach var="i" begin="${bean.startPage}" end="${bean.endPage}" step="1">
				<c:choose>
				<c:when test="${bean.currentPage eq i}">
				<li><a href="#"><font color="skyBlue" size="3">${i}</font></a></li>
				</c:when>

				<c:otherwise>
				<li><a href="/howstay/board/boardQaList.action?page=${i}&keyWord=${keyWord}">${i}</a>
				</li>
				</c:otherwise>
				</c:choose>
				</c:forEach>


				<c:if test="${bean.totalPage >bean.currentPage }">
				<li>
				<a href="/howstay/board/boardQaList.action?page=${bean.currentPage+1 }&keyWord=${keyWord}">NEXT</a>
				</li>
				</c:if>
				
				<c:choose>
				<c:when test="${bean.totalPage > bean.endPage }">
				<li><a href="/howstay/board/boardQaList.action?page=${bean.endPage+1}&keyWord=${keyWord}" aria-label="Next"> 
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
				<a href="/howstay/board/boardQaList.action?page=${bean.totalPage}&keyWord=${keyWord}" aria-label="Next"> 
				<span aria-hidden="true">&raquo;</span>
				</a>
				</li>
				</ul>
				</td>
			</tr>
		</table>
		
		<!-- 페이징끝 --> 
		
		
		<!-- 검색단 -->
		
		 </nav>
		
						
				
				
				<div class="row">
		<div class="col-md-4">
		</div>
		<div class="col-md-4">
			<form action="/howstay/board/qnaSearch.action?page=${page }" name="qsFrm" method="post">
                <div class="input-group">
                     <input type="text" id="keyWord" name="keyWord"
									class="form-control" placeholder="Search">
                      <span class="input-group-btn">
                		<button onclick="qaSearch()" t-ype="button" class="btn btn-default">검색</button>
                     </span>
                  </div>
                  </form>
               </div>
            </div>
				
						
		


				</div>

			</center>
		</div>
	</div>

<hr/>

	<!-- 아랫단 시작-->
	
	<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
	<!-- 아랫단 종료-->

</body>
</html>