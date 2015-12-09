<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="/howstay/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/howstay/css/notice.css">
<title>Insert title here</title>

<script type="text/javascript">
function funcClose(){
	this.close();
}
</script>

</head>
<body>
	<div id="container" align="center">
				 <div class="col-lg-12" align="center">
                    <div class="panel panel-default" align="center">
                    <div id="mini_container" align="center">
                        <div class="panel-heading" style="background-color: LightSteelBlue;" align="center">
					<h3><font color="Black"><B>Do You Want?</B></font></h3>
                        </div>
					<br>
				<form action="">
					<table width="70%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="150" />
						</colgroup>
						<tr>
                             <th class="info" scope="col">HOUSE NAME</th>
                             <td><input id="h_name" name="h_name" type="text" value="${hBean.h_name }" size="50"></td>
                         
                        </tr>
                        <tr>
                          <th class="info" scope="col">HOUSE CATEGORY</th> 
                          <td><input id="h_category" name="h_category" type="text" value="${hBean.h_category }"  size="50"></td>
                          
                        </tr>
                       
                        <tr>
                          <th class="info" scope="col">HOUSE OWNER</th>
                          <td><input type="text" id="h_aname" name="h_aname" value="${hBean.h_aname}"  size="50"></td>
                        </tr>
                        <tr>
                          <th class="info" scope="col">E-MAIL</th>
                          <td><input type="text" id="h_email" name="h_email" value="${hBean.h_email}"  size="50"></td>
                        </tr>
                      	<tr>
                      	<th class="info" scope="col">TEL</th>
                      <td><input type="text" id="h_tel" name="h_tel" value="${hBean.h_tel}"  size="50"></td>
                      	</tr>
                        <tr>
                          <th class="info" scope="col">HOUSE ADDRESS</th>
                          <td><input type="text" id="h_address" name="h_address" value="${hBean.h_address}"  size="50"></td>
                        </tr>         
                      	 <tr>
                      	<th class="info" scope="col">HOUSE LEVEL</th>
                      <td><input type="text" id="h_level" name="h_level" value="${hBean.h_level}" size="50"></td>
                      	</tr>
					</table>
				</form>
					<br>
					
						<div class="rtl vspace10">
							<a class="btn_style btn_del" href="#">삭제</a>
							<a class="btn_style btn_edit" href="#">완료</a> 
							<a class="btn_style btn_cancel" href="/howstay/aHouse/adminHouseInfo.action?h_no=${h_no}">취소</a> 
						</div>
					</div>
				</div>
			</div>
		</div>

</body>
</html>