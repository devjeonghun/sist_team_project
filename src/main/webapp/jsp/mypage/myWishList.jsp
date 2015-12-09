<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>mypage</title>
<script type="text/javascript">
</script>
</head>
<body>
<c:if test="${m_id==null|| m_id==''}">
	<c:redirect url="/jsp/login_join/login.jsp" />
</c:if>
	<jsp:include page="/jsp/nav.jsp"/>
	<!-- 사이드바 -->
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>WISH LIST</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>WISH LIST</h2>
		</div>				
	</div>
	<br/>
</div>
<div role="tabpanel">
	 <ul class="nav nav-tabs" role="tablist">  	
    <li role="presentation"><a href="/howstay/jsp/mypage/MemberMypage.do" >마이페이지</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/checkpass.jsp" >정보 수정</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/myReservation.do" >예약 내역</a></li>
    <li role="presentation" class="active"><a href="/howstay/jsp/mypage/selectWishList.do?m_id=${sessionScope.m_id }" >위시리스트</a></li>
  </ul>
  </div>
	<!-- 사이드바 종료 -->
	<div class="container-fluid">
		<!-- 컨테이너 시작 -->
		<!-- header 시작 -->
		<div class="page-header">
			<div class="col-md-5">
				&ensp;
				<h1>
					My WishList&ensp;<small>위시리스트 내역</small>
				</h1>
			</div>
		</div>
		<!-- header 끝 -->
		<!-- 내용시작-->
		<div class="col-md-12"><!-- cod-md-12시작 -->
			<br>
			<div role="tabpanel"><!-- tabpanel시작 -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="myinfo">
						<!-- 게시판테이블 :가운데정렬 -->
						
						<div class="panel panel-default">
		 					<table class="table table-hover table-condensed">
								<colgroup>
									<col width="10%" />									
									<col width="30%" />									
									<col width="30%" />
									<col width="10%" />
									<col width="10%" />
									<col width="5%" />
									<col width="5%" />
								</colgroup>
							<thead>
							<tr>
								<th scope="col">번호</th>								
								<th scope="col" style="text-align: center;">예약 업소</th>
								<th scope="col">주소</th>	
								<th scope="col">방 종류</th>
							</tr>
							</thead>
							<tbody>
							<c:forEach var="w" items="${list }" varStatus="cnt">
								<c:if test="${w.h_no != 0 }">
								<tr>
									<td class="fir">${cnt.count }
									</td>									
									<td class="fir">${w.h_name }</td>
									<td class="fir">${w.h_address }</td>
									<td class="fir">${w.h_category }</td>
									<td class="fir"><a href="/howstay/jsp/house/houseInfo.do?h_no=${w.h_no }&page=1">
									<input type="button" class="btn btn-success"value="예약하러 가기"/></a>
									</td>									
									<td class="fir"><a href="/howstay/jsp/mypage/deleteWish.do?m_id=${m_id }&h_no=${w.h_no}">
									<input type="button" class="btn btn-success"value="삭  제"/></a>
									</td>									
								</tr>
								</c:if>															
							</c:forEach>
							</tbody>
							</table>
			 				</div>
						

					</div>						
				</div><!-- Tab panes끝-->
			</div><!-- tabpanel끝-->
		</div><!-- cod-md-12시작 -->

		
	</div>
	<!-- container끝 -->
	<!-- 내용끝-->
	
	<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header bg-primary" id="modalhead">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">결제 내역</h4>
		      </div>
		      <div class="modal-body" id="modalbodysub">
		      </div>
		      <div class="modal-body" id="modalbodymain">
		      <br>
				    <table class="table table-bordered">
				 
								<colgroup>
									<col width="20%" />
									<col width="30%" />
									<col width="20%" />
									<col width="15%" />
									<col width="15%" />									
								</colgroup>
							<tbody>
							<tr>
								<th scope="col">예약번호</th>
								<td scope="col" style="text-align: center;"colspan="1"><p style="text-align: center;" id="dtno"></p></td>
								
											
							</tr>
														
							<tr>
								<th class="fir">결제 정보</th>
								<td class="fir" colspan="1" rowspan="2"><p class="text-danger" style="text-align: center;" id="dtdata"></p></td>
								<th class="fir">결제 방법</th>
								<td class="fir" colspan="1"><p class="text-danger" style="text-align: center;"><p id="dtcor"></p><p id="dttype"></p></td>														
																
							</tr>						
													
							</tbody>
								
					</table>
 			  </div>
				  <div class="modal-footer" id="modal-footer">
				    <button type="button" class="btn btn-primary" onclick="" id="modalsubmit">문의하기</button>
				    <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				      </div>
		      
		    </div>
		  </div>
		</div>
	<!-- /Modal -->
	
	
	<br><br><br><br><br><br>
	<!-- 아랫단 시작-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	<!-- 아랫단 종료-->

</body>
</html>