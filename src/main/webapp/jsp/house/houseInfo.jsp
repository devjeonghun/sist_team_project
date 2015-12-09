<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<link href="/howstay/css/houseInfo_style.css" rel="stylesheet">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<script charset="UTF-8" type="text/javascript"
	src="/howstay/script/jquery-2.1.4.min.js"></script>
<script charset="UTF-8" type="text/javascript">
	$(function() {
		$.ajax({
			url : '/howstay/jsp/house/houseInfoReview.jsp',
			dataType : "html",
			success : function(data) {
				$("#ajax_div").html(data);
			}
		});
	});
</script>
<script type="text/javascript" src="/howstay/script/jquery.zclip.min.js"></script>

<script charset="EUC-KR">
	function reviewShow(m_no, h_no) {
		window.open("/howstay/jsp/house/houseInfo_Review.jsp?m_no=" + m_no
				+ "&h_no=" + h_no, "id",
				"left=300, top=100, width=750, height=500");
	}
	function popupR(h_no) {
		window.open("../home/HouseInfoReviewT.action?page=1&h_no=" + h_no,
				"id", "left=300, top=100, width=800, height=500");
	}
	function shareHouse() {
		var link =  document.location.href;
		var temp="211.63.89.101:"+link.split(':')[2];		
		window.open("http://www.facebook.com/sharer/sharer.php?u="+temp,
				"id", "left=300, top=100, width=800, height=500");
				
		window.clipboardData.setData("Text", link);
		alert('주소가 복사되었습니다.\n\원하는 곳에 ctrl + v 하세요.');
	}
	function sendEmail() {
		window.open("/howstay/jsp/house/houseInfoEmail.jsp", "id",
				"left=600, top=60, width=500, height=600");
	}
	$(function(){
		if($('#checkvalue').val()=="nosession"){
			$("#modalon").trigger("click");
			$("#modalout").mouseleave(function(){
				alert("로그인을 하지않을시 다시 로그인을 하셔야 합니다");
			})
		}else if($('#checkvalue').val()=="nosessiondate"){
			$("#modalon").trigger("click");
						
			$("#modalout").mouseleave(function(){
				alert("로그인을 하지않을시 다시 로그인을 하셔야 합니다");
				
			})
		}else if($('#checkvalue').val()=="nodate"){
			$("#dateon").trigger("click");			
		}		
	})
	function hidealert(){
	$('#idmiss').hide();
	$('#loginfail').hide();
	}
	function login(){
	if($('#m_password').val()==null || $('#m_password').val()=="" || $('#m_id').val()==null || $('#m_id').val()=="" ){
		$('#idmiss').show();
		$('#m_password').val("");
		$('#m_id').val("");
		$('#m_id').focus();
	}else{
		var param="m_id="+$('#m_id').val()+"&m_password="+$('#m_password').val()
		$.ajax({
			type:'post',
			data: param,
			url:'/howstay/jsp/login_join/Memberlogin.do',
			dataType:"text",
			success:function(data){		//콜백함수
				if(data=="success"){
					var url=$(location).attr('href');
					$(location).attr('href',url);
				}else{
					$('#loginfail').show();
					$('#m_password').val("");
					$('#m_id').val("");
					$('#m_id').focus();
				}
				}						
			})										
		
	}
};
function insertDate(){
	$(location).attr('href',"/howstay/jsp/house/houseInfo.do?h_no="+$('#inputV').val()+"&page=1&st="+$('#st').val()+"&en="+$('#en').val());
	
}
</script>

</head>
<body>
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>숙박 정보 </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>숙박 정보</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div id="preview">
		<div id="houseimg" class="carousel slide col-md-6"
			style="height: 320px" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#houseimg" data-slide-to="0" class="active"></li>
				<c:forEach var="k" items="${room}" varStatus="rcnt">
					<li data-target="#carousel" data-slide-to="${rcnt.count}"></li>
				</c:forEach>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item active" align="center">
					<img src="/howstay/upload/house/${hBean.h_file}"
						style="width: 100%; height: 320px" alt="houseimg 01">
					<div class="carousel-caption"></div>
				</div>

				<c:forEach var="k" items="${room}" varStatus="rcnt">
					<div class="item" align="center">
						<img src="/howstay/upload/room/${k.r_file}"
							style="width: 100%; height: 320px" alt="houseimg 02">
						<div class="carousel-caption"></div>
					</div>
				</c:forEach>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#houseimg" role="button"
				data-slide="prev"> <i class="fa fa-chevron-left fa-2x"></i> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#houseimg" role="button"
				data-slide="next"> <i class="fa fa-chevron-right fa-2x"></i> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>


	<div id="HotelInfo" class="col-md-6 ">
		<div class="jumbotron" style="height: 320px">
			<div class="item active" align="center" id="home">
				<table>
					<tr>
						<td colspan="3"><h2>${hBean.h_name}</h2></td>
					</tr>

					<tr>
						<td colspan="1">&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;&ensp;</td>
						<td colspan="1">
							<p>
								<span class="star_rating"><span
									style="width: ${hBean.h_rate*10}%; margin: 0 auto;"></span></span>
							</p>
						</td>
						<td colspan="1"></td>
					</tr>

					<tr>
						<td colspan="3"><h5>${hBean.h_address}</h5></td>
					</tr>
					<tr>
						<td colspan="3"><h5>${hBean.h_email}</h5></td>
					</tr>
					<tr>
						<td colspan="3"><h5>${hBean.h_tel}</h5></td>
					</tr>

					<tr>
						<td colspan="3"><br>
							<div class="btn-group" role="group" aria-label="...">
									<a href="/howstay/jsp/house/wishList.do?h_no=${param.h_no}&m_id=${sessionScope.m_id}">
										<button type="button"
											class="btn btn-default  btn-lg glyphicon glyphicon-heart">SAVE</button>
									</a>
									<button type="button" id="shareButton" style="background-image: url(/howstay/image/share_facebook.png); width: 120px; height: 42px;"
										class="btn btn-default btn-lg"
										onclick="javascript:shareHouse()"></button>	
									<button type="button"
										class="btn btn-default btn-lg glyphicon glyphicon-envelope"
										onclick="javascript:sendEmail()">ASK</button>
							</div></td>
					</tr>
				</table>

			</div>
		</div>
	</div>

	<div class="col-md-12" align="center">
		<a href="#ajax_div" class="btn btn-primary" role="button">이용후기 보기</a>
		<br> <br>
	</div>

	<div id="Room Info" class="contentsWrap">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-heading" align="center">
					<h1>
						<B>Room Info</B>
					</h1>
				</div>
				<table class="table table-hover table-condensed" width="100%">

					<tbody style="border-style: inherit;">
						<c:forEach var="j" items="${room}" varStatus="rcnt">
							<tr style="border-style: inherit;">
								<td rowspan="4"><img alt="room1"
									src="/howstay/upload/room/${j.r_file}" width="400px"
									height="300px">
									<h4>
										<B>${j.r_concep}</B>
									</h4></td>
								<td><br> <B>수용 인원수</B></td>
								<td><br> ${j.r_count}</td>
							</tr>
							<tr>
								<td><br> <B>룸 상세정보</B></td>
								<td><br>${j.r_option}</td>
							</tr>
							<tr>
								<td><br> <br> <B>가격</B></td>
								<td><h3>${j.r_price}원</h3>(1박 기준)</td>
							</tr>
							<tr>
								<td colspan="1">
								<td colspan="1">

										<c:choose>
											<c:when test="${j.rflag == 1 && st != '' && en != '' && sessionScope.m_id == null}">
												<input id="checkvalue" type="hidden" value="nosession">
												로그인하세요
												<a href="javascript:location.reload();"><input class="btn btn-default btn-lg btn-warning" type="button" value="로그인하기"></a>
											</c:when>
											<c:when test="${j.rflag == 1 && st == '' && en == '' && sessionScope.m_id == null}">
												<input id="checkvalue" type="hidden" value="nosession">
												로그인을 해주시고  예약 날짜를 선택해주세요
												<a href="javascript:location.reload();"><input class="btn btn-default btn-lg btn-warning" type="button" value="로그인하기"></a>
											</c:when>
											<c:when test="${j.rflag == 1 && st == '' && en == '' && sessionScope.m_id != null}">
												<input id="checkvalue" type="hidden" value="nodate">
												예약 날짜를 선택해주세요
												<a href="javascript:location.reload();"><input class="btn btn-default btn-lg btn-warning" type="button" value="날짜 선택 하기"></a>
											</c:when>
											<c:when test="${j.rflag == 1 && st == null && en == null && sessionScope.m_id != null}">
												<input id="checkvalue" type="hidden" value="nodate">
												예약 날짜를 선택해주세요
												<a href="javascript:location.reload();"><input class="btn btn-default btn-lg btn-warning" type="button" value="날짜 선택 하기"></a>
											</c:when>
											<c:when test="${j.rflag == 0}">												
												예약 불가 날짜입니다
											</c:when>											
											<c:when test="${j.rflag == 1 && st != '' && en != '' && sessionScope.m_id != null}">
												<a
									href="/howstay/jsp/house/reservation.do?r_no=${j.r_no }&st=${st}&en=${en}&m_no=${m_no}&h_no=${param.h_no}&r_price=${j.r_price}">
												<button type="button"
													class="btn btn-default btn-lg btn-warning">예약</button></a>
											</c:when>											
										</c:choose>
								</td>
							</tr>

						</c:forEach>

					</tbody>
				</table>
			</div>
			<br>

			<div class="contentsWrap" align="center" class="col-md-12">
				<div id="viewReview">
					<input id="inputV" type="hidden" value="${param.h_no}"> <input
						id="inputVH" type="hidden" value="1">
				</div>
			</div>

			<br>



			<div class="row" id="ajax_div">
			</div>
			
			<!-- modal -->
			<input type="button" id="modalon" data-toggle="modal" data-target="#myModal" style="display: none;">
			<input type="button" id="dateon" data-toggle="modal" data-target="#dateModal" style="display: none;">
			<div class="modal fade" id="dateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" id="datemodalout" >
		      <div class="modal-header bg-primary" id="modalhead">
		        
		        <h4 class="modal-title" id="myModalLabel">예약 날짜 입력</h4>
		      </div>
		      <div class="modal-body" id="modalbodysub">
		      </div>
		      <div class="modal-body" id="modalbodymain">
		      	      <div class="input-group" style="margin: 0px auto;"> 					  	
						  <input type="text" name="st" id="st" value="" class="form-control input" placeholder="체크인" style="margin-left:-1px; text-align: center;" />
						    <span class="input-group-btn" style="width:0px;"></span>
						    <input type="text" name="en" id="en" value="" class="form-control input" placeholder="체크아웃" style="margin-left:-2px; text-align: center;" />
						    <span class="input-group-btn" style="width:0px;"></span>					 		
                        <span class="input-group-btn" style="width:0px;"></span>
                        <button class="form-control btn" onclick="insertDate()" type="button" style="color:white; background-color: #ff5a5f;">입 력</button>                        
					   </div>
					   <br/><br/><br/><br/><br/><br/><br/>             
 			  </div>
		    </div>
		  </div>
		</div>
			<input type="button" class="close" data-dismiss="modal" aria-label="Close">
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content" id="modalout">
		      <div class="modal-header bg-primary" id="modalhead">		        
		        <h4 class="modal-title" id="myModalLabel">로그인</h4>
		      </div>
		      <div class="modal-body" id="modalbodysub">
		      </div>
		      <div class="modal-body" id="modalbodymain">
		      									<h2>로그인을 하셔야 예약하실 수 있습니다</h2>
				 								<div class='input-group'>
  												<span class='input-group-addon' id='basic-addon1'>ID</span>
  												<input type='text' name='m_id' id='m_id' class='form-control input'
												placeholder='아이디' aria-describedby='basic-addon1'/>
												</div>
												<div class='input-group'>
  												<span class='input-group-addon' id='basic-addon1'>PW</span>
  												<input type='password' name='m_password' id='m_password' class='form-control input'
												placeholder='비밀번호' aria-describedby='basic-addon1'/>
												</div>
												<button class='btn btn-success' onclick='login();' style='width:100%'>로그인</button>													 																							
																							
												<div id='idmiss' class='alert alert-warning alert-dismissible' role='alert' style='display:none'>
  												<button type='button' class='close' onclick='hidealert()'><span aria-hidden='true'>&times;</span></button>
  												<strong>경고!</strong><br/>아이디와 비밀번호를 입력해주세요
												</div>												
												<div id='loginfail' class='alert alert-danger alert-dismissible' role='alert' style='display:none'>
  												<button type='button' class='close' onclick='hidealert()'><span aria-hidden='true'>&times;</span></button>
  												<strong>경고!</strong><br/>아이디나 비밀번호가 올바르지 않습니다
												</div>												
												<div style='text-align:center'>
												<!-- <br/>												
												<input type='checkbox' id='checker' name='checker' 
												onclick='saveId(this)' /> 아이디 기억하기 
												<input type='hidden' value='' id='mm_id'> -->
												<hr>
												<a href='/howstay/jsp/login_join/memberJoin.jsp'><font><span class='glyphicon glyphicon-user' aria-hidden='true'></span>회원가입</font></a>
												<a href='/howstay/jsp/login_join/find.jsp'><font><span class='glyphicon glyphicon-search' aria-hidden='true'></span>아이디 비밀번호 찾기</font></a>												
												</div>				
 			  </div>
		    </div>
		  </div>
		</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br>

			<!-- 아랫단 시작-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>

			<!-- 아랫단 종료-->
</body>
</html>