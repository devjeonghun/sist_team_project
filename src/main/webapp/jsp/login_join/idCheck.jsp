<%@ page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c"  uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>How?Stay! ID 중복 채크</title>
<link rel="shortcut icon" href="/howstay/image/fav.ico" />
<script>
function sendId() {
	var obj=document.idFrm;
	if(!obj.m_id.value){
		alert('아이디를 입력하여 주세요');
	}else{
	obj.submit();
	}
}
function setId(id) {
	opener.joinFrm.m_id.value=id;
	self.close();
}
function fn_press_han(obj) {
	if(event.keyCode==8 || event.keyCode==9 || event.keyCode==37 || event.keyCode==39 || event.keyCode==46){
		return;
	}
	obj.value=obj.value.replace(/[^A-Za-z0-9]/g,'');
}
</script>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form action="/howstay/jsp/login_join/MemberIdCheck.do" name="idFrm" method="post">
<table width="400" height="289"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>
    <table width="100%"  border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="50" height="60">&nbsp;</td>
        <td height="60">&nbsp;</td>
        <td width="50">&nbsp;</td>
      </tr>
<!-- 추즈 시작 -->
 <c:choose>
	<c:when test="${flag eq true}" >
     <tr>
        <td>&nbsp;</td>
        <td height="60" align="center" style="padding: 10 ">
         입력하신 아이디 <strong> ${m_id } </strong>은 이미 사용중인 ID 입니다.
          <p>다른 ID를 검색하여주 세요. </p></td>
        <td>&nbsp;</td>
      </tr> 
	</c:when>
	<c:when test="${flag eq false }">
	<tr>
        <td>&nbsp;</td>
        <td height="60" align="center" style="padding: 10 ">
         입력하신 아이디 <strong> ${m_id }  </strong>은  사용가능한 ID 입니다.
		<p><a href="javascript:setId('${m_id }')">여기를 클릭하세요</a></p>
        <td>&nbsp;</td>
      </tr> 
      </c:when>
</c:choose>
      
        <tr>
          <td>&nbsp;</td>
          <td height="40" align="center" bgcolor="F5F5F5"><strong>ID</strong> 입력
            <input type="text" name="m_id" class="input" name="m_id" onkeydown="fn_press_han(this)"/>
            <input type="button" value="중복 확인" onclick="sendId()"/><!-- 제출버튼 -->
            </td>
        </tr>
      <tr>
        <td>&nbsp;</td>
        <td height="20">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td></td>
        <td></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</form>
</body>
</html>
