<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>How?Stay!</title>
<%
request.setCharacterEncoding("EUC-KR");
%>
<script>
function focusLogin(){
	$("#popid").trigger("click");	
}
	function findID() {
		var obj = document.idFrm;
		if (!obj.m_email.value) {
			alert("ã�����ϴ� ���̵��� �̸����� �Է����ּ���.");
			obj.m_email.value = '';
		} else {
			obj.submit();
		}
	}
	function findPass(){
		var obj=document.passFrm;
		if(!obj.m_id.value || obj.m_pass_q.value=='empty'){
			alert("ã�����ϴ� ���̵�� ��й�ȣ ��Ʈ�� �Է��ϼ���.");
			obj.m_id.value='';
		}else{
			hintCheck();
		}
	}
	
	function hintCheck() {
		var obj=document.passFrm;
		if(obj.question.value!='empty'){
			obj.m_pass_q.value=obj.question.value;
			obj.submit();
		}else{
			alert('��Ʈ�� ������');
		}
	}
</script>
</head>
<body>
	<!-- �׺���̼ǹ� -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<!-- include�� ����ó ����̶� ���� �������� css,��ũ��Ʈ ���������ּŵ� �˴ϴ� -->
	<!-- ��ܹٶ� carousel�� �����ֱ� ���� �� br�� -->
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>���̵� ��й�ȣ ã��</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>���̵� ��й�ȣ ã��</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<div class="text-left">
				<div class="jumbotron">
					<form action="/howstay/jsp/login_join/MemberFindId.do" name="idFrm">

						<h2>
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							���̵� ã��
						</h2>
						<br>
						<h5>���̵� ã�� ���� ���̿���!</h5>
						<h5>������ �Է��ؼ� ���̵� ã�ƺη�!</h5>
						<div class="input-group">
					      <input type="text" class="form-control" placeholder="������� �̸���" name="m_email">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button" onclick="findID()">ã��</button>
					      </span>
					    </div>
						<br> 
						<span onclick="focusLogin()">
						<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
									�α��� �ϱ�</span>
					</form>
					</div>
				</div>
			</div>
		<div class="col-md-6">
			<div class="text-left">
				<div class="jumbotron">
					<form action="/howstay/jsp/login_join/MemberFindPass.do" name="passFrm">
						<h2>
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
							��й�ȣ ã��
						</h2>
						<br>
						<h5>��й�ȣ�� ã�� ���� ���̿���!</h5>
						<h5>������ �Է��ؼ� ���̵� ã�ƺη�!</h5>
							<input type="text" placeholder="������� ���̵�" size="30" name="m_id" id="m_id"><br>
							<select id="question" name="question"
								class="btn btn-default">
									<option selected="selected" value="empty">�����ϼ���</option>
									<option value="���� ���� �����ϴ� ����?">���� ���� �����ϴ� ����?</option>
									<option value="���� ���� ������?">���� ���� ������?</option>
									<option value="���� ���� �����Ѱ���?">���� ���� �����Ѱ���?</option>
							</select>
							<input type="hidden" name="m_pass_q" id="m_pass_q"> 
							<input type="text" placeholder="������� ��й�ȣ ��" size="30" name="m_pass_a" id="m_pass_a">
							
							<input type="button" class="btn btn-primary" value="ã��"
								onclick="findPass()">								
							<br>
							<span onclick="focusLogin()">
						<span class="glyphicon glyphicon-send" aria-hidden="true"></span>
									�α��� �ϱ�</span>
						
					</form>
				</div>
				</div>
			</div>
		</div>		
	</div>



	
	<br>
	<br>
	<br>
<jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>