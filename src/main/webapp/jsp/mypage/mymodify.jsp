<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>mypage</title>
</head>
<body>
<!-- ����ó�� -->
<c:if test="${m_id==null|| m_id==''}">
	<c:redirect url="/jsp/login_join/login.jsp" />
</c:if>
<script type="text/javascript">
function success(){
	alert("������ ��α��� ���ֽʽÿ�");
	
}
</script>
	<jsp:include page="/jsp/nav.jsp" />
	<!-- ���̵�� -->
	<div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext">
				<div class="col-md-8">
					<h1>ȸ�� ���� ����</h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>ȸ�� ���� ����</h2>
		</div>				
	</div>
	<br/>
	<div role="tabpanel">
	 <ul class="nav nav-tabs" role="tablist">  	
    <li role="presentation"><a href="/howstay/jsp/mypage/MemberMypage.do" >����������</a></li>
    <li role="presentation" class="active"><a href="/howstay/jsp/mypage/checkpass.jsp" >���� ����</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/myReservation.do" >���� ����</a></li>
    <li role="presentation"><a href="/howstay/jsp/mypage/selectWishList.do?m_id=${sessionScope.m_id }" >���ø���Ʈ</a></li>
  </ul>
  </div>
	<!-- ���̵�� ���� -->
	<div class="container-fluid">
		<!-- �����̳� ���� -->
		<!-- �������-->
		<div class="col-md-12"><!-- cod-md-12���� -->
			<br>
			<div role="tabpanel"><!-- tabpanel���� -->
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="mymodify">
						<div class="text-center">
						 <br>
						<div class="row">
							<form action="/howstay/jsp/mypage/MemberMyModifyUpdate.do" method="post">
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">ID</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_id" value="${bean.m_id }" Style="width: 30%;" readonly="readonly">
							  </div>
								<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Pass</span>&ensp;&ensp;
							    <input type="password" class="form-control" name="m_password" value="${bean.m_password}" Style="width: 30%;">
							  </div>
								<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">PassQ</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_pass_q" value="${bean.m_pass_q }" Style="width: 30%;">
							  </div>
							  	<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">PassA</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_pass_a" value="${bean.m_pass_a }" Style="width: 30%;">
							  </div><br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Address</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_address" value="${bean.m_address }" Style="width: 30%;">
							  </div>
							  	<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Email</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_email" value="${bean.m_email }" Style="width: 30%;">
							  </div>
							  	<br>
							  <div class="form-inline">
							    &ensp;<span class="label label-primary">Cp</span>&ensp;&ensp;
							    <input type="text" class="form-control" name="m_mobile" value="${bean.m_mobile }" Style="width: 30%;">
							    <input type="hidden" name="m_no" value="${bean.m_no }">
							    <input type="hidden" name="m_name" value="${bean.m_name }">
							    <input type="hidden" name="m_birth" value="${bean.m_birth }">
							    <input type="hidden" name="m_tel" value="${bean.m_tel }">
							    <input type="hidden" name="m_gender" value="${bean.m_gender }">
							    <input type="hidden" name="m_regdate" value="${bean.m_regdate }">
							    <input type="hidden" name="m_point" value="${bean.m_point }">
							    <input type="hidden" name="m_grade" value="${bean.m_grade }">
							    
							  </div>
							  	<br>
							  	<input type="submit" class="btn btn-success" value="����"> 
							  	<br>
		<br><br><br><br><br>
							</form>
							</div>
						</div>
					</div>						
				</div><!-- Tab panes��-->
			</div><!-- tabpanel��-->
		</div><!-- cod-md-12���� -->

		
	</div>
	</div>
	<!-- container�� -->
	<!-- ���볡-->
	<!-- �Ʒ��� ����-->
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	<!-- �Ʒ��� ����-->

</body>
</html>