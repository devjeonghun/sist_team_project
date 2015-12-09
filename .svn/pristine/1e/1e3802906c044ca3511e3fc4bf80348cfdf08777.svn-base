<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<!-- 부트스트랩 동작관련 meta태그입니다  반응형페이지에서는 무조건 삽입되어야합니다-->
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>how stay</title>
<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
</head>
<body style="background-color:#f5f5f5;">


	<jsp:include page="/jsp/nav.jsp"></jsp:include>
	
<script type="text/javascript">   
   $(function(){
   	document.getElementById("sel_rcount").value=document.getElementById("r_count").value;
   	});  
</script>
   <!-- include가 디스패처 방식이라 따로 페이지에 css,스크립트 설정안해주셔도 됩니다 -->
   <!-- 상단바랑 carousel을 맞춰주기 위해 들어간 br임 -->
   <div class="container-fluid">
	<div class="visual2">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext2" style="opacity:0">
				<div class="text_b">
					
					<form action="/howstay/jsp/house/houseSearch.do" name="searchFrm" method="post">
                   <div class="input-group" style="margin: 0px auto;">
 					  	<input type="text" id="keyword" name="keyword" value="${keyword}"class="form-control input" placeholder="목적지, 호텔, 랜드마크" />
						  <span class="input-group-btn" style="width:0px;"></span>
						  <input type="text" name="st" id="st" value="${st}" class="form-control input" placeholder="체크인" style="margin-left:-1px; text-align: center;" />
						    <span class="input-group-btn" style="width:0px;"></span>
						    <input type="text" name="en" id="en" value="${en}" class="form-control input" placeholder="체크아웃" style="margin-left:-2px; text-align: center;" />
						    <span class="input-group-btn" style="width:0px;"></span>
					 		<select class="form-control input" id="sel_rcount" onchange="change_Rcount()" style="margin-left:-3px; text-align: center; width: 120px;">
                           <option selected="selected">인원 수</option>
                           <option value="1">1명</option>
                           <option value="2">2명</option>
                           <option value="3">3명</option>
                           <option value="4">4명</option>
                           <option value="5">5명</option>
                           <option value="6">6명</option>
                           <option value="7">7명</option>
                           <option value="8">8명</option>
                           <option value="9">9명</option>
                           <option value="10">10명</option>
                        </select>
                        <span class="input-group-btn" style="width:0px;"></span>
                        <button class="form-control btn" onclick="keywordSearch()" type="button" style="color:white; background-color: #ff5a5f;">검 색</button>
                        <input type="hidden" id="r_count" name="r_count" value="${r_count }">
                        <input type="hidden" id="ajax" value="ajax">
					   </div>  
            </form>
					</div>
			</div>
	</div>
	</div>
<div class="row">
	<div class="col-md-6"  style="height:760px;overflow-y:scroll;">
	<hr>
		<div id="hotelist"></div> 
		<div id="hotelsub">
            <div id="hotelist_in" class="col-md-6" style="text-align: center;position: relative;">
            	<a href=""><img class="img-rounded" src="" style="width:350px;height: 150px;" alt=""></a>
               	<div class="innertext" style="text-align: center; font-size:15pt;opacity:1; position: inherit; margin:-28px auto 28px;color:white; background-color: rgba(0,0,0,0.6); width:100px;">                    
                  </div> 
                <div class="info"></div>                           
            </div>            
        </div>
	</div>
	<div class="col-md-6 img-responsive" id="map" style="height:760px;">
	</div>
</div>
						
<script type="text/javascript">
$(window).load(function(){
	var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: new google.maps.LatLng("37.498345", "127.039071"),
        mapTypeId: google.maps.MapTypeId.ROADMAP
      });
	var param="st="+$('#st').val()+"&en="+$('#en').val()+"&r_count="+$('#r_count').val()+"&keyword="+$('#keyword').val()+"&ajax=ajax";
	$.ajax({
		type:'post',
		data: param,
		url:'/howstay/jsp/house/houseSearch.do',
		dataType:"json",
		success:function(data){		//콜백함수
			  googlemap(data);
			  $("#hotelist").html(" ");
		$(data).each(function(cnt){
			if($('#st').val()!='' && $('#en').val()!=''){
				$("#hotelist_in a").attr("href","/howstay/jsp/house/houseInfo.do?h_no="+this.h_no+"&page=1&st="+$('#st').val()+"&en="+$('#en').val());	
			}else if($('#st').val()=='' && $('#en').val()==''){
				$("#hotelist_in a").attr("href","/howstay/jsp/house/houseInfo.do?h_no="+this.h_no+"&page=1");
			}
			
			$("#hotelist_in img").attr("src","/howstay/upload/house/"+this.h_file);
			$("#hotelist_in .innertext").html('#'+this.h_no);
			$("#hotelist_in .info").html(this.h_name+'<br/>'+this.h_address+'<br/>'+this.h_rate);
			$("#hotelist").append($("#hotelsub").html())
			$("#hotelist #hotelist_in").attr("id","hotel"+cnt);
				})
				$("#hotelsub").css("display","none");
			}						
		})
})

</script>
<!-- 아랫단 종료-->
</body>
</html>
