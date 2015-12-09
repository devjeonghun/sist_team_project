function membersubmit() {
	var obj=document.joinFrm;
		//아이디 채크
	if(!obj.m_id.value){
		alert('아이디를 입력해주세요');
		return;
	}
	
	if(!obj.m_pass_a.value){
		alert('질문의 답을 입력해주세요');
	}
	
	//이메일 합
	if(!obj.email1.value!='direct'){
		obj.m_email.value=obj.email1.value+"@"+obj.email3.value;
	}else{
		obj.m_email.value=obj.email1.value+"@"+obj.email2.value;
	}
	
	/*//성별 입력
	if(obj.gender.value){
		obj.m_gender.value=obj.gender.value;
	}*/

	//주소 합
	if(obj.address1.value){
		obj.m_address.value=obj.post1.value+"-"+obj.post2.value+" "+obj.address1.value+" "+obj.address2.value;
	}
	//비밀번호 질문
	if(obj.question.value!='empty'){
		obj.m_pass_q.value=obj.question.value;
	}
	
	obj.submit();

}
//주소 검색 메소드
function oldSearch() {
	window.open("address.jsp", "window", "left=300,top=300,width=500,height=300");
}
function newSearch() {
	window.open("newAddress.jsp", "window", "left=300,top=300,width=500,height=300");
}
function searchDong() {
	var obj=document.searchFrm;
	if(!obj.dong.value){
		alert('주소를 입력해주세요.');
		return;
	}else{
		obj.submit();
	}
	
}
function addressCate() {
	window.open("address.jsp","id","left=300,top=300,width=500,height=300");//.jsp addressCate
}

function setZipCode(zip,sido,gugun,dong,bunji) {
opener.joinFrm.post1.value=zip.split("-")[0];		
opener.joinFrm.post2.value=zip.split("-")[1];
opener.joinFrm.address1.value=sido+" "+gugun+" "+dong+" "+bunji;
self.close();
}
function addressCheck() {
	var obj=document.joinFrm;
	if(!obj.post1.value){
		//alert('우편번호를 입력해주세요.');
	}
}


//패스워드 채크
function passCheck() {
	var obj=document.joinFrm;
	if(obj.pass1.value!=obj.pass2.value){
		alert('비밀번호가 일치하지 않습니다.');
	}else{
		obj.m_password.value=obj.pass1.value;
	}
}
//생년월일 채크
function birthCheck() {
	var obj=document.joinFrm;
	if(!obj.m_birth.value){
		alert('생년월일를 입력해주세요.');
	}
}
//전화번호 채크
function telCheck() {
	var obj=document.joinFrm;
	if(!obj.tel1.value&&!obj.tel2.value&&!obj.tel3.value){
		alert('전화번호를 입력하세요.');
		obj.tel1.value='';
		obj.tel2.value='';
		obj.tel3.value='';
		obj.tel1.focus();
	}else{
		obj.m_tel.value=obj.tel1.value+"-"+obj.tel2.value+"-"+obj.tel3.value;
	}
}
//휴대폰 채크
function mobileCheck() {
	var obj=document.joinFrm;
	if(!obj.cp1.value&&!obj.cp2.value&&!obj.cp3.value){
		alert('휴대폰번호를 입력해주세요.');
		obj.cp1.value='';
		obj.cp2.value='';
		obj.cp3.value='';
		obj.cp1.focus();
	}else{
		obj.m_mobile.value=obj.cp1.value+"-"+obj.cp2.value+"-"+obj.cp3.value;
	}
}
//이메일 직접입력 채크
function emailChange() {
	var obj=document.joinFrm;
	if(obj.email3.value=='direct'){
		obj.email2.disabled=false;
	}else{
		document.getElementById("email2").value='';
		document.getElementById("email2").disabled=true;
	}
}
//생년월일 채크
/*function birthCheck() {
	var obj=document.joinFrm;
	if(!obj.year.value&&!obj.month.value&&!obj.day.value){
		alert('생년월일을 입력해 주세요.');
	}else{
		obj.m_birth.value=obj.year.value+"/"+obj.month.value+"/"+obj.day.value;
	}
}*/

//아이디 중복체크
function idcheck() {
	window.open("idCheck.jsp", "window", "left=300,top=300,width=500,height=300");
}




	
