<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="/howstay/css/datepicker3.css">
  <link rel="stylesheet" type="text/css" href="/howstay/css/bootstrap.css"> 
  </head>
  <body>  
  <script src="/howstay/js/jquery-1.11.3.min.js"></script>
  <script src="/howstay/js/bootstrap.js"></script>
  <script src="/howstay/js/bootstrap-datepicker.js"></script>
  <script src="/howstay/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script>
</head> 
<body>
���ȣ<input type="text" id="no" >
����<input type="text" id="lat" >
�浵<input type="text" id="long" >
<input type="button" onclick="search()" value="���"><br/>
<textarea id="result">

</textarea>
<script>
function search(){
	var no = $("#no").val();
	var no1 = $("#lat").val();
	var no2 = $("#long").val();
	
	var result="UPDATE HOUSE SET H_LAT ="+no1+",H_LONG ="+no2+" WHERE H_NO ="+no;
	var text=$('#result').val();
	$('#result').val(text+"\n"+result+";");
}
</script>
</body>
</html>