<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Complex icons</title>
      <link href="../CSS/triveni.css" rel="stylesheet" type="text/css" />

  <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.1.min.js"></script>
  <script type="text/javascript" src="../js/units.js"></script>
	<script>


function initialize() {
  var mapOptions = {
    zoom: 10,
    center: new google.maps.LatLng(11.319154,75.918564)
  }
  var map = new google.maps.Map(document.getElementById('map-canvas'),
                                mapOptions);

  setMarkers(map, beaches);
}
var infowindow = new google.maps.InfoWindow({
    maxWidth: 160
  });
// get javascript object here pass it to beach
var beaches = [
  ['Regional Office', 11.253069,75.78281,4],
  ['TSM EastHill', 11.291158,75.774415,5],
  ['TSM Nadakkave', 11.273474,75.774783,3],
  ['TSM Paroppady', 11.294241,75.815177,2],
  ['TSM Kunnamangelam ', 11.305014,75.876385,1]
];

function setMarkers(map, locations) {
  var markers = new Array();
  var marker;
  for (var i = 0; i < locations.length; i++) {
    var beach = locations[i];
    var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
        marker = new google.maps.Marker({
        position: myLatLng,
        map: map,
		title: beach[0],
        //zIndex: beach[3]
    });
        markers.push(marker);
        
		google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
             infowindow.setContent(locations[i][0]);
              marker.setAnimation(google.maps.Animation.BOUNCE);
              infowindow.open(map, marker);
            }
          })(marker, i));
  }
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html>

