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
function room_btnT(){
	$("#RoomMange").attr("disabled","disabled");
	$.ajax({
		url : "/howstay/jsp/admin/house/RoomInfo.do?h_no="+$('#h_noV').val(),
		dataType : "HTML",
		success : function(data) {
			$("#roomInfo").append(data);
		}
	});
	
}
	$(function(){
		if($("#job").val()=="show"){
			//alert("뭐임마");
			room_btnT();
			$("#RoomMange").focus();
			
		}
	
		/* $("#RoomMange").click(function() { */
		/* function room_btnT(){
			$("#RoomMange").attr("disabled","disabled");
			$.ajax({
				url : "/howstay/jsp/admin/house/RoomInfo.do?h_no="+$('#h_noV').val(),
				dataType : "HTML",
				success : function(data) {
					$("#roomInfo").append(data);
				}
			});
			
		} */
		/* ); */
		
		
	});
	function list_return(){
		document.list_frm.submit();
	}
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
					<h3><font color="Black"><B>${hBean.h_name }</B></font></h3>
                        </div>
					<br>
					<table width="90%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="130" />
                            <col width="130" />
						</colgroup>
						<tr>
							<!-- <th class="info" scope="col" class="fir">이미지</th> -->
							<th class="info" scope="col">HOUSE IMG</th>
                             <th class="info" scope="col">HOUSE NO</th>
                             <td id="h_no">${hBean.h_no}</td>
                         
                        </tr>
                        <tr>
                         <td id="hr_file" class="fir" rowspan="6">
                         <img src = '/howstay/upload/house/${hBean.h_file}' width="250" height="250"/>
                          </td>
                          <th class="info" scope="col">HOUSE CATEGORY</th> 
                          <td id="h_category" colspan="3">${hBean.h_category}</td>
                          
                        </tr>
                       
                        <tr>
                          <th class="info" scope="col">HOUSE OWNER</th>
                          <td id="h_aname">${hBean.h_aname}</td>
                        </tr>
                        <tr>
                          <th class="info" scope="col">E-MAIL</th>
                          <td id="h_email">${hBean.h_email }</td>
                        </tr>
                      	<tr>
                      	<th class="info" scope="col">TEL</th>
                      <td id="h_tel">${hBean.h_tel }</td>
                      	</tr>
                        <tr>
                          <th class="info" scope="col">HOUSE ADDRESS</th>
                          <td id="h_address">${hBean.h_address }</td>
                        </tr>         
                      	 <tr>
                      	<th class="info" scope="col">HOUSE LEVEL</th>
                      <td id="h_level">${hBean.h_level }</td>
                      	</tr>
					</table>
					<br>
					
					
					</div>
				</div>
			</div>
		</div>
		</div>




						<%-- <div class="bbs_box">
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">HOUSE NO</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cn_title}</dd>
								<dd class="bbs_cell bbs_data_cell strong_r">${bean.cn_title}</dd>
								<dt class="bbs_cell bbs_field_cell">HOUSE NAME</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cn_regdate}</dd>
								<dd class="bbs_cell bbs_data_cell">${bean.cn_regdate}</dd>
							</dl>

							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">HOUSE LEVEL</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cn_file}</dd>
								<dt class="bbs_cell bbs_field_cell">HOUSE TEL</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cn_hit}</dd>
							</dl>

							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">OWNER NAME</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.a_name}</dd>
								<dt class="bbs_cell bbs_field_cell">OWNER E-MAIL</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cn_hit}</dd>
							</dl>
							
							<dl class="bbs_field_row bbs_content_size">
								<dt class="bbs_cell bbs_field_cell">HOUSE IMG</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cn_contents}</dd>
								<dt class="bbs_cell bbs_field_cell">OWNER E-MAIL</dt>
								<dd class="bbs_cell bbs_data_half_cell">${bean.cn_hit}</dd>
							</dl>
						</div> --%>
					<form name="list_frm" action="/howstay/jsp/admin/house/hlist.do" method="post">
						<div class="rtl vspace10">
						<button type="button" id="RoomMange" onclick="javascript:room_btnT()" value="Room management" class="btn btn-default">Room Management</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<a class="btn_style btn_del" href="#">삭제</a>
							<a class="btn_style btn_edit" href="/howstay/jsp/admin/house/houseInfoEdit.do?h_no=${param.h_no}">수정</a>
								<a class="btn_style btn_list" href="#" onclick="javascript:list_return()">목록</a>
<%-- 								<a class="btn_style btn_list" href="/howstay/jsp/admin/house/hlist.do?hsearch=${hsearch}&hhsear=${hhsear}">목록</a> --%>
								<input type="hidden" id="hsearch" name="hsearch" value="${hsearch}"/>
								<input type="hidden" id="hhsear" name="hhsear" value="${hhsear}"/>
								<input type="hidden" id="h_noV" value="${hBean.h_no}">
								<input type="hidden" id="h_catee" value="${hBean.h_category}">
								
						</div>
					</form>
					<input type="hidden" id="job" value="${job}">
						<!-- <div class="bbs_box" style="border-top: 1px double #d1d1d1;">
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">이전글</dt>
								<dd class="bbs_cell bbs_data_cell">[공지] 공지사항 입니다.</dd>
							</dl>
							<dl class="bbs_field_row">
								<dt class="bbs_cell bbs_field_cell">다음글</dt>
								<dd class="bbs_cell bbs_data_cell">[공지] 공지사항 입니다.</dd>
							</dl>
						</div> -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="roomInfo">
	
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