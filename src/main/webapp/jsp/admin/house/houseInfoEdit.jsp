<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/howstay/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
<title>Insert title here</title>
<script type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
function funcInS(){
	$("#h_category").val($("#h_category1").val());
	$("#h_level").val($("#h_level1").val());
	//alert($("#h_category").val());
	document.InsertFrm.submit();
}

$(function(){
	var obj=document.getElementById("h_category1");
	var val = $("#h_category").val();
	for(i=0;i<obj.length;i++){
		if(obj[i].value==val){
			obj[i].selected=true;
			break;
		}else{
			obj[0].selected=true;
		}
	}
	
	var obj=document.getElementById("h_level1");
	var val = $("#h_level").val();
	for(i=0;i<obj.length;i++){
		if(obj[i].value==val){
			obj[i].selected=true;
			break;
		}else{
			obj[0].selected=true;
		}
	}
	
	/* $("#h_category").value='펜션'; */
});

</script>

</head>
<body>
	<!-- Header Start -->
	<jsp:include page="/jsp/admin/menubar.jsp"></jsp:include>
	<!-- Content Start-->
	<div id="contentBgColor">
		<div id="contentWrapper" class="frame">
			<div id="content">
				<jsp:include page="boardCategory.jsp"></jsp:include>
				<div id="bodyWrapper">
					<div id="content_body">
						<h2 class="content_title">하우스 Info</h2>
						<ul class="location_box">
							<li class="location_item">Admin</li>
							<li class="location_item">하우스관리</li>
						</ul>
						<div class="content_space"></div>

						<div id="wrapper">
		<div id="container" align="center">
				 <div class="col-lg-12" align="center">
                    <div class="panel panel-default" align="center">
                    <div id="mini_container" align="center">
                        <div class="panel-heading" style="background-color: LightSteelBlue;" align="center">
                        <c:choose>
                        <%-- <c:when test="${Inflag eq 1}"> --%>
						<c:when test="${param.h_no eq 0}">
					<h3><font color="Black"><B>Do You Want Insert?</B></font></h3>
						</c:when>
						<c:otherwise>
					<h3><font color="Black"><B>Do You Want Edit?</B></font></h3>
						</c:otherwise>
					</c:choose>
                        </div>
					<br>
			<form name="InsertFrm" action="/howstay/jsp/admin/house/houseInfoInCK.do" method="post"  enctype="multipart/form-data">
					<table width="70%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="150" />
						</colgroup>
						<tr>
                             <th class="info" scope="col">HOUSE NAME</th>
                             <td><input id="h_name" name="h_name" type="text" value="${hBean.h_name }" size="50">
                             
                             <c:choose>
                             	<c:when test="${param.h_no eq 0}">
                             		<input id="h_no" name="h_no" type="hidden" value="${param.h_no }">
                             	</c:when>
                             	<c:otherwise>
                             		<input id="h_no" name="h_no" type="hidden" value="${hBean.h_no }">
                             	</c:otherwise>
                             </c:choose>
                             
                             </td>
                        </tr>
                        <tr>
                          <th class="info" scope="col">HOUSE CATEGORY</th> 
                          <%-- <td><input id="h_category" name="h_category" type="text" value="${hBean.h_category }"  size="50"></td> --%>
                          <td id="hsearch_td">
                          	<select id="h_category1" name="h_category1" style="width: 260px;">
                          		<option value="호텔">호텔</option>
                          		<option value="펜션">펜션</option>
                          		<option value="게스트하우스">게스트하우스</option>
                          		<option value="모텔">모텔</option>
                          		<option value="B&B">B&B</option>
                          	</select>
                          	<input type="hidden" id="h_category" name="h_category" value="${hBean.h_category}">
                          </td>
                        </tr>
                       
                        <tr>
                          <th class="info" scope="col">HOUSE OWNER</th>
                          <td><input type="text" id="h_aname" name="h_aname" value="${hBean.h_aname}"  size="50"></td>
                        </tr>
                        <tr>
                          <th class="info" scope="col">E-MAIL</th>
                          <td><input type="text" id="h_email" name="h_email" value="${hBean.h_email}"  size="50"></td>
                        </tr>
                      	<tr>
                      	<th class="info" scope="col">TEL</th>
                      <td><input type="text" id="h_tel" name="h_tel" value="${hBean.h_tel}"  size="50"></td>
                      	</tr>
                        <tr>
                          <th class="info" scope="col">HOUSE ADDRESS</th>
                          <td><input type="text" id="h_address" name="h_address" value="${hBean.h_address}"  size="50"></td>
                        </tr>         
                      	 <tr>
                      	<th class="info" scope="col">HOUSE LEVEL</th>
                      <td>
                      	<select id="h_level1" name="h_level1" style="width: 260px;">
                          		<option value="1">1</option>
                          		<option value="2">2</option>
                          		<option value="3">3</option>
                          		<option value="4">4</option>
                          		<option value="5">5</option>
                          	</select>
                          	<input type="hidden" id="h_level" name="h_level" value="${hBean.h_level}" size="50">
                      </td>
                      	</tr>
                        <tr>
                          <th class="info" scope="col">HOUSE LAT</th>
                          <td><input type="text" id="h_lat" name="h_lat" value="${hBean.h_lat}"  size="50"></td>
                        </tr>         
                        <tr>
                          <th class="info" scope="col">HOUSE LONG</th>
                          <td><input type="text" id="h_long" name="h_long" value="${hBean.h_long}"  size="50"></td>
                        </tr>         
                      	 <tr>
                      	<th class="info" scope="col" id="file">IMG FILE</th>
						<td><input type="file" name="file" id="file"></td>
                      	</tr>
					</table>
			</form>
					<br>
					
					</div>
				</div>
			</div>
		</div>
</div>

						<div class="rtl vspace10">
							
							<c:choose>
							<%-- <c:when test="${Inflag eq 1}"> --%>
							<c:when test="${param.h_no eq 0}">
							<a class="btn_style btn_add" href="javascript:funcInS()">등록</a>
							<a class="btn_style btn_cancel" href="/howstay/jsp/admin/house/hlist.do?hsearch=&hhsear=">취소</a>
							</c:when>
							<c:otherwise>
							<a class="btn_style btn_edit" href="javascript:funcInS()">수정</a>
							<a class="btn_style btn_cancel" href="/howstay/jsp/admin/house/houseInfo.do?h_no=${hBean.h_no}">취소</a>
							</c:otherwise>
							</c:choose>
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
</html>ml>