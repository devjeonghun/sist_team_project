<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HowStay</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<script type="text/javascript">
	function qaInsert() {
		obj = document.qaFrm;
		obj.submit();
	}

</script>
</head>
<body>
	<!-- 네비게이션바 -->
	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>Q & A </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>Q&A</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="row">		
		<div class="col-md-12">
			<form action="/howstay/jsp/board/boardQaInsert.do" class="form-horizontal" name="qaFrm" method="post" enctype="multipart/form-data">
				<div class="form-group"><%-- ?mmno=${m_no } --%>
					<label for="inputtitle3" class="col-sm-1 control-label">제목</label>
					<div class="col-sm-10">
						<input type="title" class="form-control" name="cq_title"
							placeholder="제목">
					</div>
				</div>


				<div class="form-group">
					<label for="inputcontents" class="col-sm-1 control-label">내용</label>
					<div class="col-sm-10">
							<textarea class="form-control" rows="3" style="height: 400px"
									placeholder="내용을 입력해 주세요." name="cq_contents"></textarea>
					</div>
				</div>

				<div class="form-group">
					<label for="inputPassword3" class="col-sm-1 control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" name="cq_password"
							placeholder="Password">
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-sm-offset-1 col-sm-10">
						<button type="button" class="btn btn-default" style="margin-left: 50%"><a href="javascript:qaInsert()" >등록</a></button>
					</div>
					<br><br><br><br>
				</div>
			</form>
		</div>
	</div>

	<!-- 아랫단 시작-->
	
	<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
	<!-- 아랫단 종료-->

</body>
</html>