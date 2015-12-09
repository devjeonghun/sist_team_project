<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<script charset="UTF-8" type="text/javascript" src="/howstay/script/jquery-2.1.4.min.js"></script>
<script charset="UTF-8" type="text/javascript">

function InfoView(hr_no){
	$(function(){
		$.ajax({
			url:'/howstay/jsp/house/houseInfoReviewInfo.do?hr_no='+hr_no+'&hflag=1',
			dataType:"html",
			success:function(data){
				//alert(data);
				$("#ajax_div").html(data);
			}
		});
	});
}


$(function(){
	$.ajax({
		url:'/howstay/jsp/house/houseInfoReview.do?h_no='+$('#inputV').val()+'&page=1&hflag='+$('#inputVH').val(),
		dataType:"JSON",
		success:function(data){
			//alert(data);
			$.each(data, function(i, ReviewL){
				$("#reviewList").append("<tr><td>"+ReviewL.hr_no+"</td><td>"+ReviewL.m_name+
						"</td><td><B><a href='javascript:InfoView("+ReviewL.hr_no+")'>"+ReviewL.hr_title+"</a></B></td>"+
						"<td>"+ReviewL.hr_regdate+"</td><td>"+ReviewL.hr_hit+"</td><td>"+ReviewL.hr_score+"</td><td>"+ReviewL.h_like+"</td></tr>")
			
			});
		}
	});
});

</script>


</head>
<body>
<div class="row" id="ajax_div">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading" align="center">
                            <h1><B>이용후기 게시판</B></h1>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <colgroup>
								<col width="5%" />
								<col width="10%" />
								<col width="40%" />
								<col width="15%" />
								<col width="10%" />
								<col width="10%" />
								<col width="10%" />

							</colgroup>
                                    <thead>
                                        <tr class="info" style="font-family: verdana; font-size: 1.3em">
                                            <th scope="col">NO.</th>
											<th scope="col">글쓴이</th>
											<th scope="col">이용 후기</th>
											<th scope="col">date</th>
											<th scope="col">hit</th>
											<th scope="col">평점</th>
											<th scope="col">like</th>
                                        </tr>
                                    </thead>
                                  <tbody id="reviewList">
                                  	      
                                  </tbody>
                               
                                </table>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->

</body>
</html>