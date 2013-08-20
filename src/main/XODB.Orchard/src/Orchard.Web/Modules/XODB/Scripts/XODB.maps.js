
var neighborhoods = [];
var markers = [];
var descMessage = [];

var bounds = new google.maps.LatLngBounds();
var infowindow = new google.maps.InfoWindow();
var timeout;
var isFirstCall = true;
var xPan = 0;
var map;

var boundsCheckObj;
var CheckBoundsTimer = setInterval(function () { CheckBounds() }, 1000);


function SetupMap() {
    var mapOptions = {
        zoomLevel: 5,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map"), mapOptions);

    google.maps.event.addListener(map, 'idle', function () {
        if (!isFirstCall) {
         //   DoMapUpdateOnMove();
        }
        isFirstCall = false;
    }); //time in ms, that will reset if next 'bounds_changed' call is send, otherwise code will be executed after that time is up

    RedrawMap();
}

function RedrawMap() {
    pageIsLoaded = false;
    bounds = new google.maps.LatLngBounds();
    for (var i = 0 ; i < markers.length; i++) {

        markers[i].setMap(null);
    }
    markers = [];
    //  descMessage = [];
    //  neighborhoods = [];

    // try and get existing bounds
    var boundsPassedIn = false;
    var bne = $('#BoundsNE').val();
    var bsw = $('#BoundsSW').val();
    if (bne != '') {
        boundsPassedIn = true;
    }

    //var mapCentre = neighborhoods[i];
    if (neighborhoods.length > 0) {
        mapCentre = neighborhoods[0]
        var count = neighborhoods.length;
        for (var i = 0; i < neighborhoods.length; i++) {
            addMarker(map, neighborhoods[i], descMessage[i]);
            if (boundsPassedIn == false) {
                bounds.extend(neighborhoods[i]);
            }
        }

        if (boundsPassedIn == false) {
            map.fitBounds(bounds);
        }



    }

}

function CheckBounds() {
    if (map) {
        var localBounds = map.getBounds();
        if (!boundsCheckObj) {
            boundsCheckObj = localBounds;
        }
        if (boundsCheckObj.toString() != localBounds.toString()) {
            //alert('Bounds have changed - do an update');
            boundsCheckObj = localBounds;
            DoMapUpdateOnMove();
        }
    }
}

function UpdateMap() {
    GetSpatiaObjects();
    RedrawMap();
    pageIsLoaded = true;
}

function CreateBoundsPolygon(ne, sw) {
    var x1 = ne.lng();
    var y1 = ne.lat();
    var x2 = sw.lng();
    var y2 = sw.lat();

    var boundCoords = [
          new google.maps.LatLng(x1, y1),
          new google.maps.LatLng(x1, y2),
          new google.maps.LatLng(x2, y2),
          new google.maps.LatLng(x2, y1),
          new google.maps.LatLng(x1, y1)
    ];

    //Bermuda Triangle Test
    var triangleCoords = [new google.maps.LatLng(25.774252, -80.190262), new google.maps.LatLng(18.466465, -66.118292), new google.maps.LatLng(32.321384, -64.75737), new google.maps.LatLng(25.774252, -80.190262)];

    return boundCoords;
}


function DoMapUpdateOnMove() {

    var bounds = map.getBounds();
    var ne = bounds.getNorthEast();
    var sw = bounds.getSouthWest();
    //do whatever you want with those bounds
    var textOut = ne.toString();
    document.getElementById("BoundsNE").value = textOut;

    textOut = sw.toString();
    document.getElementById("BoundsSW").value = textOut;

    $('#BoundsNE').val(ne.toString());
    $('#BoundsSW').val(sw.toString());
    $('#CentreString').val(map.centre);


    var centre = map.centre;
    var viewport = ne + "," + sw;

    OnMapUpdate(centre, viewport);

}

function addMarker(map, markerPos, descMessage) {
    try {
        //  alert("Position passed = " + markerPos);
        var mark1 = new google.maps.Marker({
            position: markerPos,
            map: map,
            draggable: false,
            title: descMessage
        });

        markers.push(mark1);



        var cont2 = descMessage;

        google.maps.event.addListener(mark1, 'click', function (event) {
            infowindow.setContent("<html><body><br><b>" + cont2 + "</b></body></html>");
            infowindow.setPosition(event.latLng);
            infowindow.open(map, mark1);
        });

    } catch (err) {
        alert("Error with data " + err);
    }


}
if (!String.prototype.startsWith) {
    String.prototype.startsWith = function (str) {
        return !this.indexOf(str);
    }
}

function GetSpatiaObjects() {
    var pointObs = [];
    var pointDescriptions = [];
    //could use document.getElementsByClassName
    $('.gvResultID').each(function (index, element) {
        pointObs.push(ParseLocationData(element.innerHTML));
    });
    $('.gvResultText').each(function (index, element) {
        pointDescriptions.push(element.innerHTML);
    });
    neighborhoods = pointObs;
    descMessage = pointDescriptions;
}


function ParseLocationData(locationInput) {
    // single points look like this: SRID=4326;POINT (-90.1704 42.95081)
    //Need to add collections/polygons etc.

    var sA = locationInput.split(";");
    var sB = sA[1];
    var str = sB.split(" ");
    var theType = str[0];
    var s1 = str[1];
    var s2 = str[2];
    var lat = s1.substring(1, s1.length);

    var lA = s2.split(")");
    var lon = lA[0];
    // not trim off any brackets

    var ml = new google.maps.LatLng(lon, lat)


    return ml;
}

window.onload = function () {
    SetupMap();
    UpdateMap();
};