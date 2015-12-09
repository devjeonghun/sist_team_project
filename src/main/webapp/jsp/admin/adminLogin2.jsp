<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="/howstay/js/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
</head>
<script >
$(function(){
   $("#loginbtn").click(function(){
      if($("#a_id").val()==""||$("#a_password").val()==""){
         alert("아이디와 비밀번호를 입력하세요");
      }else{
         $("#adminFrm").submit();
      }
   });
});
</script>
<body topmargin="150" bgcolor="#434343">

   <form id="adminFrm" name="adminFrm"
      action="/howstay/jsp/admin/adminLogin.do">
      <table align="center" background="/howstay/image/login_bg.jpg"
         border="0" width="700" height="500" cellpadding="0" cellspacing="0">
         <tr>
            <td></td>
            <td></td>
         </tr>
         <tr>
            <td width="350"></td>
            <td align="center" style="">ID : <input type="text" id="a_id"
               name="a_id" size="14"> <br>
            <br> PW : <input type="password" id="a_password"
               name="a_password" size="12">
            </td>
            <td><input type="button" id="loginbtn"value="로그인"></td>
         </tr>
         <tr>
            <td></td>
            <td></td>
         </tr>
      </table>
   </form>
   
   <center>
   <img src="/howstay/image/admin_Login_logo.jpg" width="200" height="200"><br>
   <font color="red" face="궁서체" size="5">로그인 똑바로 해라..</font>
   </center>
</body>
</html>