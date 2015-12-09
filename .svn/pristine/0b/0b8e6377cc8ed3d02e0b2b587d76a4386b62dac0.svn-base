<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
  <head>
  <link rel="stylesheet" type="text/css" href="/howstay/css/datepicker3.css">
  <link rel="stylesheet" type="text/css" href="/howstay/css/bootstrap.css">
  <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
  </head>
  <body>
  <jsp:include page="/jsp/nav.jsp"></jsp:include>
  <script src="/howstay/js/jquery-1.11.3.min.js"></script>
  <script src="/howstay/js/bootstrap.js"></script>
  <script src="/howstay/js/bootstrap-datepicker.js"></script>
  <script src="/howstay/js/bootstrap-datepicker.kr.js" charset="UTF-8"></script>
    <script src="http://maps.google.com/maps/api/js?sensor=false" 
          type="text/javascript"></script>
</head> 
<body>
  <div id="map" style="width: 1000px; height: 800px;"></div>
  <script type="text/javascript">
    var locations = [
      ['삼익사이버 아파트', 37.0211403, 127.0971617, 28],
      ['국립축산과학원 축산자원개발부', 36.93309333, 127.10487485, 10]
    ];
    var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 8,
      center: new google.maps.LatLng(37, 127.1),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });
    var infowindow = new google.maps.InfoWindow();
    var marker, i;
    for (i = 0; i < locations.length; i++) {  
      marker = new google.maps.Marker({
        position: new google.maps.LatLng(locations[i][1], locations[i][2]),
        map: map
      });
      google.maps.event.addListener(marker, 'click', (function(marker, i) {
        return function() {
          infowindow.setContent(locations[i][0]+"<img src='20.jpg'>");
          infowindow.open(map, marker);
        }
      })(marker, i));
    }
  </script>
</body>
</html>