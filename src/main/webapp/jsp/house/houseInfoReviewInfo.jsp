<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<script charset="UTF-8" type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script charset="UTF-8" type="text/javascript">
$(function(){
	$.ajax({
		url:'/howstay/jsp/house/houseInfoReviewInfoH.do?hr_no='+$('#hr_noHint').val()+'&hflag='+$('#hr_flag').val(),
		dataType:"JSON",
		success:function(data){
			$.each(data, function(i, item){
				$("#hr_no").append(item.hr_no);
				$("#m_name").append(item.m_name);
				$("#hr_title").append(item.hr_title);
				$("#hr_contents").append(item.hr_contents);
				$("#hr_regdate").append(item.hr_regdate);
				$("#hr_hit").append(item.hr_hit);
				$("#hr_score").append(item.hr_score);
				$("#h_like").append(item.h_like);
				/* $("#hr_file").append("<img src='/howstay/upload/houseReview/"+item.hr_file+"' width='100%' height='100%'/>"); */
			});
		}
	});
});

function funcR(){
	$(function(){
		$.ajax({
			url:'/howstay/jsp/house/houseInfoReview.jsp',
			dataType:"html",
			success:function(data){
				//alert(data);
				$("#ajax_div").html(data);
			}
		});
	});
}
///// cookie test - start

 // 쿠키 저장 함수
    function setCookies(cookieName, cookieValue, expireDays) {
        var expireDate = new Date();
        expireDate.setDate(expireDate.getDate() + expireDays);  // 넘겨온 일자 값: 30
        document.cookie += cookieName + "=" + cookieValue + "; path=/; expires=" + expireDate.toGMTString();     
        alert("좋아요 눌렀습니다. Thank you!!");   
	}


/////cookie test - end
function funcRA(){
	$(function(){
		if($('#hr_m_id').val()==null||$('#hr_m_id').val()==''){
			//$("#h_like").removeAttr("disabled");
			var obj = document.id_frm;
			obj.submit();
		}else{
			///
			var cook = document.cookie;
			var idx = cook.indexOf($('#hr_m_id').val()+"_"+$('#hr_noHint').val(), 0); 
			//alert($('#hr_m_id').val());
			//alert(idx);
			alert(cook);
			var val = "";
			
			if (idx != -1) { //cookie값이 일치하면
	            cook = cook.substring(idx, cook.length);
	            begin = cook.indexOf("idid="+$('#hr_m_id').val()+"_"+$('#hr_noHint').val(), 0) + 1;
	            //alert(begin);
	            end = cook.indexOf("+", begin);
	            //alert(end);
	            val = unescape(cook.substring(begin, end));
	            //alert(val);
			}
			
			if(val==$('#hr_m_id').val().trim()+"_"+$('#hr_noHint').val().trim()){//쿠키 완전 일치
	        	alert("이미 좋아요 눌렀습니다.");
				//alert(val);
	        }else{//쿠기값 없으면 쿠키 저장해주자.
	        	setCookies("idid",$('#hr_m_id').val()+"_"+$('#hr_noHint').val()+'+',30);
				$.ajax({
					url:'/howstay/jsp/house/houseInfoReviewLike.do?hr_no='+$('#hr_noHint').val()+'&hflag=0',
					dataType:"html",
					success:function(data){
						//alert(data);
						$("#ajax_div").html(data);
					}
				});
	        }
			
		}
	});
}

</script>
<link href="/howstay/css/bootstrap.css" rel="stylesheet">
<link href="/howstay/css/style.css" rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<div id="container" align="center">
				 <div class="col-lg-12" align="center">
                    <div class="panel panel-default" align="center">
                    <div id="mini_container" align="center">
                        <div class="panel-heading" align="center">
						<h1><B>게시판 상세보기</B></h1>
                        </div>
					<br>
					<table width="90%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="400" />
                            <col width="100" />
						</colgroup>
						<tr>
							<!-- <th class="info" scope="col" class="fir">이미지</th> -->
							<th class="info" scope="col">내용</th>
                             <th class="info" scope="col">글번호</th>
                             <td id="hr_no">${Rbean.hr_no}</td>
                         
                        </tr>
                        <tr>
              				<td rowspan="6" id="hr_contents" height="200" width="60%">${Rbean.hr_contents}</td>
                         <!--  <td id="hr_file" class="fir" rowspan="6"> -->
                          <%-- <img src = '/howstay/image/HReview/${Rbean.hr_file}' width="400" height="400"/> --%>
                          <!-- </td> -->
                          <th class="info" scope="col">작성자</th> 
                          <td id="m_name">${Rbean.m_name}</td>
                          
                        </tr>
                        <tr>
                          <th class="info" scope="col">제목</th>
                          <td id="hr_title">${Rbean.hr_title}</td>
                        </tr>
                        <%-- <tr>
                          <th class="info" scope="col">내용</th>
                          <td id="hr_contents" height="200" width="400">${Rbean.hr_contents}</td>
                        </tr> --%>
                        <tr>
                          <th class="info" scope="col">등록일</th>
                          <td id="hr_regdate">${Rbean.hr_regdate }</td>
                        </tr>
                        <tr>
                          <th class="info" scope="col">조회수</th>
                          <td id="hr_hit">${Rbean.hr_hit }</td>
                        </tr>         
                      	<tr>
                      	<th class="info" scope="col">별점</th>
                      <td id="hr_score">${Rbean.hr_score }</td>
                      	</tr>
					</table>
					<br>
					
					<div class="col-md-12" align="center">
					<div class="btnSet clfix mgb15" align="center">
					<form name="id_frm" action="/howstay/jsp/login_join/login.jsp">
					<button type="button" class="btn btn-default btn-lg glyphicon glyphicon-thumbs-up" id="h_like" name="h_like"
						onclick="javascript:funcRA()">${bean.h_like}</button>
						<button type="button" class="btn btn-default btn-lg ">
							<a href="javascript:funcR()" class="glyphicon glyphicon-th-list" role="button"><B><font size="4em">목록</font></B></a>
							<input id="hr_noHint" type="hidden" value="${param.hr_no}">
							<input id="hr_flag" type="hidden" value="${param.hflag}">
							<input id="hr_m_id" type="hidden" value="${m_id}">
							<%-- <input id="hr_m_ids" type="hidden" value="${m_ids}"> --%>
						</button>
						</form>
							
						</div>
					</div>
						<br><br><br>
					</div>
				</div>
			</div>
		</div>
		<br><br><br><br><br><br>
	</div>
</body>
</html>