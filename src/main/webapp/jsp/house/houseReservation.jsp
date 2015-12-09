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
function selectBank() {//�ο��� select�� hiddenó���� input���� �Ѱܼ� r_count�� �Ѱ���
   	var sel = document.getElementById("bankSel").value;
   	document.getElementById("p_cor").setAttribute("value", sel);
}
function infoSubmit() {
	// ī������ ��ġ�� ��ũ��Ʈ
	var cardNum = document.getElementById("cardInfo1").value;
	var sequNum = document.getElementById("cardInfo2").value;
	var availMon = document.getElementById("cardInfo3").value;
	var availYear = document.getElementById("cardInfo4").value;
	var temp = cardNum+"#"+sequNum+"#"+availMon+"#"+availYear;
	document.getElementById("p_data").setAttribute("value", temp);
	var bank = document.getElementById("p_cor").value;
	
	//���� �ִ� ��ü submit
	if(cardNum==null || cardNum=='') {
		alert('ī���ȣ Ȯ��!');
		document.getElementById("cardInfo1").focus();
	} else if(sequNum==null || sequNum=='') {
		alert('�����ڵ� Ȯ��!');
		document.getElementById("cardInfo2").focus();
	} else if(availMon==null || availMon=='') {
		alert('��������(��)Ȯ��');
		document.getElementById("cardInfo3").focus();
	} else if(availYear==null || availYear=='') {
		alert('��������(��)Ȯ��');
		document.getElementById("cardInfo4").focus();
	} else if(bank=='noSel' || bank==null || bank=='') {
		alert('ī�� �������� Ȯ��!');
		document.getElementById("bankSel").focus();
	} else {
		if(!confirm('������ �����մϱ�?')) {
			return;
		}
		document.frm.submit();
	}
}
</script>
</head>


<body>
<%-- "param."�� ��� mv.addObject�� ���� �ʰ� GET(URL)�� ���� �Ѱ� ���� �ʴµ��� ���������� Ȯ���� ��� ����. 
"param."�� ������ ���� ��쿡�� sessionó���Ǿ� �޾ƿ�.
���ȣ=${r_no }&���۳�¥=${param.st}&����¥=${param.en}&ȸ����ȣ=${m_no}&�Ͽ콺��ȣ=${h_no}&�밡��=${r_price} --%>
<jsp:include page="/jsp/nav.jsp"></jsp:include>
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>�����ϱ� </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>�����ϱ�</h2>
		</div>				
	</div>
	<br/>
	</div>
<!-- ���� ���� -->
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
		<font color=#165286 size=3em style="bold">���� ����</font></p>
	  	</div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label" ><font color=#165286>�̸�</font></label>
	    <div class="col-sm-9">
	      <input type="text" class="form-control"  value="${memInfo.M_NAME}" readonly="readonly">
	    </div>
	  </div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>�ڵ���</font></label>
	    <div class="col-sm-9">
	      <input type="text" class="form-control" value="${memInfo.M_MOBILE}" readonly="readonly">
	      <div class="col-sm-9"> 
	  	 	<p class="help-block"><font color=crimeson size=0.5em>�Է��Ͻ� ������ ���ΰ� ��ġ�ϴ��� Ȯ���Ͻʽÿ�.<br>
	  	 	����ó�� ����Ǿ��ٸ�, MyPage���� �����Ͽ��ֽñ� �ٶ��ϴ�.
	  	 	</font></p>
	  	  </div>
	    </div>
	  </div>
	 
	   <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>��û����</font></label>
	    <div class="col-sm-9">
	      <textarea class="form-control" rows="3" id="hrr_request" name="hrr_request"></textarea>
	      <!-- <input type="text" name="hrr_request" class="form-control"> -->
	    </div>
	  </div>
	  
	  <div>
		<p class="text-center" style="padding-bottom:15px; padding-top:15px; font-weight: bold;">
		<font color=#165286 size=3em style="bold">���� ����</font></p>
	  	</div>
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>����</font></label>
	     <div class="col-sm-9">
		    <select class="col-sm-9 form-control" id="bankSel" onchange="selectBank()">
			  <option value="noSel">ī��縦 �������ּ���</option>
			  <option value="����">����</option>
			  <option value="����">����</option>
			  <option value="����">����</option>
			  <option value="�츮">�츮</option>
			  <option value="��ȯ">��ȯ</option>
			  <option value="���">���</option>
			</select>
			<input type="hidden" id="p_cor" name="p_cor">
	    </div>
	  </div>
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>ī���ȣ</font></label>
	    <div class="col-sm-9">
	      <input type="text" id="cardInfo1" class="form-control" placeholder="��) 1234-5678-9012-3456" maxlength="19">
	    </div>
	  </div>

	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>�����ڵ�</font></label>
	    <div class="col-sm-4">
	      <input type="text" id="cardInfo2" class="form-control" placeholder="��) 123 " maxlength="3">
	      </div>
	     <div class="col-sm-4"> 
	  	 <p class="help-block"><font color=crimeson size=0.5em>ī�� �޸� ������� �����ִ� ������ ���ڸ� ���� </font></p>
	  	</div>
	  </div>

	 
	  
	  <div class="form-group">
	    <label class="col-sm-2 control-label"><font color=#165286>��������</font></label>
		    <div class="col-sm-4">
		      <input type="text" id="cardInfo3" class="form-control" placeholder="��) 03 (MONTH)" maxlength="2">
		      </div>
		      
		    <div class="col-sm-4" style="padding-left:0px;">
		      <input type="text" id="cardInfo4" class="form-control" placeholder="��) 19 (YEAR)" maxlength="2">
		    </div>
		    <!-- ī������ ���� -->
		    <input type="hidden" id="p_data" name="p_data">
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-9">
	      <input type="button" onclick="infoSubmit()" class="btn btn-lg" 
	      style="margin-left: 60%; margin-top: 10%;" value="���� �� ������û">
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
				<font size=3em style="bold">���೻�� ���</font></p>
		  	</div>
		
			  <div class="col-sm-12">
			    <div class="thumbnail" style="margin-bottom: 50px;">
			      <img src="/howstay/upload/room/${roomInfo.R_FILE}" >
			      <div class="caption">
			      	<h4>${roomInfo.H_CATEGORY}</h3>
			        <h4>${roomInfo.H_NAME}</h3>
			        <!-- TODO �����ͼ��Ѹ���  -->
			        <small><b>${roomInfo.R_CONCEP }</b></small>
			       
			        <div class="table-responsive">
					  <table class="table" style="margin-top: 20px;">
					    <tr><td>üũ��</td>
					    <td>${st }</td></tr>
					    <tr><td>üũ�ƿ�</td>
					    <td>${en }</td></tr>
					    <tr align="right"><td colspan="2" style="font-weight: bold;">1�� ����</td></tr>
					  </table>
					  
					   <table class="table">
					    <tr>
					    	<td>1�ڴ� ���</td>
					    	<td>${r_price } ��</td>
					    </tr>
					  
					    <tr align="right">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.0em;">�� ���: ${r_price*day } ��</td>
					    </tr>
					    <tr>
					    	<td>ȸ�����</td>
					    	<c:if test="${memInfo.M_GRADE eq 'Bronze'}">
					    	<td>${memInfo.M_GRADE} (���η�:0%)</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Silver'}">
					    	<td>${memInfo.M_GRADE} (���η�:3%)</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Gold'}">
					    	<td>${memInfo.M_GRADE} (���η�:6%)</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Platinum'}">
					    	<td>${memInfo.M_GRADE} (���η�:10%)</td>
					    	</c:if>
					    </tr>
					    <tr align="right">
					    	<c:if test="${memInfo.M_GRADE eq 'Bronze'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">���� �����ݾ�: ${r_price*day } ��</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Silver'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">���� �����ݾ�: ${r_price*day*0.97 } ��</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Gold'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">���� �����ݾ�: ${r_price*day*0.94 } ��</td>
					    	</c:if>
					    	<c:if test="${memInfo.M_GRADE eq 'Platinum'}">
					    	<td colspan="2" style="font-weight: bold; font-size: 1.2em; color: red;">���� �����ݾ�: ${r_price*day*0.90 } ��</td>
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
<!-- ���� ���� -->

<!-- �Ʒ��� ����-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>
						
<!-- �Ʒ��� ����-->

</body>
</html>