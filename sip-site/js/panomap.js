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
    return minFeat;
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

    var dig = {
        bounds : new OpenLayers.Bounds(15.887377,41.607326,15.893637,41.611088),
        center : new OpenLayers.LonLat(15.89128,41.609685)
    };

    map.setCenter(dig.center.transform(_projObj.wgs84, _projObj.mercator), 18);

    // create panorama POIs layer and add POIs
    poi_layer = new OpenLayers.Layer.Vector("PanoPOIs", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : true,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://46.105.19.68/cgi-bin/mapserv?map=/home/fradeve/public_html/sip-site/ark-oia/wfs.map&service=WFS',
            featureType : 'pano'
        })
    });

    map.addLayer(poi_layer);

    // create viewer position layer, add, and set starting coordinates
    var viewpos = new OpenLayers.Layer.Vector(
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

    var viewpoint = new OpenLayers.Geometry.Point(15.89128,41.609685);
    var viewptft = new OpenLayers.Feature.Vector(viewpoint.transform(_projObj.wgs84, _projObj.mercator));
    viewpos.addFeatures([viewptft]);
    map.addLayer(viewpos);

    // add dragging to point
    drag = new OpenLayers.Control.DragFeature(viewpos, {
        autoActivate: true,
        onComplete: function() {
            // move viewer position to nearest panorama POI
            var nearest = findClosest(viewpoint, poi_layer);
            viewptft.move(new OpenLayers.LonLat(nearest.geometry.x, nearest.geometry.y));
            console.log(nearest.attributes.pano);
        }
    });

    map.addControl(drag);
    drag.activate();
};
