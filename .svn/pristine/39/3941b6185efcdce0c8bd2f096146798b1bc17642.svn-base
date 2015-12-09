<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/howstay/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
<title>Insert title here</title>
<script type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function(){
	/* $(document).on("keyup", "input:text[numberOnly]", function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );}); */
	
	$("#hhsear").change(function() {
		$("#hsearch").val('');
		$("#hsearch").focus();
	});
	
	$("#btnSubmit").click(function() {
		if($("#hhsear").val()=="hh_no") {
			if(!($.isNumeric($("#hsearch").val()))){
				alert('Only Number!');
				$("#hsearch").val('');
				$("#hsearch").focus();
			} else {
				document.searchFrm.submit();
			}
		}
		document.searchFrm.submit();
	});
});

 </script>
</head>

<body>

	<!-- Header Start -->
	<jsp:include page="/jsp/admin/menubar.jsp"></jsp:include>
	<!-- Content Start-->
	<div id="contentBgColor">
		<div id="contentWrapper" class="frame">
			<div id="content">
				<jsp:include page="boardCategory.jsp"></jsp:include>
				<div id="bodyWrapper">
					<div id="content_body">
						<h2 class="content_title">하우스 list</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">하우스관리</li>
						</ul>


						<form action="/howstay/admin/adminHouseList.action" method="post"
							class="search_box vspace49" name="searchFrm" >
							
							<fieldset>
								<select id="hhsear" name="hhsear">
									<option value="hh_no" selected="selected">하우스 번호</option>
									<option value="hh_name">하우스 이름</option>
									<option value="hh_category">하우스 카테고리</option>
									<option value="hh_address">하우스 주소</option>
								</select>
								<input type="text" onkeypress="onlyNum()" id="hsearch" name="hsearch" class="search_input"/> 
								<input type="button" id="btnSubmit" class="btn_style btn_search" value="검색">
									<input type="hidden" id="page" name="page" value="1">
							</fieldset>
						</form>
<br>


		<div id="wrapper">
			<div id="container" align="center">
				 <div class="col-lg-12" align="center">
                    <div class="panel panel-default" align="center">
                    	<div id="mini_container" align="center">
                       
					<table width="100%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="13%" />
                            <col width="27%" />
                            <col width="20%" />
                            <col width="15%" />
                            <col width="25%" />
						</colgroup>
						
						<tr class="bbs_row bg_hl">
								<th style="text-align: center">HOUSE NO</th>
								<th style="text-align: center">HOUSE NAME</th>
								<th style="text-align: center">CATEGORY</th>
								<th style="text-align: center">OWNER NAME</th>
								<th style="text-align: center">HOUSE ADDRESS</th>
						</tr>
						
						<c:forEach var="i" items="${Hlist}">
							<tr align="center">
									<td style="text-align: center">${i.h_no}</td>
									<td style="text-align: center">
									<a href="/aHouse/adminHouseInfo.action?h_no=${i.h_no}">${i.h_name}</a></td>
									<td style="text-align: center">${i.h_category}</td>
									<td style="text-align: center">${i.h_aname}</td>
									<td style="text-align: center">${i.h_address}</td>
								</tr>
							</c:forEach>
					</table>
				
 
 
						<!-- <div class="pager_box vspace10 center">
							<div class="pager">
								<p class="pager_num">
									<a href="user?pg=1&amp;field=Title&amp;query="> <img
										src="/howstay/images/admin/body/btnPrev.png" alt="이전">
									</a>
								</p>
								<ul>
									<li class="pager_num"><a
										style="color: Red; font-weight: bold;"
										href="user?pg=1&amp;field=Title&amp;query=">1</a></li>
								</ul>
								<p class="pager_num">
									<a href="user?pg=1&amp;field=Title&amp;query="> <img
										src="/howstay/images/admin/body/btnNext.png" alt="다음">
									</a>
								</p>
							</div>
						</div> -->
				
		<table align="center">
			<tr>
				<td>
				<ul class="pagination">
				<li>
				<a href="/howstay/admin/adminHouseList.action?page=1&hhsear=${hhsear}&hsearch=${hsearch}" aria-label="Previous">
				
				<!-- 이거 젤 처음 페이지로 나오게 했음 -->
				
				<span aria-hidden="true">&laquo;</span>
				</a>
				</li>
			
				<li>
				<c:choose>
				<c:when test="${pBean.currentBlock>1}">
				<a href="/howstay/admin/adminHouseList.action?page=${pBean.startPage-1}&hhsear=${hhsear}&hsearch=${hsearch}"
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
				
				
				<c:if test="${pBean.currentPage>1 }">
				<li>
				<a href="/howstay/admin/adminHouseList.action?page=${pBean.currentPage-1}&hhsear=${hhsear}&hsearch=${hsearch}">BEFORE</a>
				</li>
				</c:if>
				
				
				<c:forEach var="i" begin="${pBean.startPage}" end="${pBean.endPage}" step="1">
				<c:choose>
				<c:when test="${pBean.currentPage eq i}">
				<li><a href="#"><font color="skyBlue" size="3">${i}</font></a></li>
				</c:when>

				<c:otherwise>
				<li><a href="/howstay/admin/adminHouseList.action?page=${i}&hhsear=${hhsear}&hsearch=${hsearch}">${i}</a>
				</li>
				</c:otherwise>
				</c:choose>
				</c:forEach>


				<c:if test="${pBean.totalPage >pBean.currentPage }">
				<li>
				<a href="/howstay/admin/adminHouseList.action?page=${pBean.currentPage+1 }&hhsear=${hhsear}&hsearch=${hsearch}">NEXT</a>
				</li>
				</c:if>
				
				<c:choose>
				<c:when test="${pBean.totalPage > pBean.endPage }">
				<li><a href="/howstay/admin/adminHouseList.action?page=${pBean.endPage+1}&hhsear=${hhsear}&hsearch=${hsearch}" aria-label="Next"> 
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
				<a href="/howstay/admin/adminHouseList.action?page=${pBean.totalPage}&hhsear=${hhsear}&hsearch=${hsearch}" aria-label="Next"> 
				<span aria-hidden="true">&raquo;</span>
				</a>
				</li>
				</ul>
				</td>
			</tr>
		</table>
		
					</div>
				</div>
			</div>
					<input style="margin-right: 10" type="button" id="btnSubm" class="btn_style btn_add" value="AddHouse">	
		</div>
	</div>
</div>
</div>
</div>
</div>
</div>
</
	<!-- Footer 시작-->
	<div id="footerBgColor">
		<div id="footer">
			<p>
				<span>Copyright ⓒ HOWSTAY. All Right Reserved.</span>
			</P>
		</div>
	</div>

</body>
</html>