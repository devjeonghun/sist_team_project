/**
 *@author jeonghun 
 */
/* 상단바 따라내려오는 코드입니다 수정 X */

		$(window).load(function() {
			$.ajax({
				url:'/howstay/jsp/mainlist1.do',
				dataType:"json",
				success:function(data){		//콜백함수
					$(data).each(function(cnt){
						if(cnt<6){	
							$("#hotelcon a").attr("href","/howstay/jsp/house/houseInfo.do?h_no="+this.h_no+"&page=1");
							$("#hotelcon img").attr("src","/howstay/upload/house/"+this.h_file);
							$("#hotelcon div .innertext").html(this.h_name+"<br>"+this.h_category);
							$("#hotel").append($("#hotelcon").html())
							$("#hotel #hotelimg").attr("id","hotel"+cnt);
							$("#hotel .col-md-4").hover(function(){
								var div="#"+this.id;
								$(div+" "+".innertext").fadeTo(500,1);
							  },function(){
								  var div="#"+this.id;									 	
									 $(div+" "+".innertext").animate({opacity:0},500);
							  })
							  
						}						
					})
					$("#hotelcon").html("");
				}
						
			});
			$.ajax({
				url:'/howstay/jsp/mainlist2.do',
				dataType:"json",
				success:function(data){		//콜백함수
					$(data).each(function(cnt){
						if(cnt<3){	
							$("#ctcon img").attr("src","/howstay/upload/tourImage/"+this.ct_file);
							$("#ctcon div a").attr("src","/howstay/jsp/tour/infoTour.do?ct_no="+this.ct_no+"&page=1");							
							$("#ctcon div div").html(this.ct_title);							
							$("#ct").append($("#ctcon").html())
							$("#ct #tourlist").attr("id","tour"+cnt);
							$("#ct .col-md-4").hover(function(){
								  var div="#"+this.id;
								  $(div+" "+".innertext").fadeTo(500,1);
								  $(div+" "+"img").css("background-color","rgba(0,0,0,0.4)")
							  },function(){
								  var div="#"+this.id;									 	
								  $(div+" "+".innertext").animate({opacity:0},500);
							  })
						}						
					})
					$("#ctcon").html("");
				}
						
			});		
			$("#maintext").fadeTo(2000,1);
			$("#maintext2").fadeTo(2000,1);
			
			
		});	
		   
		var today = new Date();
		  var startDate= new Date();
		  var FromEndDate = new Date();
		  var ToEndDate = new Date();
		  
	$(function(){			 		
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
		  
	})
		    
	  
	   function keywordSearch() {		
	   	if(document.getElementById("st").value==null || document.getElementById("en").value==null || document.getElementById("en").value==''){
	   		alert("날짜를 입력해주세요");
	   	}else if(document.getElementById("st").value < today){
	   		alert("날짜를 오늘 이후로 지정해주세요");
	   	}else if(document.getElementById("st").value >= document.getElementById("en").value){
	   		alert("체크인 날짜가 체크아웃날짜보다 늦습니다");
	   	}else if(document.getElementById("r_count").value==null||document.getElementById("r_count").value==''){
	   	alert("인원수를 입력해주세요");
	   	}else if($('#ajax').val()=="ajax"){
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
	   	}else{   	   						
			document.searchFrm.submit();
	   	}	
	   }

	   function change_Rcount() {//인원수 select시 hidden처리된 input으로 넘겨서 r_count로 넘겨줌
	   	var sel = document.getElementById("sel_rcount").value;
	   	document.getElementById("r_count").setAttribute("value", sel);
	   	
	   }
	   	   			 
	   function googlemap(obj){
		   var locations = obj;
		   var latmax=Number(locations[0].h_lat);
		   var latmin=Number(locations[0].h_lat);
		   var longmax=Number(locations[0].h_long);
		   var longmin=Number(locations[0].h_long);
		   for (i = 0; i < locations.length; i++) {
			   if(Number(locations[i].h_lat)>latmax)latmax=Number(locations[i].h_lat);
			   if(Number(locations[i].h_lat)<latmin)latmin=Number(locations[i].h_lat);
			   if(Number(locations[i].h_lat)>longmax)longmax=Number(locations[i].h_long);
			   if(Number(locations[i].h_lat)<longmin)longmin=Number(locations[i].h_long);
		   };
		   var lat=(latmax+latmin)/2;
		   var long=(longmax+longmin)/2;
		   console.log(typeof latmax);
		   console.log(latmax+","+latmin);
		   console.log(longmax+","+longmin);
		   console.log(lat+","+long);
           var map = new google.maps.Map(document.getElementById('map'), {
             zoom: 12,
             center: new google.maps.LatLng(lat, long),
             mapTypeId: google.maps.MapTypeId.ROADMAP
           });
           var infowindow = new google.maps.InfoWindow();
           var marker, i;
           
           
           for (i = 0; i < locations.length; i++) {  
             marker = new google.maps.Marker({
               position: new google.maps.LatLng(locations[i].h_lat, locations[i].h_long),
               map: map
             });
             google.maps.event.addListener(marker, 'mouseover', (function(marker, i) {
               return function(){
            	   if($('#st').val()!='' && $('#en').val()!=''){
            		   infowindow.setContent("<a href='/howstay/jsp/house/houseInfo.do?h_no="+locations[i].h_no+"&page=1&st="+$('#st').val()+"&en="+$('#en').val()+"'><img src='/howstay/upload/house/"+locations[i].h_file+"'><br/>"+locations[i].h_name+"<br/>"+locations[i].h_address+"</a>");	
       			}else if($('#st').val()=='' && $('#en').val()==''){
       				infowindow.setContent("<a href='/howstay/jsp/house/houseInfo.do?h_no="+locations[i].h_no+"&page=1'><img src='/howstay/upload/house/"+locations[i].h_file+"'><br/>"+locations[i].h_name+"<br/>"+locations[i].h_address+"</a>");
       			}
                 
                 infowindow.open(map, marker);
               }
             })(marker, i));
           }
	   }
	   
	                  
	                  