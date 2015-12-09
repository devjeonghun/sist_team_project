var Date = new Date();
year = Date.getFullYear();
month= Date.getMonth()+1;
day=Date.getDate();
day2=Date.getDate()+1;
var today = year+"-"+month+"-"+day;
var yesterday = year+"-"+month+"-"+day2;
$(function(){
	document.getElementById("st").value=today;
	document.getElementById("en").value=yesterday;
	});
function keywordSearch() {
	if(document.getElementById("st").value==null || document.getElementById("en").value==null || document.getElementById("en").value==''){
		alert("날짜를 입력해주세요");
	}else if(document.getElementById("st").value < today){
		alert("날짜를 오늘 이후로 지정해주세요");
	}else if(document.getElementById("st").value >= document.getElementById("en").value){
		alert("체크인 날짜가 체크아웃날짜보다 늦습니다");
	}else if(document.getElementById("r_count").value==null||document.getElementById("r_count").value==''){
	alert("인원수를 입력해주세요");
	}else{
		document.searchFrm.submit();
	}	
}

function change_Rcount() {//인원수 select시 hidden처리된 input으로 넘겨서 r_count로 넘겨줌
	var sel = document.getElementById("sel_rcount").value;
	document.getElementById("r_count").setAttribute("value", sel);
	
}
