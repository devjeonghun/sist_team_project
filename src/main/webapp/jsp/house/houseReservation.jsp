<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>How?Stay!</title>

<style type="text/css">
.form-group .control-label{
	padding-right: 0px;
}
</style>
<script type="text/javascript" charset="utf-8">
function selectBank() {//인원수 select시 hidden처리된 input으로 넘겨서 r_count로 넘겨줌
   	var sel = document.getElementById("bankSel").value;
   	document.getElementById("p_cor").setAttribute("value", sel);
}
function infoSubmit() {
	// 카드정보 합치는 스크립트
	var cardNum = document.getElementById("cardInfo1").value;
	var sequNum = document.getElementById("cardInfo2").value;
	var availMon = document.getElementById("cardInfo3").value;
	var availYear = document.getElementById("cardInfo4").value;
	var temp = cardNum+"#"+sequNum+"#"+availMon+"#"+availYear;
	document.getElementById("p_data").setAttribute("value", temp);
	var bank = document.getElementById("p_cor").value;
	
	//폼에 있는 객체 submit
	if(cardNum==null || cardNum=='') {
		alert('카드번호 확인!');
		document.getElementById("cardInfo1").focus();
	} else if(sequNum==null || sequNum=='') {
		alert('보안코드 확인!');
		document.getElementById("cardInfo2").focus();
	} else if(availMon==null || availMon=='') {
		alert('만료일자(월)확인');
		document.getElementById("cardInfo3").focus();
	} else if(availYear==null || availYear=='') {
		alert('만료일자(년)확인');
		document.getElementById("cardInfo4").focus();
	} else if(bank=='noSel' || bank==null || bank=='') {
		alert('카드 은행정보 확인!');
		document.getElementById("bankSel").focus();
	} else {
		if(!confirm('결제를 진행합니까?')) {
			return;
		}
		document.frm.submit();
	}
}
</script>
</head>


<body>
<%-- "param."의 경우 mv.addObject를 하지 않고도 GET(URL)로 갑을 넘겨 주지 않는데도 가져오는지 확인한 결과 가능. 
"param."을 붙이지 않은 경우에는 session처리되어 받아옴.
룸번호=${r_no }&시작날짜=${param.st}&끝날짜=${param.en}&회워번호=${m_no}&하우스번호=${h_no}&룸가격=${r_price} --%>
<jsp:include page="/jsp/nav.jsp"></jsp:include>
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>예약하기 </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>예약하기</h2>
		</div>				
	</div>
	<br/>
	</div>
<!-- 예약 결제 -->
<div class="container" style="padding-top: 150px;" >
<div class="row">
<div class="col-md-7" style="background: url(/avengers/image/reservation/reservation2.jpg) repeat left center fixed;  
	margin-bottom:100px;">
	<div style="margin: 30px;">
	<form name="frm" class="form-horizontal" action="/howstay/jsp/house/payment.do" method="post">
		<input type="hidden" name="h_no" value="${h_no }">
		<input type="hidden" name="r_no" value="${r_no }">
		<c:if test="${memInfo.M_GRADE eq 'Bronze'}">
			<input type="hidden" name="hrr_price" value="${r_price*day }">
    	</c:if>
    	<c:if test="${memInfo.M_GRADE eq 'Silver'}">
			<input type="hidden" name="hrr_price" value="${r_price*day*0.97 }">
    	</c:if>
    	<c:if test="${memInfo.M_GRADE eq 'Gold'}">
			<input type="hidden" name="hrr_price" value="${r_price*day*0.94 }">
    	</c:if>
    	<c:if test="${memInfo.M_GRADE eq 'Platinum'}">
			<input type="hidden" name="hrr_price" value="${r_price*day*0.90 }">
    	</c:if>
		<input type="hidden" name="m_no" value="${m_no }">
		<input type="hidden" name="hrr_start" value="${st }">
		<input type="hidden" name="hrr_end" value="${en }">
		<div>
		<p class="text-center" style="padding-bottom:15px; font-weight: bold;">
		<font color=#165286 size=3em style="bold">예약 정보</font></p>
	  	</div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label" ><font color=#165286>이름</font></label>
	    <div class="col-sm-9">
	      <input type="text" class="form-control"  value="${memInfo.M_NAME}" readonly="readonly">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>핸드폰</font></label>
	    <div class="col-sm-9">
	      <input type="text" class="form-control" value="${memInfo.M_MOBILE}" readonly="readonly">
	      <div class="col-sm-9"> 
	  	 	<p class="help-block"><font color=crimeson size=0.5em>입력하신 정보가 본인과 일치하는지 확인하십시오.<br>
	  	 	연락처가 변경되었다면, MyPage에서 변경하여주시기 바랍니다.
	  	 	</font></p>
	  	  </div>
	    </div>
	  </div>
	 
	   <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>요청사항</font></label>
	    <div class="col-sm-9">
	      <textarea class="form-control" rows="3" id="hrr_request" name="hrr_request"></textarea>
	      <!-- <input type="text" name="hrr_request" class="form-control"> -->
	    </div>
	  </div>
	  
	  <div>
		<p class="text-center" style="padding-bottom:15px; padding-top:15px; font-weight: bold;">
		<font color=#165286 size=3em style="bold">결제 정보</font></p>
	  	</div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>은행</font></label>
	     <div class="col-sm-9">
		    <select class="col-sm-9 form-control" id="bankSel" onchange="selectBank()">
			  <option value="noSel">카드사를 선택해주세요</option>
			  <option value="국민">국민</option>
			  <option value="신한">신한</option>
			  <option value="농협">농협</option>
			  <option value="우리">우리</option>
			  <option value="외환">외환</option>
			  <option value="기업">기업</option>
			</select>
			<input type="hidden" id="p_cor" name="p_cor">
	    </div>
	  </div>
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>카드번호</font></label>
	    <div class="col-sm-9">
	      <input type="text" id="cardInfo1" class="form-control" placeholder="예) 1234-5678-9012-3456" maxlength="19">
	    </div>
	  </div>

	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>보안코드</font></label>
	    <div class="col-sm-4">
	      <input type="text" id="cardInfo2" class="form-control" placeholder="예) 123 " maxlength="3">
	      </div>
	     <div class="col-sm-4"> 
	  	 <p class="help-block"><font color=crimeson size=0.5em>카드 뒷면 서명란에 적혀있는 마지막 세자리 숫자 </font></p>
	  	</div>
	  </div>

	 
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>만료일자</font></label>
		    <div class="col-sm-4">
		      <input type="text" id="cardInfo3" class="form-control" placeholder="예) 03 (MONTH)" maxlength="2">
		      </div>
		      
		    <div class="col-sm-4" style="padding-left:0px;">
		      <input type="text" id="cardInfo4" class="form-control" placeholder="예) 19 (YEAR)" maxlength="2">
		    </div>
		    <!-- 카드정보 통합 -->
		    <input type="hidden" id="p_data" name="p_data">
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-9">
	      <input type="button" onclick="infoSubmit()" class="btn btn-lg" 
	      style="margin-left: 60%; margin-top: 10%;" value="예약 및 결제요청">
	    </div>
	  </div>
	  
	</form>
	</div>
	</div>
	
	<div class="col-md-4 col-md-offset-1" style="background: #ffffff; opacity: 0.8; 
		margin-bottom:100px;">
		<div style="margin-top: 25px;">
			<div>
				<p class="text-center" style="padding-bottom:15px; font-weight: bold;">
				<font size=3em style="bold">예약내용 요약</font></p>
		  	</div>
		
			  <div class="col-sm-12">
			    <div class="thumbnail" style="margin-bottom: 50px;">
			      <img src="/howstay/upload/room/${roomInfo.R_FILE}" >
			      <div class="caption">
			      	<h4>${roomInfo.H_CATEGORY}</h3>
			        <h4>${roomInfo.H_NAME}</h3>
			        <!-- TODO 가져와서뿌리기  -->
			        <small><b>${roomInfo.R_CONCEP }</b></small>
			       
			        <div class="table-responsive">
					  <table class="table" style="margin-top: 20px;">
					    <tr><td>체크인</td>
					    <td>${st }</td></tr>
					    <tr><td>체크아웃</td>
					    <td>${en }</td></tr>
					    <tr align="right"><td colspan="2" style="font-weight: bold;">1박 숙박</td></tr>
					  </table>
					  
					   <table class="table">
					    <tr>
					    	<td>1박당 요금</td>
					    	<td>${r_price } 원</td>
					    </tr>
					  
					    <tr align="right">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.0em;">총 요금: ${r_price*day } 원</td>
					    </tr>
					    <tr>
					    	<td>회원등급</td>
					    	<c:if test="${memInfo.M_GRADE eq 'Bronze'}">
					    	<td>${memInfo.M_GRADE} (할인률:0%)</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Silver'}">
					    	<td>${memInfo.M_GRADE} (할인률:3%)</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Gold'}">
					    	<td>${memInfo.M_GRADE} (할인률:6%)</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Platinum'}">
					    	<td>${memInfo.M_GRADE} (할인률:10%)</td>
					    	</c:if>
					    </tr>
					    <tr align="right">
					    	<c:if test="${memInfo.M_GRADE eq 'Bronze'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">실제 결제금액: ${r_price*day } 원</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Silver'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">실제 결제금액: ${r_price*day*0.97 } 원</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Gold'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">실제 결제금액: ${r_price*day*0.94 } 원</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Platinum'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">실제 결제금액: ${r_price*day*0.90 } 원</td>
					    	</c:if>
					    </tr>
					  </table>
					</div>
			      </div>
			    </div>
			  </div>
		</div>
	</div>
</div><!-- row -->
</div><!-- container -->
<!-- 예약 결제 -->

<!-- 아랫단 시작-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>
						
<!-- 아랫단 종료-->

</body>
</html>