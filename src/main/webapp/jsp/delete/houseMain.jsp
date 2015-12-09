
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>How?Stay!</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
</head>
<body>
<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
   <jsp:include page="/jsp/nav.jsp"></jsp:include>

  <div class="container-fluid">
	<div class="visual">
				<span class="bg_img" style="background-image: 
				url(/howstay/image/banner11.jpg); background-position: 50% 0px;">
				</span>
			<div class="sub_title" id="maintext2" style="opacity:0">
				<div class="text_b">
					<h1>HOW? STAY! </h1>
					<form action="/howstay/jsp/house/houseSearch.do" name="searchFrm" method="post">
                   <div class="input-group" style="margin: 0px auto;">
 					  	<input type="text" id="keyword" name="keyword" class="form-control input" placeholder="목적지, 호텔, 랜드마크" />
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
	<br/>
	</div>
	
	<div class="row">
	<div class="col-md-6"> 
	asdasd
	</div>
	<div class="col-md-6 img-responsive" id="map" style="height:450px;">
	</div>
	</div>
   <div class="row">
      <c:forEach var="i" items="${list}" varStatus="cnt" begin="0" end="8">

         <div class="col-md-4">
           
               <div class="portfolio-box-caption-content">
                  <div class="project-category text-faded">
                     <b> ${i.h_name }</b>
                  </div>
               </div>
           
            <a href="/howstay/jsp/house/houseInfo.do?h_no=${i.h_no}&page=1"
               class="thumbnail"> <img
               src="/howstay/upload/house/${i.h_file}"
               style="height: 200px; width: 400px;" />
            </a>

         </div>


      </c:forEach>

   </div>
   <br>
   <div>
      오늘 가장 많이 예약된 숙소!
   </div>

   <br>
   <br>
   <div class="row">
      <c:forEach var="j" items="${rList}" varStatus="cnt">

         <div class="col-sm-6 col-md-3">
            <div class="thumbnail">
               <a href="/howstay/house/HouseInfoReview.action?h_no=${j.h_no}&page=1"> 
               <img src="/howstay/upload/house/${j.h_file}" style="height: 220px" />
               </a>
               <div class="caption">
                  <h3>${j.h_name }</h3>
                  <p>${j.h_category }</p>
               </div>
            </div>
         </div>

      </c:forEach>
   </div>

   <div id="footer">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="copyright">
                  <p class="text-center">
                     Copyright &copy; 2015 <a href="#" target="_blank">howstay</a>.
                     All Rights Reserved.<br />
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- 아랫단 종료-->
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
			}						
		})
})
</script>
</body>
</html>