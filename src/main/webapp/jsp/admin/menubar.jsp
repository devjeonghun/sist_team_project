<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="headerBgColor">
		<div id="header" class="frame">
			<div id="#topmenuBgColor">
				<ul id="topmenu" class="hmenu">
					<li><a href="/">HOME</a></li>
					<li><a href="/howstay/jsp/admin/adminLogin.jsp">로그아웃</a></li>
				</ul>
			</div>
			<h1><br>
				<a href="/howstay/jsp/admin/go.jsp"> <img src="/howstay/image/logo1.png"
					width="150" height="31" alt="하우스테이" />
				</a>
			</h1>
			<ul class="mainmenu hmenu">
				<li class="selected"><a href="/howstay/admin/adminMemberList.action"> <img
						src="/howstay/images/admin/header/menu_off_01.png"
						onmouseover="this.src='/howstay/images/admin/header/menu_on_01.png'"
						onmouseout="this.src='/howstay/images/admin/header/menu_off_01.png'"
						alt="회원관리" />
				</a></li>
				<li><a href="/howstay/jsp/admin/house/hlist.do?hsearch=&hhsear="> <img
						src="/howstay/images/admin/header/menu_off_02.png"
						onmouseover="this.src='/howstay/images/admin/header/menu_on_02.png'"
						onmouseout="this.src='/howstay/images/admin/header/menu_off_02.png'"
						alt="하우스관리" />
				</a></li>
<!-- 				<li><a href="#"> <img
						src="/howstay/images/admin/header/menu_off_03.png"
						onmouseover="this.src='/howstay/images/admin/header/menu_on_03.png'"
						onmouseout="this.src='/howstay/images/admin/header/menu_off_03.png'"
						alt="룸관리" />
				</a></li> -->
				<li><a href="/howstay/jsp/admin/board/adnotice.do"> <img
						src="/howstay/images/admin/header/menu_off_04.png"
						onmouseover="this.src='/howstay/images/admin/header/menu_on_04.png'"
						onmouseout="this.src='/howstay/images/admin/header/menu_off_04.png'"
						alt="게시판관리" />
				</a></li>
				<!-- <li><a href="#"> <img
						src="/howstay/images/admin/header/menu_off_05.png"
						onmouseover="this.src='/howstay/images/admin/header/menu_on_05.png'"
						onmouseout="this.src='/howstay/images/admin/header/menu_off_05.png'"
						alt="예약관리" />
				</a></li> -->
				<li><a href="/howstay/jsp/admin/statistics/monthlyReserve.jsp"> <img
						src="/howstay/images/admin/header/menu_off_06.png"
						onmouseover="this.src='/howstay/images/admin/header/menu_on_06.png'"
						onmouseout="this.src='/howstay/images/admin/header/menu_off_06.png'"
						alt="통계" />
				</a></li>
			</ul>
		</div>
	</div>
</body>
</html>