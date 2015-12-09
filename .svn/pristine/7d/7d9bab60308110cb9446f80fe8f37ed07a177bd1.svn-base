<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="/howstay/js/jquery-1.11.3.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="/howstay/css/admin.css">
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
<body>
  <section class="container">
    <div class="login">
      <h1>Login to Web App</h1>
      <form method="post" action="/howstay/jsp/admin/adminLogin.do" id="adminFrm">
        <p><input type="text" name="a_id" id="a_id" value="" placeholder="ID"></p>
        <p><input type="password" name="a_password" id="a_password" value="" placeholder="Password"></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
          </label>
        </p>
        <p class="submit"><input type="button" id="loginbtn" name="commit" value="Login"></p>
      </form>
    </div>

    <div class="login-help">
      <p>Forgot your password? <a href="index.html">Click here to reset it</a>.</p>
    </div>
  </section>

</body>
</html>