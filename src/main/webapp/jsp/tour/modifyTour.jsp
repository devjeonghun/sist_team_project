<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>HowStay</title>
<script type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#confirm").click(function() {
		//�������
		$("form").submit();
	});
});
</script>
</head>
<body>
	<!-- �׺���̼ǹ� -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<!-- include�� ����ó ����̶� ���� �������� css,��ũ��Ʈ ���������ּŵ� �˴ϴ� -->
	<!-- ��ܹٶ� carousel�� �����ֱ� ���� �� br�� -->
	<br>
	<br>
<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>���� ����</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>���� ����</h2>
		</div>				
	</div>
			</div>
						
	<form action="/howstay/jsp/tour/modifyInfo.do?ct_no=${bean.ct_no }&page=${param.page}" name="mfrm" method="post"  enctype="multipart/form-data">
	<div id="insertBar">
		<div class="container">
			<div class="row">
					<div class="input-group input-group-md col-md-4">
						<input type="text" name="ct_title" class="form-control" value="${bean.ct_title}"
							aria-describedby="basic-addon2">
					</div>
				
					<div class="input-group input-group-md col-md-4">
						<input type="text" name="ct_password" class="form-control" value="${bean.ct_password}"
							aria-describedby="basic-addon2">
					</div>
				
					<div class="form-group">
						<label for="exampleInputFile">���� �߰�</label>
						<input type="file" name="file"  >  <!-- id="addPicture" -->
					</div>
			</div>
		</div>
	</div>
	<div id="insertMid">
		<div class="container">
			<div class="row">
				<div class="text-area">
					<textarea class="form-control" name="ct_contents" rows="3" style="height: 400px" placeholder="������ ������ �ּ���.">${bean.ct_contents}</textarea>
				</div>
			</div>
		</div>
	</div>
	</form>		
	<br>

	
<div id="insertBot">
	<div class="container">
		<div class="row">
			<div class="bottombutton" align="right">
				<div class="btn-group" role="group" aria-label="/howstay.">
					<a href="javascript:tourModify()"><button type="button" class="btn btn-default" id="confirm">����</button></a>
				</div>
				
				
				<div class="btn-group" role="group" aria-label="/howstay.">
					<a href="/howstay/tour/tourInfo.action?ct_no=${ct_no}"><button type="button" class="btn btn-default">���</button></a>
				</div>
				
			</div>
		</div>
	</div>
</div>
<div class="col-sm-12">
		<div class="col-sm-12"></div>
		<br>		
		<br>		
		<br>		
		<br>		
</div>
<jsp:include page="/jsp/footer.jsp"></jsp:include>
</body>
</html>


