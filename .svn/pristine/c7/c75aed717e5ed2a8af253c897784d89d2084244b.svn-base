<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/howstay/css/bootstrap.css" rel="stylesheet">
<script>
	function email() {
		var add = document.form.To.value
		var subject = document.form.Subject.value
		document.form.action = "mailto:your_id@domain.com" + add + "?subject="
				+ subject;
	}
</script>

</head>
<body>
	<div class="panel panel-default">
		<div class="panel-heading" align="center">
			<h1>
				<font color="skyBlue"><B>SEND E-MAIL</B></font>
			</h1>
		</div>
		<FORM METHOD="post" NAME="form" ACTION=""
			onSubmit="email();return true" ENCTYPE="text/plain">
			<table class="table table-hover table-condensed">
				<tr>
					<td align="left"><B>받는사람 : </B></td>
					<td ALIGN="left"><INPUT TYPE="text" NAME="To" size=43></td>
				</tr>
				<tr>
					<TD align="left"><B>제목 : </B></TD>
					<TD ALIGN="left"><INPUT TYPE="text" NAME="Subject" size=43></TD>
				</tr>
				<tr>
					<TD ALIGN="left"><B>회신 주소 : </B></TD>
					<TD ALIGN="left"><INPUT TYPE="text" NAME="Reply-to" size=43></TD>
				</tr>
				<tr>
					<td VALIGN="top"><B>내용 : </B></td>
					<td ALIGN="left"><TEXTAREA style="" COLS=43 ROWS=15 NAME="Message"></TEXTAREA>
					</td>
				</tr>
				<TR>
					<TD COLSPAN=2 ALIGN="center"><INPUT TYPE="submit"
						VALUE="Send it!"><INPUT TYPE="reset" VALUE="Reset Form"></TD>
				</TR>
			</table>
		</FORM>
	</div>
	</body>
	</html>