<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/howstay/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
<title>Insert title here</title>
<script type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script type="text/javascript">

function room_edit(h_no, r_no){
	//alert(h_no+" to "+r_no);
	$.ajax({
		url:"/howstay/jsp/admin/house/RoomEdit.do?h_no="+h_no+"&r_no="+r_no,
		dataType:"json",
		success:function(data){
			$("#r_no").val(data.r_no);
			$("#r_concep").val(data.r_concep);
			$("#r_price").val(data.r_price);
			$("#r_count").val(data.r_count);
			$("#r_option").val(data.r_option);
		}
	});
}
//
$(function() { // span태그의 id가 smd인 것의 자식태그네임중 a태그 클릭시 발생
	$.ajax({
		url : "/howstay/jsp/admin/house/RoominfoJ.do?h_no=" + $('#h_noV').val(),
		dataType : "json",
		success : function(data) {
			$.each(data, function(i, item){
				$("#roomBody").append("<tr><td>"+item.r_no+"</td><td><img src='/howstay/upload/room/"+item.r_file+"' width='200' hegiht='200'"+
						"</td><td>"+item.r_concep+"</td><td>"+item.r_price+"</td>"+
						"<td>"+item.r_count+"</td><td>"+item.r_option+"</td><td><button type='button' onclick='javascript:room_edit("+item.h_no+","+item.r_no+")' class='btn btn-default'>수정</button><button type='button' class='btn btn-default'>삭제</button></td></tr>")
			});
		}
	});
	//alert($("#h_catee").val());
	if($("#h_catee").val().trim()=="호텔"){
		$("#r_concep_td").html("<select id='r_concep' name='r_concep' style='width:150px;'><option value='스위트룸'>스위트룸</option><option value='디럭스룸'>디럭스룸</option>"+
			"<option value='슈페리어룸'>슈페리어룸</option><option value='스탠다드룸'>스탠다드룸</option></select>");
	}else if($("#h_catee").val()=="펜션"){
		$("#r_concep_td").html("<select id='r_concep' name='r_concep' style='width:150px;'><option value='파티룸'>파티룸</option><option value='가족룸'>가족룸</option>"+
			"<option value='커플룸'>커플룸</option><option value='싱글룸'>싱글룸</option></select>");
		$("#r_concep").change(function(){
			//alert($("#r_concep").val());
			if($("#r_concep").val()=="싱글룸"){
				$("#r_count_td").html("<select id='r_count' name='r_count' style='width:150px;'><option value='1'>1</option></select>")
			}else{
				
				$("#r_count_td").html("<select id='r_count' name='r_count' style='width:150px;'><option value='1'>1</option><option value='2'>2</option><option value='4'>4</option>"+
				"<option value='6'>6</option><option value='8'>8</option><option value='10'>10</option></select>")
			}
		})
		//alert($("#r_concep").val());
		
	}else{
		$("#r_concep_td").html("<select id='r_concep' name='r_concep' style='width:150px;'><option value='2인실'>2인실</option><option value='4인실'>4인실</option>"+
			"<option value='6인실'>6인실</option><option value='8인실'>8인실</option></select>");
		$("#r_count").val(2);
		$("#r_count").attr("disabled","disabled");
		$("#r_concep").change(function(){
			//alert($("#r_concep").val());
			if($("#r_concep").val()=="2인실"){
				$("#r_count_td").html("<select id='r_count' name='r_count' style='width:150px;'><option value='2'>2</option></select>")
			}else if($("#r_concep").val()=="4인실"){
				$("#r_count_td").html("<select id='r_count' name='r_count' style='width:150px;'><option value='4'>4</option></select>")
			}else if($("#r_concep").val()=="6인실"){
				$("#r_count_td").html("<select id='r_count' name='r_count' style='width:150px;'><option value='6'>6</option></select>")
			}else if($("#r_concep").val()=="8인실"){
				$("#r_count_td").html("<select id='r_count' name='r_count' style='width:150px;'><option value='8'>8</option></select>")
			}
		})
	}
	
});
	
	function roomIn_btn(){
		$("#r_concep").val($("#r_concep").val())
		$("#r_count").val($("#r_count").val())
		
		if(!($.isNumeric($("#r_price").val()))){
				alert('ROOM PRICE is Only Number!');
				$("#r_price").val('');
				$("#r_price").focus();
		} else {		
			document.frm.submit();
		}
		
	}

</script>

</head>
<body>
<div align="center">
	<%-- <div id="container">
		<div class="col-lg-7">
			<div class="panel panel-default" align="center">

						<table width="50%" class="table table-hover table-condensed"
							align="center">
							<caption></caption>
							<colgroup>
								<col width="95" />
								<col />
							</colgroup>
							<tbody>
								<tr>
									<th>ROOM NO</th>
									<td><input type="text" name="data" id="data"
										class="inputText" size="30" />
										<button type="button">검색</button></td>
								</tr>
							</tbody>
						</table>
				
			</div>
		</div>
	</div>
 --%>
	<div id="container">
		<div align="center" class="col-lg-7">
			<div class="panel panel-default" align="center">
				<div id="mini_container" align="center">

					<table width="50%" class="table table-hover table-condensed">
						<colgroup>
							<col width="30" />
							<col width="100" />
							<col width="100" />
							<col width="100" />
							<col width="100" />
							<col width="150" />
							<col width="80"/>
						</colgroup>
						<thead>
							<tr>
								<th scope="col" class="fir">NO</th>
								<th scope="col">IMG</th>
								<th scope="col">CONCEP</th>
								<th scope="col">PRICE</th>
								<th scope="col">인원수</th>
								<th scope="col">OPTION</th>
								<th scope="col">Edit/Del</th>
							</tr>
						</thead>

						<tbody id="roomBody">
							<%-- <c:forEach items="${rList}" var="i" varStatus="cnt">
								<tr>
									<td class="fir">${cnt.count}</td>
									<td>${i.r_no}</td>
									<td><a
										href="입력하시오.action?h_no=${i.h_no }&r_no=${i.r_no}&job=info&page=3">
											<img src="/upload/room/${i.r_file}" width="50" height="50" />
									</a></td>
									<td>${i.r_concep }</td>
									<td>${i.r_price}</td>
									<td>${i.r_count}</td>
									<td>${i.r_option}</td>
									<td><span class="button" id="smd"><a href="#"
											id="${i.pk}">MOD</a></span> <span class="button" id="sel"><a
											href="#" id="${i.pk }">DEL</a></span></td>
								</tr>
							</c:forEach> --%>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<div id="container" class="col-lg-4">
		<div align="center">
			<div class="panel panel-default" align="center">
				<div id="mini_container" align="center">

					<div class="tbWrapRt" id="dform">
						<form action="/howstay/jsp/admin/house/Roominsert.do" method="post" name="frm"
							enctype="multipart/form-data">
							<table width="50%" class="table table-hover table-condensed"
								align="center">
								<caption></caption>
								<colgroup>
									<col width="150" />
									<col />
								</colgroup>
								<tbody>
									<c:choose>
									<c:when test="${r_no eq null}">
										<input type="hidden" name="h_no" id="h_no" value="${h_no}"/>
										<input type="hidden" id="r_no" name="r_no" value="0" size="30"/>
									</c:when>
									<c:otherwise>
									<tr>
										<th>ROOM NO</th>
										<td><input type="hidden" name="h_no" id="h_no" value="${h_no}"/> <!-- h_no 임시저장소 -->
											<input type="text" id="r_no" name="r_no" value="${r_no}" size="30" readonly="readonly"/>
											</td>
									</tr>
									</c:otherwise>
									
									</c:choose>
									<tr>
										<th>ROOM CONCEP</th>
										<td id ="r_concep_td">
											<!-- <input type="text" name="r_concep" class="inputText" size="30" /> -->
										
										</td>
									</tr>
									<tr>
										<th>ROOM PRICE</th>
										<td class="alignM"><input type="text" name="r_price"
											id="r_price" class="inputText" size="30" /></td>
									</tr>
									<tr>
										<th>인원수</th>
										<td id="r_count_td">
										<!-- <input type="text" name="r_count" class="inputText" size="30" /> -->
										<select id="r_count" name="r_count" style="width: 200px;">
                          					<option value="1">1</option>
                          					<option value="2">2</option>
                          					<option value="4">4</option>
                          					<option value="6">6</option>
                          					<option value="8">8</option>
                          					<option value="10">10</option>
                          				</select>
										</td>
									</tr>
									<tr>
										<th>option</th>
										<td><input type="text" id="r_option" name="r_option" class="inputText"
											size="30" /></td>
									</tr>
									<tr>
										<th>IMG</th>
										<td><input type="file" name="file" class="inputText"
											size="30" /></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				<c:choose>
					<c:when test="${r_no eq null}">
						<div class="agr mgb15" align="right" style="margin-right: 100px">
							<input type="button" class="btn btn-default" onclick="javascript:roomIn_btn()" value="등록" />
						</div>							
					</c:when>
					<c:otherwise>
						<div class="agr mgb15" align="right" style="margin-right: 100px">
							<input type="button" class="btn btn-default" onclick="javascript:roomIn_btn()" value="수정" />
						</div>							
					</c:otherwise>
					</c:choose>
	
				
					<br>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>