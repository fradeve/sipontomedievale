/**
 * @author fradeve
 */

var map;
var _projObj = {
    wgs84 : new OpenLayers.Projection('EPSG:4326'),
    mercator : new OpenLayers.Projection('EPSG:900913')
};

var SHADOW_Z_INDEX = 10;
var MARKER_Z_INDEX = 11;


function findClosest(myLoc, myLayer) {
    var min = 1000000000000000;
    var minFeat = null;
    for (var i = 0; i < myLayer.features.length; i++) {
        var dist = Math.sqrt(
            Math.pow(myLoc.x - myLayer.features[i].geometry.x, 2) + 
            Math.pow(myLoc.y - myLayer.features[i].geometry.y, 2)
        )
        if (dist < min) {
            minFeat = myLayer.features[i]; 
            min = dist;
        }
    }
    return minFeat
};


function findStartPoint(poiLayer) {
    startHere = poiLayer.getFeatureByFid('pano.1');
    return startHere
};


function startPov(povLayer, poiLayer) {
    viewpoint = new OpenLayers.Geometry.Point(0,0);
    viewptft = new OpenLayers.Feature.Vector(viewpoint);
    povLayer.addFeatures([viewptft]);

    startPoint = findStartPoint(poiLayer);
    viewptft.move(new OpenLayers.LonLat(startPoint.geometry.x, startPoint.geometry.y));
};


function loadPano(poi, iframeId, containerId) {
    pannellum_iframe = '<iframe title="pannellum panorama viewer" width="800" height="300" webkitAllowFullScreen mozallowfullscreen allowFullScreen style="border-style:none;" id="' + iframeId + '" src="js/pannellum/build/pannellum.htm?panorama=../../../img/panos/pano' + poi.attributes.id + '.jpg&amp;title=' + poi.attributes.title + '&amp;autoload=yes"></iframe>';

    $('#' + containerId).html(pannellum_iframe);

    document.getElementById(iframeId).onload = function() {
        this.contentWindow.zoomIn(poi.attributes.zoomIn);
    };
};


function startDrag(povLayer, poiLayer) {
    // add dragging to point
    drag = new OpenLayers.Control.DragFeature(viewpos, {
        autoActivate: true,
        onComplete: function() {
            // move viewer position to nearest panorama POI
            var nearest = findClosest(viewpoint, poi_layer);
            viewptft.move(new OpenLayers.LonLat(nearest.geometry.x, nearest.geometry.y));
            console.log(nearest.attributes.desc);

            loadPano(nearest, "pannellum_7DV1CB6d4a", "useful-container");
        }
    });

    map.addControl(drag);
    drag.activate();
};


function startmap() {
    var options =  {
        maxExtent : new OpenLayers.Bounds(
            -128 * 156543.0339,
            -128 * 156543.0339,
            128 * 156543.0339,
            128 * 156543.0339
        ),
        maxResolution : 156543.0339,
        units : 'm',
        controls:[
            //allows user pan/zoom ability
            new OpenLayers.Control.Navigation(
                {zoomWheelEnabled : false}
            ),
            //displays the pan tools
            new OpenLayers.Control.PanPanel(),
            //displays the zoom tools
            new OpenLayers.Control.ZoomPanel(),
        ],
        projection : _projObj.mercator,
        displayProjection : _projObj.wgs84
    };

    map = new OpenLayers.Map('map_element', options);

    // create base map layer, add and center on digging site
    var osm_layer = new OpenLayers.Layer.OSM('OSM Layer', null, {
            transitionEffect: "resize"
        }
    );

    map.addLayer(osm_layer);

    // create panorama POIs layer and add POIs
    poi_layer = new OpenLayers.Layer.Vector("PanoPOIs", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : true,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://46.105.19.68/cgi-bin/mapserv?map=/home/fradeve/public_html/ark-oia/ark-scrmap/wfs.map&service=WFS',
            featureType : 'pano'
        })
    });

    map.addLayer(poi_layer);
    // operations to do after complete POI layer loading
    poi_layer.events.register('loadend', poi_layer, function(evt) {
        // zoom to layer extent function after complete layer loading
        map.zoomToExtent(poi_layer.getDataExtent());
    })

    // create viewer position layer, add, and set starting coordinates
    viewpos = new OpenLayers.Layer.Vector(
        "Viewer position",
        {
            styleMap: new OpenLayers.StyleMap(
                {
                    externalGraphic : "img/map_icons/panoramicview.png",
                    backgroundGraphic : "img/marker_shadow.png",
                    backgroundXOffset : 0,
                    backgroundYOffset : -7,
                    graphicZIndex: MARKER_Z_INDEX,
                    backgroundGraphicZIndex: SHADOW_Z_INDEX,
                    pointRadius : 15 
                }
            )
        }
    );

    map.addLayer(viewpos);

}
