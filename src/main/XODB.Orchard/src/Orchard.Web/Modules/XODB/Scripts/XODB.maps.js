
var neighborhoods = [];
var markers = [];
var descMessage = [];
var bounds = new google.maps.LatLngBounds();
var infowindow = new google.maps.InfoWindow();
var timeout;
var isFirstCall = true;
var xPan = 0;
var map;
var boundsPoly;
var boundsCheckObj;
var CheckBoundsTimer = setInterval(function () { CheckBounds() }, 1000);
var isDragging = false;
var drawDebugViewportPoly = false;


// Construct the map object, and register events
function SetupMap() {
    var mapOptions = {
        zoomLevel: 5,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    map = new google.maps.Map(document.getElementById("map"), mapOptions);

    google.maps.event.addListener(map, 'idle', function () {
        if (!isFirstCall) {
            isDragging = false;
        }
        isFirstCall = false;
    }); //time in ms, that will reset if next 'bounds_changed' call is send, otherwise code will be executed after that time is up

    google.maps.event.addListener(map, 'dragstart', function () {
       isDragging = true;
    }); 
    google.maps.event.addListener(map, 'dragend', function () {
        isDragging = false;
    });
    RedrawMap();
}

// Redraw a map.  This method removes all previous markers and looks a the google latlng opbjects in the 
// neighbourhoods array
function RedrawMap() {
    pageIsLoaded = false;
    bounds = new google.maps.LatLngBounds();
    for (var i = 0 ; i < markers.length; i++) {

        markers[i].setMap(null);
    }
    markers = [];
    
    // try and get existing bounds
    var boundsPassedIn = false;
    var bne = $('#BoundsNE').val();
    var bsw = $('#BoundsSW').val();
    
    if (bne != '') {
        boundsPassedIn = true;
    }
    // if locations exist
    if (neighborhoods.length > 0) {
        mapCentre = neighborhoods[0]
        var count = neighborhoods.length;
        for (var i = 0; i < neighborhoods.length; i++) {
            addMarker(map, neighborhoods[i], descMessage[i]);
            // if no bounds defined (by a zoom or pan action) then manually expand the bounds to fit this marker
            if (boundsPassedIn == false) {
                bounds.extend(neighborhoods[i]);
            }
        }

        if (boundsPassedIn == false) {
            map.fitBounds(bounds);
        } 

    }
    // draw a polygon that represents the current viewport
    if (drawDebugViewportPoly) {
        var mbounds = map.getbounds();
        if (mbounds != null) {
            var ne = mbounds.getnortheast();
            var sw = mbounds.getsouthwest();
            var boundscoords = createboundspolygon(ne, sw);

            if (boundspoly) {
                boundspoly.setmap(null);
            }
            // construct the polygon
            boundspoly = new google.maps.polygon({
                paths: boundscoords,
                strokecolor: '#0000ff',
                strokeopacity: 0.8,
                strokeweight: 2,
                fillcolor: '#ff0000',
                fillopacity: 0.2
            });
            boundspoly.setmap(map);
        }
    }

}

// Check the bounds of the current map, and if they have changed force the location data table to updte
function CheckBounds() {
    if (map && !isDragging) {
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

// this is called when the lcoation data source has been updated and the map needs refreshing
// The locations are found in the HTML, and parsed into google maps compatible objects
function UpdateMap() {
    GetSpatiaObjects();
    RedrawMap();
    pageIsLoaded = true;
}

// Create a polygon that represents the map bounds - useful for debugging dynamic searching etc.
function CreateBoundsPolygon(ne, sw) {
    var x1 = ne.lng();
    var y1 = ne.lat();
    var x2 = sw.lng();
    var y2 = sw.lat();

    var boundCoords = [
          new google.maps.LatLng(y1, x1),
          new google.maps.LatLng(y2, x1),
          new google.maps.LatLng(y2, x2),
          new google.maps.LatLng(y1, x2),
          new google.maps.LatLng(y1, x1)
    ];

    //Bermuda Triangle Test
    var triangleCoords = [new google.maps.LatLng(25.774252, -80.190262), new google.maps.LatLng(18.466465, -66.118292), new google.maps.LatLng(32.321384, -64.75737), new google.maps.LatLng(25.774252, -80.190262)];

    return boundCoords;
}

// This is called when the map has moved or zoomed.  The relevent data (the map bounds and centre point) 
// are collated and stored in page variables, so that the data source can grab them during fresh web queries.
function DoMapUpdateOnMove() {

    var bounds = map.getBounds();
    var ne = bounds.getNorthEast();
    var sw = bounds.getSouthWest();
    var center = map.center;
    var textOut = ne.toString();
    document.getElementById("BoundsNE").value = textOut;
    textOut = sw.toString();
    document.getElementById("BoundsSW").value = textOut;
    $('#BoundsNE').val(ne.toString());
    $('#BoundsSW').val(sw.toString());
    $('#CentreString').val(center.toString());
    var viewport = ne + "," + sw;
    OnMapUpdate(center.toString(), viewport);
}

// Add a parker to the page.  Each marker will be assigned an event which will cause the popup to appear on click
function addMarker(map, markerPos, descMessage) {
    try {
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
            UpdateDetails();
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

// Get the coordinates from the page, that are stored within the .gvResults and .gvResultText divs
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

// Using the text data, construct a valid google maps LatLng object
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

// When the window is loaded, casue the map to intiialise, and populate it with table data
window.onload = function () {
    SetupMap();
    UpdateMap();
};