var bounds = new google.maps.LatLngBounds();
var infowindow = new google.maps.InfoWindow();
var timeout = 50;
var CheckBoundsTimer = setInterval(function () { CheckBounds() }, timeout);
var map;
var boundsPoly;
var boundsCheckObj;
var CheckedBounds = 0; 
var drawDebugViewportPoly = false;
var mapOverlays = new Array(); //ALL THE MAP DATA IS STORED HERE
var selectedShape;
var geocoder;
var drawingManager;
var uluru;
var path = new google.maps.MVCArray;
var pageIsLoaded = false;

// Construct the map object, and register events
function SetupMap() {
    uluru = new google.maps.LatLng(-25.344, 131.036);
    geocoder = new google.maps.Geocoder();
    map = new google.maps.Map(document.getElementById("map"), {
        zoom: 5,
        center: uluru,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    });

    //google.maps.event.addListener(map, 'idle', function () {
    //}); //time in ms, that will reset if next 'bounds_changed' call is send, otherwise code will be executed after that time is up

    google.maps.event.addListener(map, 'dragstart', function () {
        CheckedBounds = 1;
    }); 

    //google.maps.event.addListener(map, 'dragend', function () {
    //});

    google.maps.event.addListener(map, 'zoom_changed', function () {
        CheckedBounds = 1;
    });

    RedrawMap();
}

function SetupDrawingMap() {
    SetupMap();
    map.setZoom(8);
    map.setMapTypeId(google.maps.MapTypeId.SATELLITE);
    //poly = new google.maps.Polygon({
    //    strokeWeight: 3,
    //    fillColor: '#5555FF'

    //});
    //poly.setMap(map);
    //poly.setPaths(new google.maps.MVCArray([path]));
    //poly.setOptions({
    //    editable: true
    //});

    //        google.maps.event.addListener(poly, 'mouseover', function () {
    //            poly.setOptions({
    //                editable: true
    //            });
    //        });
    //        google.maps.event.addListener(poly, 'mouseout', function () {
    //            poly.setOptions({
    //                editable: false
    //            });
    //        });

    //  google.maps.event.addListener(map, 'click', addPoint);

    //,        google.maps.drawing.OverlayType.RECTANGLE

    drawingManager = new google.maps.drawing.DrawingManager({
        drawingMode: google.maps.drawing.OverlayType.POLYGON,
        drawingControl: true,
        drawingControlOptions: {
            position: google.maps.ControlPosition.TOP_CENTER,
            drawingModes: [
    google.maps.drawing.OverlayType.MARKER,
    google.maps.drawing.OverlayType.POLYGON
            ]
        },
        polygonOptions: {
            fillColor: '#ff0000',
            tr: 0.5,
            fillOpacity: 0.5,
            strokeWeight: 1,
            clickable: true,
            zIndex: 1,
            editable: true
        },
        markerOptions: {
            fillColor: '#ff0000',
            clickable: true,
            zIndex: 1,
            dragable: true
        }

    });


    google.maps.event.addListener(drawingManager, "overlaycomplete", OverlayDone);


    //        google.maps.event.addListener(drawingManager, 'overlaycomplete', function (e) {
    //            if (e.type != google.maps.drawing.OverlayType.MARKER) {
    //                // Switch back to non-drawing mode after drawing a shape.
    //                drawingManager.setDrawingMode(null);

    //                // Add an event listener that selects the newly-drawn shape when the user
    //                // mouses down on it.
    //                var newShape = e.overlay;
    //                newShape.type = e.type;
    //                google.maps.event.addListener(newShape, 'click', function () {
    //                    SetSelection(newShape);
    //                });
    //                SetSelection(newShape);
    //            }
    //        });
    google.maps.event.addListener(drawingManager, 'drawingmode_changed', ClearSelection);
    google.maps.event.addListener(map, 'click', ClearSelection);
    // google.maps.event.addDomListener(document.getElementById('delete-button'), 'click', DeleteSelectedShape);


    drawingManager.setMap(map);
    drawingManager.setDrawingMode(null);
    //google.maps.event.addListener(map, 'bounds_changed', function () {
    //    var bounds = map.getBounds();
    //    var ne = bounds.getNorthEast();
    //    var sw = bounds.getSouthWest();
    //    //do whatever you want with those bounds
    //    var textOut = ne.toString();
    //    document.getElementById("BoundsNE").value = textOut;
    //    textOut = sw.toString();
    //    document.getElementById("BoundsSW").value = textOut;

    //    //alert('Pan finished now bounds are ' + soutWest + 'S and ' + northEast);
    //});



}

// Redraw a map.  This method removes all previous markers and looks a the google latlng opbjects in the 
// points array
function RedrawMap() {
    pageIsLoaded = false;
    bounds = new google.maps.LatLngBounds();
    // try and get existing bounds
    var boundsPassedIn = false;
    var bne = $('#BoundsNE').val();
    var bsw = $('#BoundsSW').val();
    
    if (bne != '') {
        boundsPassedIn = true;
    }
    DeleteShapes();
    var spatial = GetSpatialObjects();
    // if geography exist
    if (spatial.length > 0) {
        for (var i = 0; i < spatial.length; i++) {
            if (spatial[i] && spatial[i].geography instanceof google.maps.LatLng) {
                AddMarker(map, spatial[i].geography, false, spatial[i].description);
                // if no bounds defined (by a zoom or pan action) then manually expand the bounds to fit this marker
                if (boundsPassedIn == false) {
                    bounds.extend(spatial[i].geography);
                }
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
    if (map) {
        var localBounds = map.getBounds();
        if (!localBounds)
            return;
        if (!boundsCheckObj) {
            boundsCheckObj = localBounds;
            return;
        }
        if (boundsCheckObj.toString() != localBounds.toString()) {
            //get ready to redraw
            CheckedBounds = 1;
        }
        if (CheckedBounds > 0 && boundsCheckObj.toString() == localBounds.toString()) {
            if (CheckedBounds % 6 == 0) { //300msec = 6*50msec from poll above 'CheckBoundsTimer'
                //alert('Bounds have changed - do an update');
                CheckedBounds = 0;
                MapUpdated({ eventType: 'BOUNDS' });
                return;
            }
            else {
                CheckedBounds++;
            }
        }
        boundsCheckObj = localBounds;
    }
}

// this is called when the lcoation data source has been updated and the map needs refreshing
// The locations are found in the HTML, and parsed into google maps compatible objects
function UpdateMap() {
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
function MapUpdated(event) {

    var bounds = map.getBounds();
    var ne = bounds.getNorthEast();
    var sw = bounds.getSouthWest();
    var center = map.center;
    $('#BoundsNE').val(ne.toString());
    $('#BoundsSW').val(sw.toString());
    $('#CentreString').val(center.toString());
    var viewport = ne + "," + sw;
    OnMapUpdate(event, center.toString(), viewport);
}

// Add a parker to the page.  Each marker will be assigned an event which will cause the popup to appear on click
function AddMarker(map, location, editable, popupText) {
    try {
        if (!editable)
            editable = false;
        var marker = new google.maps.Marker({
            position: location,
            map: map,
            draggable: editable,
            title: popupText
        });
        mapOverlays.push(marker);
        SetSelection(marker);
        AddMarkerClickEvent(marker, popupText);
    } catch (err) {
        alert("Error with data " + err);
    }
}

function AddMarkerClickEvent(marker, popupText) {
    if (popupText != null && popupText != "") {
        google.maps.event.addListener(marker, 'click', function (event) {
            infowindow.setContent("<html><body><br><b>" + popupText + "</b></body></html>");
            infowindow.setPosition(event.latLng);
            infowindow.open(map, marker);
            SetSelection(marker);
        });
    }
}

function AddPolygon(map, polygonArray, editable, popupText) {
    //grep should be replaced with tha call to your backend for getting data for fk_id
    if (!editable)
        editable = false;
    var polygon = new google.maps.Polygon({
        paths: polygonArray,
        strokeColor: "#FF8800",
        strokeOpacity: 0.8,
        strokeWeight: 3,
        fillColor: "#FF8800",
        fillOpacity: 0.35,
        editable: editable
    });
    polygon.setMap(map);
    mapOverlays.push(polygon);
    SetSelection(polygon);
    AddPolygonClickEvent(polygon, popupText);
}

function AddPolygonClickEvent(polygon, popuptext) {
    google.maps.event.addListener(polygon, 'click', function () {
        SetSelection(polygon);
    });
}

if (!String.prototype.startsWith) {
    String.prototype.startsWith = function (str) {
        return !this.indexOf(str);
    }
}

// Get the coordinates from the page, that are stored within the .gvResults and .gvResultText divs
function GetSpatialObjects() {
    var spatial = [];
    //could use document.getElementsByClassName
    $('.gvResultID').each(function (index, element) {
        if (!spatial[index]) spatial[index] = {};
        spatial[index].geography = ParseLocationData(element.innerHTML);
    });
    $('.gvResultText').each(function (index, element) {
        if (!spatial[index]) spatial[index] = {};
        spatial[index].description = element.innerHTML;
    });
    //TODO: do locations and provinces and lines
    return spatial;
}

// Using the text data, construct a valid google maps LatLng object
function ParseLocationData(locationInput) {
    // single points look like this: SRID=4326;POINT (-90.1704 42.95081)
    var p = locationInput.toLowerCase().indexOf('point');
    if (p < 0)
        throw "Bad Location, or not yet implemented."
    var pe = locationInput.toLowerCase().indexOf(')', p + 1);
    var pt = locationInput.substring(p + 6, pe).replace(/[\()]/g, '').replace(/[,;: +]/g, ':').split(':');
    var ml = new google.maps.LatLng(pt[1], pt[0])
    return ml;
}

function GetAddressLocation(address, callee) {
    geocoder.geocode({ 'address': address }, function (results, status) {
        if (status == google.maps.GeocoderStatus.OK) {
            callee(new google.maps.LatLng(results[0].geometry.location.lat(), results[0].geometry.location.lng()));
        } 
    });
}


function ClearSelection() {
    if (selectedShape && selectedShape instanceof google.maps.Polygon) {
        selectedShape.setEditable(false);
    }
    selectedShape = null;
}


function DeleteSelectedShape() {
    if (selectedShape) {
        selectedShape.setMap(null);
        if (selectedShape instanceof google.maps.Polygon) {

        }
        else if (selectedShape instanceof google.maps.Marker) {

        }

    }
    delete selectedShape;
    selectedShape = null;
}

function DeleteShapes() {
    for (var i = 0 ; i < mapOverlays.length; i++) {

        mapOverlays[i].setMap(null);
        delete mapOverlays[i];
    }
    mapOverlays = [];
}

function SetSelection(shape) {
    if (!drawingManager || !pageIsLoaded)
        return;
    ClearSelection();
    //selectedShape.setStrokeWeight(1);
    selectedShape = shape;
    if (selectedShape) {
        if (selectedShape instanceof google.maps.Polygon) {
            selectedShape.setEditable(true);
        }
    }
    //shape.setStrokeWeight(2);
    //selectColor(shape.get('fillColor') || shape.get('strokeColor'));
    drawingManager.changed();
}

/////////////////////////////////////
///MERGE ////////
//////////////////////////////



function DrawPolyFromText(polygon) {

    if (!polygon) {
        //fake database info
        polygon = [
         new google.maps.LatLng(-25.204785835916102, 131.275634765625),
         new google.maps.LatLng(-25.229634139099637, 132.82470703125),
         new google.maps.LatLng(-26.244002317636177, 131.275634765625)
        ];
    }

    //write polygon in map
    AddPolygon(map,polygon,true);

}


function OverlayDone(event) {

    drawingManager.setDrawingMode(null);
    event.overlay.uniqueid = NewGUID();
    event.overlay.title = "";
    event.overlay.content = "";
    event.overlay.type = event.type;
    mapOverlays.push(event.overlay);

    var newShape = event.overlay;
    newShape.type = event.type;
    google.maps.event.addListener(newShape, 'click', function () {
        SetSelection(newShape);
    });
    SetSelection(newShape);
    MapUpdated({ eventType: 'EDITED' });
    //AttachClickListener(event.overlay);
    //openInfowindow(event.overlay, getShapeCenter(event.overlay), getEditorContent(event.overlay));
}


function MapObjects() {
    var tmpMap = new Object;

    var outputString = "";
    var tmpOverlay, paths;
    tmpMap.zoom = map.getZoom();
    tmpMap.tilt = map.getTilt();
    tmpMap.mapTypeId = map.getMapTypeId();
    tmpMap.center = { lat: map.getCenter().lat(), lng: map.getCenter().lng() };
    tmpMap.overlays = new Array();

    for (var i = 0; i < mapOverlays.length; i++) {
        if (mapOverlays[i].getMap() == null) {
            continue;
        }
        tmpOverlay = new Object;
        tmpOverlay.type = mapOverlays[i].type;
        tmpOverlay.title = mapOverlays[i].title;
        tmpOverlay.content = mapOverlays[i].content;

        if (mapOverlays[i].fillColor) {
            tmpOverlay.fillColor = mapOverlays[i].fillColor;
        }

        if (mapOverlays[i].fillOpacity) {
            tmpOverlay.fillOpacity = mapOverlays[i].fillOpacity;
        }

        if (mapOverlays[i].strokeColor) {
            tmpOverlay.strokeColor = mapOverlays[i].strokeColor;
        }

        if (mapOverlays[i].strokeOpacity) {
            tmpOverlay.strokeOpacity = mapOverlays[i].strokeOpacity;
        }

        if (mapOverlays[i].strokeWeight) {
            tmpOverlay.strokeWeight = mapOverlays[i].strokeWeight;
        }

        if (mapOverlays[i].icon) {
            tmpOverlay.icon = mapOverlays[i].icon;
        }

        if (mapOverlays[i].flat) {
            tmpOverlay.flat = mapOverlays[i].flat;
        }

        if (mapOverlays[i].type == "polygon" || typeof (mapOverlays[i]) == google.maps.Polygon) {
            tmpOverlay.paths = new Array();
            paths = mapOverlays[i].getPaths();
            outputString += "\n";
            for (var j = 0; j < paths.length; j++) {
                tmpOverlay.paths[j] = new Array();
                for (var k = 0; k < paths.getAt(j).length; k++) {
                    tmpOverlay.paths[j][k] = { lat: paths.getAt(j).getAt(k).lat().toString(), lng: paths.getAt(j).getAt(k).lng().toString() };
                    outputString += paths.getAt(j).getAt(k).lat().toString() + "," + paths.getAt(j).getAt(k).lng().toString() + "\n";
                }
            }

        } else if (mapOverlays[i].type == "polyline") {
            tmpOverlay.path = new Array();
            path = mapOverlays[i].getPath();
            for (var j = 0; j < path.length; j++) {
                tmpOverlay.path[j] = { lat: path.getAt(j).lat().toString(), lng: path.getAt(j).lng().toString() };
            }

        } else if (mapOverlays[i].type == "circle") {
            tmpOverlay.center = { lat: mapOverlays[i].getCenter().lat(), lng: mapOverlays[i].getCenter().lng() };
            tmpOverlay.radius = mapOverlays[i].radius;
        } else if (mapOverlays[i].type == "rectangle") {
            tmpOverlay.bounds = {
                sw: { lat: mapOverlays[i].getBounds().getSouthWest().lat(), lng: mapOverlays[i].getBounds().getSouthWest().lng() },
                ne: { lat: mapOverlays[i].getBounds().getNorthEast().lat(), lng: mapOverlays[i].getBounds().getNorthEast().lng() }
            };
        } else if (mapOverlays[i].type == "marker") {
            outputString += "Point " + i + "\n";
            tmpOverlay.position = { lat: mapOverlays[i].getPosition().lat(), lng: mapOverlays[i].getPosition().lng() };
            outputString += mapOverlays[i].getPosition().lat() + "," + mapOverlays[i].getPosition().lng() + "\n";
        } else {

            alert("Type: " + mapOverlays[i].type);

        }
        tmpMap.overlays.push(tmpOverlay);
    }

    return outputString;

}


// When the window is loaded, casue the map to intiialise, and populate it with table data
window.onload = function () {
    SetupMap();
    UpdateMap();
};