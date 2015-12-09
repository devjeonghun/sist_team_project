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
<title>HowStay</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<style>
#table{
   margin: 0px auto;
}
#maintext{
position: absolute; 
text-align: center; 
z-index: 50; 
top:250px;
opacity:0; 
}
#subtext{
   display:none;
    position: absolute;
    margin-top: -46px;
}
</style>
</head>
<body style="background-color:#f5f5f5; overflow-x:hidden; ">   
    <jsp:include page="/jsp/nav.jsp"></jsp:include>
       
      <div class="container-fluid" >
            <!-- 비디오 -->
            <div class="row">
            <div class="col-md-12" >
            <video class="embed-responsive-item" preload="auto" loop="loop" autoplay> 
              <source src="https://a0.muscache.com/airbnb/static/Seoul-P1-4.webm" type="video/webm"> 
              <source src="https://a0.muscache.com/airbnb/static/Seoul-P1-4.mp4" type="video/mp4"/></video>
              </div>
              </div>
             <div id="subtext"style="background-color: rgba(0,0,0,0.6)">            
             </div> 
            <div class="col-md-12" id="maintext" style="color:#ffffff;background-color: rgba(0,0,0,0.6)">    
               <font id="zig" style="font-size: 60pt">환영합니다!</font>
               <h2 >국내의 다양한 숙소를 예약해 보세요.</h2>                  
                  <br>
                  <div id="second" >                   
                   <form action="/howstay/jsp/house/houseSearch.do" id="searchFrm"name="searchFrm" method="post">
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
                        <input type="hidden" name="ajax" value="none">
					   </div>
            </form>         
         </div>
         </div>         
         </div>
          
   <!-- 여행지별 예약 시작 -->
   <br/><br/><br/><br/>
   <hr>
   <section id="portfolio">
   <div class="container-fluid">
      <div id="mainTitle" style="color:#565A5D;">         
        	<div id="slide1" style="opacity:0; position: relative; text-align: center;">
        	<strong>
         	<font size=30>두근두근 국내여행</font></strong><br/>
         	</div>
         	<div id="slide11" style="opacity:0; position: relative; text-align: center;">
         	<strong>어디로 여행할 예정이신가요? 멋진 숙소와 함께하세요.</strong>
         	</div>
			<br/><br/>	      
      </div>
      
      <div class="row">
      <div id="hotel" class="hotel">
      </div>
      
      <div id="hotelcon">
         
            <div id="hotelimg" class="col-md-4" style="text-align: center;position: relative;">
               <a href=""> 
                  <img src="" style="width: 350px; height: 250px" class="img-rounded" alt="1"></a>
                  <div class="innertext"style=" font-size:15pt; opacity:0;position: inherit; margin:-120px auto 120px;color:white; background-color: rgba(0,0,0,0.6); width:350px;">                    
                  </div>
                  
               <div class="row"><br></div>
            </div>
         </div>
        </div>
   </div>
</section>   
   <!-- container --> 
   <!-- 여행지별 예약 끝 -->

   <!-- 커뮤니티 시작 -->
   <br>
   <section id="blog">
   <div class="container">
    <div id="mainTitle" style="color:#565A5D;">         
        	<div id="slide2" style="opacity:0; position: relative; text-align: center;">
        	<strong>
         	<font size=30>여행자들의 광장</font></strong><br/>
         	</div>
         	<div id="slide22" style="opacity:0; position: relative; text-align: center;">
         	<strong>다양한 경험들이 있습니다. 나만의 버킷리스트를 만들어 여행을 떠나보세요.</strong>
         	</div>
			<br/><br/>	      
      </div>
      <div>
         <div class="row">
            <!-- 첫번째 글 시작-->
            <div id="ct"></div>
            <div id="ctcon">
            <div id="tourlist" class="col-md-4" style="text-align: center;position: relative;">
            	<a href=""><img class="img-rounded" src="" style="width: 350px; height: 600px;" alt=""></a>
               	<div class="innertext"style="font-size:15pt;opacity:0;position: inherit; margin:-120px auto 120px;color:white; background-color: rgba(0,0,0,0.6); width:100px;">                    
                 </div>                            
            </div>              
            </div>
            </div>
            <!-- 첫번째 글 끝 -->
         </div>
         <!-- row -->
      </div>
   <!-- 바로가기 -->
   
 </section>

   <!-- 아랫단 시작-->

  <jsp:include page="/jsp/footer.jsp"></jsp:include>


   <!-- 아랫단 종료-->
 <script type="text/javascript">
   $(window).load(function() {
     	  if ($(window).width() < 991) {
     	    $('#maintext').css("display","none");
     	    $('#subtext').html($('#second').html());
     	   	$('#subtext #st').attr("id","sst");
  			$('#subtext #en').attr("id","een");
  			$('#subtext #searchFrm').attr("name","ssearchFrm");
     	    $('#subtext').css("display","block");
     	   picker();
     	  } else {
     	    $('#maintext').css("display","block");
     		$('#subtext').css("display","none");
     	  }
     	  
     	});
    
    $(window).resize(function() {
   	 if ($(window).width() < 991) {
   		    $('#maintext').css("display","none");
   			$('#subtext').html($('#second').html());
   			$('#subtext #st').attr("id","sst");
   			$('#subtext #en').attr("id","een");
   			$('#subtext #searchFrm').attr("name","ssearchFrm");
   		    $('#subtext').css("display","block");
   		    picker();
   		  } else {
   			$('#maintext').css("display","block");
   			$('#subtext').css("display","none");
   		  }
   	});
    function picker(){
		$('#st').datepicker({
			  format: "yyyy-mm-dd",
			  startView: 3,
			  language: "kr",
			  orientation: "top auto",
			  keyboardNavigation: false,
			  forceParse: false,
			  autoclose: true,
			  todayHighlight: true,
			  startDate: today	  
			  
			 }).on('changeDate',function(selected){
				 startDate = new Date(selected.date.valueOf());
		         startDate.setDate(startDate.getDate(new Date(selected.date.valueOf()))+1);
		         $('#en').datepicker('setStartDate', startDate);
			 });
		  $('#en').datepicker({
			  format: "yyyy-mm-dd",
			  startView: 3,
			  language: "kr",
			  orientation: "top auto",
			  keyboardNavigation: false,
			  forceParse: false,
			  autoclose: true,
			  todayHighlight: true,
			  startDate: startDate
			 });	
	}
    
    </script> 
</body>
</html>