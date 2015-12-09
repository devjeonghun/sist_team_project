<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

</head>
<body>
<script src="/howstay/js/jquery.form.js"></script>

<script>
	$(document).ready(function(){
		$( ".star_rating a" ).click(function() {
		     $(this).parent().children("a").removeClass("on");
		     $(this).addClass("on").prevAll("a").addClass("on");
		     return false;
		});
	})
	$(function(){
		$("#hr_rate").val("0");
		$("#star1").click(function(){
			$("#hr_rate").val("2");
			$("#startext").html("별로에요");
		})
		$("#star2").click(function(){
			$("#hr_rate").val("4");
			$("#startext").html("추천하고 싶지 않아요");
		})
		$("#star3").click(function(){
			$("#hr_rate").val("6");
			$("#startext").html("보통이에요");
		})
		$("#star4").click(function(){
			$("#hr_rate").val("8");
			$("#startext").html("좋아요");
		})
		$("#star5").click(function(){
			$("#hr_rate").val("10");
			$("#startext").html("최고에요");
		})
	})
	
	$(function(){
	    //ajax form submit
	    $('#frm').ajaxForm({
	    	 
	            beforeSubmit: function () {
	                //validation체크 
	                //막기위해서는 return false를 잡아주면됨
	                return true;
	            },
	            success: function(){
	            	$("#close").trigger("click");	            
	            },
	            error: function(){
	                //에러발생을 위한 code페이지
	            }
	            
	        });
	});

	
	
</script>
<input type="hidden" value="${hrr_no }" id="hrr_no">
<form id="frm" action="/howstay/jsp/mypage/MemberReviewInsert.do" method="get" enctype="application/x-www-form-urlencoded">
<div class="form-group">
<table>
<tr>
<td>제목</td>
<td><input type ="text" name="hr_title" class="form-control"></td>
</tr>
<tr><td><br></td></tr>
<tr>
<td>비밀번호</td>
<td><input type ="password" name="hr_password" class="form-control"></td>
</tr>
<tr><td><br></td></tr>
<tr>
<td>내 용</td>
<td><textarea class="form-control" name="hr_contents" style="width: 400px; height: 150px; resize:none;"></textarea></td>
</tr>
<tr><td><br></td></tr>
<tr>
<td>평점</td>
<td><font id="startext"></font>
<p class="star_rating">
    <a class="" id="star1">★</a>
    <a class="" id="star2">★</a>
    <a class="" id="star3">★</a>
    <a class="" id="star4">★</a>
    <a class="" id="star5">★</a>
       
</p><input type="hidden" name="hr_score" id="hr_rate" class="form-control" readonly="readonly"></td>
</tr>
<tr>
<td><input type ="hidden" name="m_no"value="${m_no }"><input type ="hidden" name="h_no"value="${h_no }"></td>
<td><input type="submit" class="btn btn-success" value="쓰기"id="submit" onclick="progressclick()"></td>

</tr>
</table>
</div>
</form>

</body>
</html>