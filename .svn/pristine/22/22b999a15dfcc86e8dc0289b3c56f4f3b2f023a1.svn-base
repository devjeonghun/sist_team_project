<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="shortcut icon" href="/howstay/image/fav.ico">
<title>mypage</title>
</head>
<body>
<c:if test="${m_id==null|| m_id==''}">
	<c:redirect url="/jsp/login_join/login.jsp" />
</c:if>
<div class="container-fluid">
		<c:forEach var="b" items="${list}" varStatus="cnt">
			<c:choose>
			<c:when test="${cnt.count < 3 }">
			<div id="${cnt.count }" class="panel panel-danger">		
			</c:when>			
			<c:when test="${cnt.last}">
			<div id="last" class="panel panel-success" value="${cnt.count}"style="display:none;">
			<input id="lastvalue" type="hidden" value="${cnt.count }">
			</c:when>
			<c:otherwise>
			<div id="${cnt.count }" class="panel panel-success" style="display:none;">			
			</c:otherwise>
			</c:choose>
			<input type="hidden" id="page" value="2">
		<div class="panel-heading"><strong>제목</strong>&ensp;&ensp;${b.hr_title }</div>
			  <div class="panel-heading"><strong>작성자</strong>&ensp;&ensp;${b.m_name }</div>
			  <div class="panel-body" >
			    ${b.hr_contents } 
			    <br>			    
			  </div>
			<div class="panel-footer">
			  좋아요:&ensp;${b.h_like } 평점:&ensp;${b.hr_score} 조회수:&ensp;${b.hr_hit }</div>			  
			</div>
		</c:forEach>		
		</div>
		<div style="margin: 0px auto; text-align: center;">
		<input type="button" class="btn btn-default" id="pre" value="<">
		<input type="button" class="btn btn-default" id="nex" value=">">
		
		</div>
		<script>
		$('#pre').click(function(){
			if($('#2').css("display") != "none"){
				alert("첫 페이지 입니다");
			}else{
				$('#last').css("display","none");
				$('#'+$('#page').val()).css("display","none");
				$('#'+($('#page').val()-1)).css("display","none");				
				$('#page').val((Number($('#page').val()))-2);
				$('#'+$('#page').val()).css("display","block");
				$('#'+($('#page').val()-1)).css("display","block");
				
			}			
		})
		
		$('#nex').click(function(){			
			if($('#last').css("display")=="block"){
				alert("마지막 페이지 입니다");
			}else{
				$('#'+$('#page').val()).css("display","none");
				$('#'+($('#page').val()-1)).css("display","none");
				$('#page').val(Number($('#page').val())+2);
				$('#'+$('#page').val()).css("display","block");
				$('#'+($('#page').val()-1)).css("display","block");				
				if($('#page').val()==$('#lastvalue').val() || ($('#page').val()-1)==$('#lastvalue').val()){
					$('#last').css("display","block");
				}
			}			
		})
		
		</script>
</body>
</html>