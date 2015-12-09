<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>User</title>
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
<link class="include" rel="stylesheet" type="text/css"
	href="/howstay/css/jquery.jqplot.min.css" />
<script type="text/javascript" src="/howstay/js/jquery-1.11.3.min.js"></script>
<script src="/howstay/js/highcharts.js"></script>
<script src="/howstay/js/exporting.js"></script>
<title>howstay</title>
<style type="text/css"></style>
<script>
	$(window).load(
			function() {
				$.ajax({
					url : '/howstay/jsp/admin/statistics/admonthlyReserve.do',
					dataType : "json",
					success : function(data) {
						$('#container').highcharts(
								{
									title : {
										text : '월별 예약통계',
										x : -20
									//center
									},
									subtitle : {
										text : '결제완료기준',
										x : -20
									},
									xAxis : {
										categories : data.categories
									},
									yAxis : {
										title : {
											text : ''
										},
										plotLines : [ {
											value : 0,
											width : 1,
											color : '#808080'
										} ]
									},
									tooltip : {
										valueSuffix : '건'
									},
									legend : {
										layout : 'vertical',
										align : 'right',
										verticalAlign : 'middle',
										borderWidth : 0
									},
									series : data.series
								});
					}
				});
			});
</script>
</head>
<body>
	${Alist}
	<!-- Header Start -->
	<jsp:include page="/jsp/admin/menubar.jsp"></jsp:include>
	<!-- Content Start-->
	<div id="contentBgColor">
		<div id="contentWrapper" class="frame">
			<div id="content">
				<div id="asideWrapper">
					<jsp:include page="/jsp/admin/statistics/statisticsCategory.jsp"></jsp:include>
				</div>
				<div id="bodyWrapper">
					<div id="content_body">
						<h2 class="content_title">월별 예약현황</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">통계</li>
							<li class="location_item">월별 예약통계</li>
						</ul>
						<br>
						<br>
						<br>
						<!-- <form action="/user/user.htm" method="get"
							class="search_box vspace49">
							<fieldset>
								<select name="fr_year" style="width: 80px;">
									<option value="2015" selected="selected">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
								</select> <select name="fr_month" style="width: 50px;">
									<option value="1" selected="selected">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select> ~ <select name="to_year" style="width: 80px;">
									<option value="2015" selected="selected">2015</option>
									<option value="2016">2016</option>
									<option value="2017">2017</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
								</select> <select name="to_month" style="width: 50px;">
									<option value="1" selected="selected">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select> <input type="submit" id="btnSubmit"
									class="btn_style btn_search" value="검색">
							</fieldset>
						</form> -->

						<div class="bbs_box" id="container">
							<div id="graph" style="width: 500px; height: 500px;"></div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer 시작-->
	<div id="footerBgColor">
		<div id="footer">
			<p>
				<span>Copyright ⓒ HOWSTAY. All Right Reserved.</span>
			</P>
		</div>
	</div>

</body>