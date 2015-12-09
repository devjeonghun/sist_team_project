<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/howstay/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="/howstay/css/notice.css">
<title>Insert title here</title>
<script type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(window).load(function(){
	var total=$("#cntlast").attr("class");
	var page=Math.ceil(total/10);
		for(var i=1;i<=page;i++){
			/* console.log(typeof(page)); */
			$("#pageyo").append("<input type='button' class='btn btn-default' value='"+i+"'>");
	}
		
		$("input[type='button']").each(function(i,dom){
			$("input[type='button']").eq(i).click(function(){
				console.log('click'+this.value);
				var endview=this.value*10;
				var startview=this.value*10-9;
				for(var j=0;j<=total;j++){
					$("#view"+j).css("display","none");
				}
				for(var j=startview;j<=endview;j++)
					$("#view"+j).css("display","");
			});
		});
		//
		/* $(function(){
			if($('#pageCk').val()!=null){
				
			}
		}) */
		
});
$(function(){
	/* $(document).on("keyup", "input:text[numberOnly]", function() {$(this).val( $(this).val().replace(/[^0-9]/gi,"") );}); */
	
	$("#hhsear").change(function() {
		$("#hsearch").val('');
		$("#hsearch").focus();
		
		if($("#hhsear").val()=="hh_category"){
 			$("#Search_option").html("<select id='hsearch' name='hsearch' style='width:150px;'><option value='호텔'>호텔</option><option value='펜션'>펜션</option>"+
 					"<option value='게스트하우스'>게스트하우스</option><option value='모텔'>모텔</option><option value='B&B'>B&B</option></select>");					
		}else{
			$("#Search_option").html("<input type='text' onkeypress='onlyNum()' id='hsearch' name='hsearch' class='search_input'/>");
		}
	});
	
	$("#btnSubmit").click(function() {
		if($("#hhsear").val()=="hh_no") {
			if(!($.isNumeric($("#hsearch").val()))){
				alert('Only Number!');
				$("#hsearch").val('');
				$("#hsearch").focus();
			} else {
				document.searchFrm.submit();
			}
		}
		document.searchFrm.submit();
	});
	
});

 </script>

<script type="text/javascript">
function funcInfo(h_no){
	window.open("/howstay/aHouse/adminHouseInfo.action?h_no=" + h_no, "id", "left=300, top=100, width=800, height=500");
}
</script>
 
</head>

<body>
	<!-- Header Start -->
	<jsp:include page="/jsp/admin/menubar.jsp"></jsp:include>
	<!-- Content Start-->
	<div id="contentBgColor" >
		<div id="contentWrapper" class="frame">
			<div id="content" >
				<%-- <jsp:include page="boardCategory.jsp"></jsp:include> --%>
				<div id="bodyWrapper">
					<div id="content_body">
						<h2 class="content_title">하우스 LIST</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">하우스관리</li>
						</ul>


						<form action="/howstay/jsp/admin/house/hlist.do" method="post"
							class="search_box vspace49" name="searchFrm" >
							<fieldset>
								<select id="hhsear" name="hhsear">
									<option value="hh_no" selected="selected">하우스 번호</option>
									<option value="hh_name">하우스 이름</option>
									<option id="hh_cate" value="hh_category">하우스 카테고리</option>
									<option value="hh_address">하우스 주소</option>
								</select>
								<span id="Search_option">
									<input type="text" onkeypress="onlyNum()" id="hsearch" name="hsearch" class="search_input"/> 
								</span>
								<input type="button" id="btnSubmit" class="btn_style btn_search" value="검색"/>
								<a href="/howstay/jsp/admin/house/houseInfoEdit.do?h_no=0"><input type="button" id="addHouse" style="margin-top: -5px;" class="btn_style btn_add" value="하우스추가"/></a>
									<input type="hidden" id="page" name="page" value="1">
							</fieldset>
						</form>
<br>


		<div id="wrapper">
			<div id="container" align="center">
				 <div class="col-lg-12" align="center">
                    <div class="panel panel-default" align="center">
                    	<div id="mini_container" align="center">
                       
				
					<table width="100%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="13%" />	
                            <col width="27%" />
                            <col width="20%" />
                            <col width="15%" />
                            <col width="25%" />
						</colgroup>
						
						<tr class="bbs_row bg_hl">
								<th style="text-align: center">HOUSE NO</th>
								<th style="text-align: center">HOUSE NAME</th>
								<th style="text-align: center">CATEGORY</th>
								<th style="text-align: center">OWNER NAME</th>
								<th style="text-align: center">HOUSE ADDRESS</th>
						</tr>
						
						<c:forEach var="i" items="${list}" varStatus="cnt">
							<c:choose>
								<c:when test="${cnt.count<=10 }">
							<tr align="center" style="display:;" id="view${cnt.count}">
							<input type="hidden" value="${cnt.count}" id="cnt">
							</c:when>
							<c:when test="${cnt.last }">
							<tr align="center" style="display:none;" id="view${cnt.count}">
							<input type="hidden" class="${cnt.count}" id="cntlast">
							</c:when>
							<c:otherwise>
								<tr align="center" style="display:none;" id="view${cnt.count}">
								<input type="hidden" value="${cnt.count}" id="cnt">	
									</c:otherwise>
								</c:choose>
									<td style="text-align: center">${i.h_no}</td>
									<td style="text-align: center">
									<a href="/howstay/jsp/admin/house/houseInfo.do?h_no=${i.h_no}">${i.h_name}</a>
									<%-- <a href="" onclick="funcInfo('${i.h_no}')">${i.h_name}</a> --%>
									</td>
									<td style="text-align: center">${i.h_category}</td>
									<td style="text-align: center">${i.h_aname}</td>
									<td style="text-align: center">${i.h_address}</td>
								</tr>									
							</c:forEach>
					</table>
					
				<div id="pageyo">				
				</div>
					</div>
				</div>
			</div>
		</div>
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
</html>