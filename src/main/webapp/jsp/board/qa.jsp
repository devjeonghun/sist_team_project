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

	<!-- �׺���̼ǹ� -->
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
						    <h3>NOTICE&ensp;<small>��������</small></h3>
				        </div>
				        </div> -->
			<!-- �Խ������̺� :������� -->
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
								<th scope="col" style="text-align: center;">��ȣ</th>
								<th scope="col">����</th>
								<th scope="col">�ۼ���</th>
								<th scope="col">��ȸ��</th>
								<th scope="col">�ۼ���</th>
							</tr>
						</thead>

						<!--            ���� ��¶�                         -->

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
									type="button" class="btn btn-default">�۾���</button></a>
							</c:when>
							<c:otherwise>
							<a href="/howstay/jsp/board/qaInsert.jsp"><button
									type="button" class="btn btn-default">�۾���</button></a>
							</c:otherwise>		
						</c:choose>
							<%-- boardQaInsert.action?hno=${id } --%>
						</div>
						
					</div>


				
					



					<!-- ����¡���� --> 
					
				<table align="center">
				<tr>
				<td>
				<ul class="pagination">
				<li>
				<a href="/howstay/board/boardQaList.action?page=1&keyWord=${keyWord}" aria-label="Previous">
				
				<!-- �̰� �� ó�� �������� ������ ���� -->
				
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
		
		<!-- ����¡�� --> 
		
		
		<!-- �˻��� -->
		
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
                		<button onclick="qaSearch()" t-ype="button" class="btn btn-default">�˻�</button>
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

	<!-- �Ʒ��� ����-->
	
	<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
	<!-- �Ʒ��� ����-->

</body>
</html>