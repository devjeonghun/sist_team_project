<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<link href="/howstay/css/star.css" rel="stylesheet">
<title>mypage</title>
<script type="text/javascript">

function review(no){
	$.ajax({
		url:'/howstay/jsp/mypage/myReview.do?hrr_no='+no,
		dataType:"html",
		success:function(data){
			$("#modal-footer").attr("class","modal-footer");
			$("#modalhead h4").html("리뷰쓰기");
			$("#modalsubmit").html("<span id=\"write"+no+"\">리뷰쓰기</span>");
			$("#modalbodymain").attr("class","hidden");
			$("#modalbodysub").html(data);
			$("#write"+no).click(function(){
				$.ajax({
					url:'/howstay/jsp/mypage/myReviewwrite.do?hrr_no='+no,
					dataType:"html",
					 beforeSend: function() {	                      
	                    loadimg();
	             },
	                complete: function() {
	                     	                    
	                },
	
					success:function(data){
						setInterval(function(){
							$('#load').css("display","none");	
						}, 2500);						
						$("#modalbodysub").html(data);
						$("#modal-footer").attr("class","hidden");
					}				
				});
			})
		}				
	});	
}
function loadimg(){
	$('#load').css("display","block");
}

function reserve(no){
	$("#modal-footer").attr("class","modal-footer");
	$("#modalhead h4").html("결제 내역");
	$("#modalsubmit").html("문의하기");
	$("#modalbodymain").attr("class","modal-body");
	$("#modalbodysub").html("");
	var param = "no=" +document.getElementsByName("no"+no)[0].value;
	$.ajax({
		url:'/howstay/jsp/mypage/reserve.do?'+param,
		dataType:"json",
		success:function(data){
			$(data).each(function(){
				document.getElementById("dtno").innerHTML=this.HRR_NO;
				document.getElementById("dtcor").innerHTML=this.P_COR;;
				document.getElementById("dttype").innerHTML=this.P_TYPE;
				document.getElementById("dtdata").innerHTML=this.P_DATA;
			})			
		}
	})
}
</script>
</head>
<body>
<c:if test="${m_id==null|| m_id==''}">
	<c:redirect url="/jsp/login_join/login.jsp" />
</c:if>
	<jsp:include page="/jsp/nav.jsp"/>
	<!-- 사이드바 -->
<div id="load" style="z-index:4000; position:absolute; top:400px;bottom:0;right:0;left:500px;display:none;">
<font>처리중</font>
<img src="/howstay/image/loader.gif">
</div>
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>나의 예약 내역</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>나의 예약 내역</h2>
		</div>				
	</div>
	<br/>
<div role="tabpanel">
	 <ul class="nav nav-tabs" role="tablist">  	
    <li role="presentation"><a href="/howstay/jsp/mypage/MemberMypage.do" >마이페이지</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/checkpass.jsp" >정보 수정</a></li>
    <li role="presentation"  class="active"><a href="/howstay/jsp/mypage/myReservation.do" >예약 내역</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/selectWishList.do?m_id=${sessionScope.m_id }" >위시리스트</a></li>
  </ul>
  </div>
	<!-- 사이드바 종료 -->
	<div class="container-fluid">
		<!-- 컨테이너 시작 -->
		<!-- header 시작 -->
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
								<th scope="col">방 종류</th>
								<th scope="col">숙박 예정일</th>
								<th scope="col">숙박 종료일</th>
								<th scope="col"></th>	
								<th scope="col"></th>	
							</tr>
							</thead>
							<tbody>
							<c:forEach var="b" items="${list}" varStatus="cnt">
								<tr>
									<td class="fir">${cnt.count}
									<input type="hidden" value="${b.NO }" name="no${b.NO }">
									</td>									
									<td class="fir">${b.HNAME }</td>
									<td class="fir">${b.R_CONCEP}</td>
									<td class="fir">${b.RS }</td>
									<td class="fir">${b.RE }</td>
									<td class="fir"><a href=""data-toggle="modal" data-target="#myModal" onclick="reserve(${b.NO })">
									<input type="button" class="btn btn-success"value="결제내역"/></a>
									<td class="fir"><a href=""data-toggle="modal" data-target="#myModal" onclick="review(${b.NO })">
									<input type="button" class="btn btn-success"value="리뷰쓰기"/></a>
									</td>									
								</tr>
																											
							</c:forEach>
							</tbody>
							</table>
								
			 				</div>
					

					</div>						
				</div><!-- Tab panes끝-->
			</div><!-- tabpanel끝-->
		</div><!-- cod-md-12시작 -->

	</div>	
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
				    <button type="button" class="btn btn-default" data-dismiss="modal" id="close">닫기</button>
				      </div>
		      
		    </div>
		  </div>
		</div>

	
	
	<br><br><br><br><br><br>
	<!-- 아랫단 시작-->
	
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
	<!-- 아랫단 종료-->

</body>
</html>