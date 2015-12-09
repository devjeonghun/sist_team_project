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
  
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
 <!-- GoogoleMap Asynchronously Loading the API ********************************************* -->
<script type="text/javascript">
var locatintext='';
    function initialize() {
     
        var mapOptions = {
                            zoom: 18, // ������ ����� ���� �� ũ��
                            mapTypeId: google.maps.MapTypeId.ROADMAP
                        };
         
         
        var map = new google.maps.Map(document.getElementById("map-canvas"), // div�� id�� ���� ���ƾ� ��. "map-canvas"
                                    mapOptions);
         
        var size_x = 40; // ��Ŀ�� ����� �̹����� ���� ũ��
        var size_y = 40; // ��Ŀ�� ����� �̹����� ���� ũ��
     
        // ��Ŀ�� ����� �̹��� �ּ�
        var image = new google.maps.MarkerImage( '�ּ� ���⿡ ����!',
                                                    new google.maps.Size(size_x, size_y),
                                                    '',
                                                    '',
                                                    new google.maps.Size(size_x, size_y));
         
        // Geocoding *****************************************************
        var address = '���￪'; // DB���� �ּ� �����ͼ� �˻��ϰų� ���ʰ� ���� �ּҸ� �ٷ� �ڵ�.
        var marker = null;
        var geocoder = new google.maps.Geocoder();
        geocoder.geocode( { 'address': address}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                console.log(results[0].geometry.location);
                marker = new google.maps.Marker({
                                map: map,
                                icon: image, // ��Ŀ�� ����� �̹���(����)
                                title: '�ѹ絵����', // ��Ŀ�� ���콺 ����Ʈ�� ���ٴ��� �� �ߴ� Ÿ��Ʋ
                                position: results[0].geometry.location
                            });
 
                var content = "�ѹ絵����<br/><br/>Tel: 042-580-4114"; // ��ǳ�� �ȿ� �� ����
                locationtext = results[0].geometry.location;
                // ��Ŀ�� Ŭ������ ���� �̺�Ʈ. ��ǳ�� ��~
                var infowindow = new google.maps.InfoWindow({ content: content});
                google.maps.event.addListener(marker, "click", function() {infowindow.open(map,marker);});
            } else {
                alert("Geocode was not successful for the following reason: " + status);
            }
          $('#1').val(locatintext);
          console.log(locatintext);
        });
        // Geocoding // *****************************************************
         
    }
    google.maps.event.addDomListener(window, 'load', initialize);
</script>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<input type="text" id="1">
<input type="text" id="2">
<div id="map-canvas" style="width: 100%; height: 340px" title="������ ��ġ�Դϴ�."></div>

  </body>
</html>