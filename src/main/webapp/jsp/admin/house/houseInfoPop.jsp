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
					<h3><font color="Black"><B>${hBean.h_name }</B></font></h3>
                        </div>
					<br>
					<table width="100%" class="table table-hover table-condensed" align="center">
						<colgroup>
							<col width="130" />
                            <col width="130" />
						</colgroup>
						<tr>
							<!-- <th class="info" scope="col" class="fir">이미지</th> -->
							<th class="info" scope="col">HOUSE IMG</th>
                             <th class="info" scope="col">HOUSE NO</th>
                             <td id="hr_no">${hBean.h_no}</td>
                         
                        </tr>
                        <tr>
                         <td id="hr_file" class="fir" rowspan="6">
                         <img src = '/howstay/upload/house/${hBean.h_file}' width="250" height="250"/>
                          </td>
                          <th class="info" scope="col">HOUSE CATEGORY</th> 
                          <td id="m_name" colspan="3">${hBean.h_category}</td>
                          
                        </tr>
                       
                        <tr>
                          <th class="info" scope="col">HOUSE OWNER</th>
                          <td id="hr_title">${hBean.h_aname}</td>
                        </tr>
                        <tr>
                          <th class="info" scope="col">E-MAIL</th>
                          <td id="hr_regdate">${hBean.h_email }</td>
                        </tr>
                      	<tr>
                      	<th class="info" scope="col">TEL</th>
                      <td id="hr_score">${hBean.h_tel }</td>
                      	</tr>
                        <tr>
                          <th class="info" scope="col">HOUSE ADDRESS</th>
                          <td id="hr_hit">${hBean.h_address }</td>
                        </tr>         
                      	 <tr>
                      	<th class="info" scope="col">HOUSE LEVEL</th>
                      <td id="hr_score">${hBean.h_level }</td>
                      	</tr>
					</table>
					<br>
					
						<div class="rtl vspace10">
							<a class="btn_style btn_del" href="#">삭제</a>
							<a class="btn_style btn_edit" href="/howstay/aHouse/adminHouseInfoEdit.action?h_no=${hBean.h_no}">수정</a> 
							<a class="btn_style btn_cancel" onclick="javascript:funcClose()">닫기</a> 
						</div>
					</div>
				</div>
			</div>
		</div>

</body>
</html>