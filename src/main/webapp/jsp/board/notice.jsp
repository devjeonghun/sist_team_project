<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HowStay</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<script type="text/javascript">
	function noticeSearch() {
		document.sFrm.submit();
	}
</script>
</head>

<body>
<%-- ${list} --%>
	<!-- �׺���̼ǹ� -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<!-- include�� ����ó ����̶� ���� �������� css,��ũ��Ʈ ���������ּŵ� �˴ϴ� -->
	<!-- ��ܹٶ� carousel�� �����ֱ� ���� �� br�� -->
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>���� ���� </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>���� ����</h2>
		</div>				
	</div>
	<br/>
	</div>
	
<div class="row">
	<div class="col-md-12">
		
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
								<th scope="col">�����</th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach var="i" items="${list}">
							<tr>
								<td class="fir">${i.cn_no}</td>
								<td class="fir" style="text-align: left;"><a href="/howstay/jsp/board/noticeHit.do?cn_no=${i.cn_no}">${i.cn_title }</a></td>
								<td class="fir">${i.a_name}</td>
								<td class="fir">${i.cn_hit}</td>
								<td class="fir">${i.cn_regdate}</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				</div>
				
			<div class="row">
				<div class="col-md-4">
				</div>
				
					<div class="col-md-4">
						<form action="/howstay/board/noticeList.action?page=${page}" name="sFrm" method="post">
				        	<div class="input-group">
				            	<input type="text" class="form-control" name="keyword" id="keyword"  placeholder="������ �Է��ϼ���!">
				                	<span class="input-group-btn">
			   	            			<button onclick="noticeSearch()" class="btn btn-default" type="button">�˻�</button>
			                    	</span>
			            	</div>
			        	</form>
			    	</div>
			</div>
			
		<table>
			<tr>
				<td>
				<ul class="pagination">
				<li>
				<a href="/howstay/board/noticeList.action?page=1" aria-label="Previous">
				
				<span aria-hidden="true">&laquo;</span>
				</a>
				</li>
			
				<li>
				<c:choose>
				<c:when test="${bean.currentBlock>1}">
				<a href="/howstay/board/noticeList.action?page=${bean.startPage-1}"
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
				<a href="/howstay/board/noticeList.action?page=${bean.currentPage-1}">BEFORE</a>
				</li>
				</c:if>
				
				
				<c:forEach var="i" begin="${bean.startPage}" end="${bean.endPage}" step="1">
				<c:choose>
				<c:when test="${bean.currentPage eq i}">
				<li><a href="#"><font color="skyBlue" size="3">${i}</font></a></li>
				</c:when>

				<c:otherwise>
				<li><a href="/howstay/board/noticeList.action?page=${i}">${i}</a>
				</li>
				</c:otherwise>
				</c:choose>
				</c:forEach>

				<c:if test="${bean.totalPage >bean.currentPage }">
				<li>
				<a href="/howstay/board/noticeList.action?page=${bean.currentPage+1 }">NEXT</a>
				</li>
				</c:if>
				
				<c:choose>
				<c:when test="${bean.totalPage > bean.endPage }">
				<li><a href="/howstay/board/noticeList.action?page=${bean.endPage+1}" aria-label="Next"> 
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
				<a href="/howstay/board/noticeList.action?page=${bean.totalPage}" aria-label="Next"> 
				<span aria-hidden="true">&raquo;</span>
				</a>
				</li>
				</ul>
				</td>
			</tr>
		</table>	
		</center>
		<br><br><br>
	</div>
</div>
<jsp:include page="/jsp/footer.jsp"></jsp:include>

</body>
</html>