<%-- <%@page import="howstay.model.ZipcodeBean"%> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>HowStay</title>
<script src="/howstay/js/join.js">
</script>
</head>
<%
	request.setCharacterEncoding("euc-kr");
%>


<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<form action="/howstay/jsp/login_join/MemberOldZipcode.do" name="searchFrm" method="post">
		<table width="400" height="380" border="0" cellpadding="0"
			cellspacing="0">
			<tr>
				<td valign="top" background="../sist/img/join_pop_bg1.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="45" colspan="3"></td>
						</tr>
						<tr>
							<td width="50" height="30">&nbsp;</td>
							<td>&nbsp;</td>
							<td width="50">&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td align="center" style="padding: 10">찾고자 하는 지역의
								&quot;읍,면,동&quot; 이름을 입력하세요.<br> 예: 구의동일 경우, '구의' 로 검색하세요.
							</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td></td>
							<td height="7"></td>
							<td></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="40" align="center" bgcolor="F5F5F5">주소검색 <input
								name="dong" type="text" size="25" class="input"> 
								<input type="button" value="찾기" onclick="searchDong()"></td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td height="7">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td style="padding: 1" bgcolor="#DDDDDD">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr height="1" bgcolor="f4f4f4">
										<td></td>
										<td></td>
										<td></td>
									</tr>
									<tr bgcolor="ddddddd">
										<td width="1" bgcolor="f4f4f4"></td>
										<td height="25" align="center" bgcolor="EEEEEE">해당 주소를
											선택하세요.</td>
										<td width="1" bgcolor="f4f4f4"></td>
									</tr>
								</table>
								<div style="height: 120px; width: 300; overflow: auto;">
									<table width="100%" height="120" border="0" cellpadding="0"
										cellspacing="0" bgcolor="#FFFFFF" class="gray_blue">
										
										<c:forEach var="i" items="${list}" >
										<tr>
											<td height="8"></td>
										</tr>
										<tr>
										
											<td height="20" style="padding-left: 25;width: 200px;">
											<a href="javascript:setZipCode('${i.zipcode }','${i.sido }','${i.gugun }','${i.dong }','${i.bunji }')" >
											${i.zipcode } ${i.sido } ${i.gugun } ${i.dong } ${i.bunji }</a>
											</td>
										</tr>
												</c:forEach>	
							</table>
								</div>
							</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>
