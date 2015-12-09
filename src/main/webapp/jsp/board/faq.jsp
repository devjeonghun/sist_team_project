<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>HowStay</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
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
			<div class="sub_title" id="maintext" style="opacity:0">
				<div class="col-md-8">
					<h1>���� �ϴ� ���� </h1>
					</div>
			</div>
	</div>
	<div class="row" id="subtext" style="display:none;">
		<div class="col-md-2">
		<h2>���� �ϴ� ����</h2>
		</div>				
	</div>
	<br/>
	</div>
	<div class="row">

		<div class="col-md-12">
	<hr/>
						<center>
						<div class="panel panel-default">
		 					<table class="table table-hover table-condensed">
								<colgroup>
									<col width="10%" />
									<col width="75%" />
									<col width="15%" />
								</colgroup>
							<thead>
							<tr>
								<th scope="col" style="text-align: center;">��ȣ</th>
								<th scope="col">FAQ</th>
								<th scope="col">�ۼ���</th>
							</tr>
							</thead>
							
							<tbody>
							<c:forEach var="i" items="${list}">
								<tr>
									<td class="fir" rowspan="2">${i.cf_no}</td>
									<td class="fir" style="text-align: left;">
										<span class="glyphicon glyphicon-question-sign" aria-hidden="true"></span>
										${i.cf_title}
									</td>
									<td class="fir" rowspan="2">������</td>
								</tr>
								<tr>
									<td class="fir" style="text-align: left;">
										<span class="glyphicon glyphicon-ok-sign" aria-hidden="true"></span>
										${i.cf_contents}
									</td>
								</tr>
							</c:forEach>
							</tbody>
							
							</table>
								<!-- <nav>
				  		 			<form class="navbar-form" role="search">
						  				<ul class="pagination">
						    				<li>
						      					<a href="#" aria-label="Previous">
						        				<span aria-hidden="true">&laquo;</span>
						      					</a>
						    				</li>
										    <li><a href="#">1</a></li>
										    <li><a href="#">2</a></li>
										    <li><a href="#">3</a></li>
										    <li><a href="#">4</a></li>
										    <li><a href="#">5</a></li>
										    <li>
										      <a href="#" aria-label="Next">
										        <span aria-hidden="true">&raquo;</span>
										      </a>
										    </li>
										    <li>
										       <input type="text" class="form-control" placeholder="Search">
						        		       <button type="submit" class="btn btn-default">�˻�</button>
						        		    </li>
						  				</ul>
						 			</form>
								</nav> -->
			 				</div>
						</center>
					
		</div>
			
	</div>
	<hr/>
	<br/>
	<br/>
	<br/>

	<!-- �Ʒ��� ����-->
	
<jsp:include page="/jsp/footer.jsp"></jsp:include>
	
	<!-- �Ʒ��� ����-->

</body>
</html>