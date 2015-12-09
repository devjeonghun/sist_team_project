<!DOCTYPE html>
  <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<!-- 부트스트랩 동작관련 meta태그입니다  반응형페이지에서는 무조건 삽입되어야합니다-->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

    <title>HowStay</title>
    <link rel="stylesheet" type="text/css" href="/howstay/css/datepicker3.css">
    <link href="/howstay/css/bootstrap.css" rel="stylesheet">
	<link href="/howstay/css/style.css" rel="stylesheet">
	<link rel="shortcut icon" href="/howstay/image/fav.ico">
</head>
<body>
 <!-- Navigation -->
	<div id="header"> <!-- 헤더시작 -->
		<div class="container-fluid">
		<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-56599341ab440b9b" async="async"></script>
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar-default navbar-fixed-top">
						<div class="container">
							<div class="navbar-header">
							<!-- br위치 -->
								<a href="/howstay/jsp/main.jsp" title="" class="navbar-brand"><img src="/howstay/image/logo1.png"  width="100px" height="10px"></a><br>
								<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								</button>
							</div><!--navbar header end -->
						
							<div class="navbar-collapse collapse" id="navbar-main">
							<ul class="nav navbar-nav">
									
								</ul>
								<ul class="nav navbar-nav navbar-right">
									<li class="dropdown">
												<a href="/howstay/jsp/house/houseSearch.jsp">
												<strong>
												<span class="glyphicon glyphicon-home" aria-hidden="true"></span> 예약하기 
												</strong>
												</a>																	
									</li>	
								
									<li class="dropdown">
												<a href="/howstay/jsp/tour/mainTour.do?page=1">
												<strong>
												<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> 커뮤니티
												</strong>
												</a> 														
									</li>									
									<li class="dropdown">
												<a class="dropdown-toggle" data-toggle="dropdown" href="#" id="download">
												<strong>
												<span class="glyphicon glyphicon-wrench" aria-hidden="true"></span> 고객센터 
												</strong>
												</a>
												<ul class="dropdown-menu" aria-labelledby="download">
													<li><a href="/howstay/jsp/board/noticeList.do?page=1">공지 사항</a></li>
													<li><a href="/howstay/jsp/board/fnqList.do">FAQ</a></li>
													<li><a href="/howstay/jsp/board/qaList.do?page=1&m_id=${m_id}">Q&A</a></li>													
													<li role="separator" class="divider"></li>
													<li><a href="/howstay/jsp/board/aboutHowstay.jsp">about HOWSTAY</a></li>
												</ul>									
									</li>									
									<c:choose>
									<c:when test="${m_id == null }">
									<li class="dropdown">
									
									<a id="popid" data-container="body" 
												data-toggle="popover" data-html="true" data-trigger="click" 
												data-placement="auto bottom" data-content="
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
												
												"> 
												<span class="glyphicon glyphicon-user" aria-hidden="true">
												</span>&ensp;<strong>로그인</strong></a>
									
									</li>									
									</c:when>									
									<c:when test="${m_id != null }">
									<li class="dropdown">
												
												<a data-container="body" 
												data-toggle="popover" title="${m_id }님 환영합니다" data-html="true" data-trigger="click" 
												data-placement="auto bottom" data-content="<a href='/howstay/jsp/mypage/MemberMypage.do'>마이페이지</a>												
												<br/><a href='/howstay/jsp/mypage/myReservation.do'>예약 내역</a>
												<br/><a href='/howstay/jsp/mypage/selectWishList.do?m_id=${sessionScope.m_id }'>위시리스트</a>
												<br/><a href='/howstay/jsp/login_join/MemberLogOut.do'>로그아웃</a>
												"> 
												<span class="glyphicon glyphicon-user" aria-hidden="true">
												</span>&ensp;<strong>${m_id }</strong></a>
																							
									</li>									
									</c:when>
									</c:choose>	
								</ul>
							</div> <!-- collapse end -->
						</div><!-- container end -->
						<!-- br위치 -->		
					</nav><!-- nav end -->
				</div> <!-- col-md-12 end -->
			</div> <!-- row end -->
		</div> <!-- container-fluid end -->
	</div> <!-- header end -->
			
<!-- 헤더 끝 -->


<!-- jQuery 부트스트랩을 사용하기 위해서 필수적으로 들어가야되는 스크립트입니다 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<!-- 부트스트랩이 동적으로 동작하게하는 스크립트입니다 필수로 들어가야합니다 -->
<script src="/howstay/js/bootstrap.js"></script>
<script src="/howstay/js/tooltip.js"></script>
<script src="/howstay/js/bootstrap-datepicker.js"></script>
<script src="/howstay/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
<script> /* 상단바 따라내려오는 코드입니다 수정 X */
var cnt=1;
var ccnt=1;
var shcnt=0;
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

$(function () {
	    $('[data-toggle="popover"]').popover();
	    
	    })

$(window).load(function() {
	  if ($(window).width() < 769) {
	    $('nav').addClass('shrink');
	    if($('.shrink').css("opacity")!=1){
	    	$('.shrink').animate({opacity:1},2000);	
	    }
	    $('#maintext').css("display","none");
	    $('#subtext').css("display","block");
	  } else {
	    $('nav').removeClass('shrink');
	    $('#maintext').css("display","block");
		$('#subtext').css("display","none");
	  }
	});
	
$(window).scroll(function() {	
	  if ($(document).scrollTop() > 400) {
	    $('nav').addClass('shrink');
	    if(shcnt==0){
	    	$("nav").css("opacity",0);
	    	$(".shrink").css("opacity",0);
	    	$('.shrink').animate({opacity:1},2000);
	    	shcnt=1;
	    	
	    }    	    
	  } else if($(document).scrollTop() == 0) {
		  shcnt=0;	
		  
		  $('nav').removeClass('shrink');		  
	  }
	  if($(document).scrollTop() >300 || $(document).scrollTop() >700){
		  
		  if($("#slide1").css("opacity")==0 && cnt == 1){
			  cnt=cnt+1;
			  $("#slide1").animate({left:800},100).animate({opacity:1},500).animate({left:1},500);
			  $("#slide11").animate({left:-800},100).animate({opacity:1},500).animate({left:1},500);			  
		  }		  
	  }
	  if($(document).scrollTop() >700 || $(document).scrollTop() >800){
		  
		  if($("#slide2").css("opacity")==0 && ccnt == 1){
			  ccnt=ccnt+1;
			  $("#slide2").animate({left:800},100).animate({opacity:1},500).animate({left:1},500);
			  $("#slide22").animate({left:-800},100).animate({opacity:1},500).animate({left:1},500);			  
		  }		  
	  }
		  
	});
$(window).resize(function() {
	 if ($(window).width() < 769) {
		    $('#maintext').css("display","none");
		    $('#subtext').css("display","block");		    
		  } else {
			$('#maintext').css("display","block");
			$('#subtext').css("display","none");
		  }
	});	
	

	
</script>
<script src="/howstay/js/main.js" charset="UTF-8"></script>
</body>
</html>
