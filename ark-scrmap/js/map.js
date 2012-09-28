/**
 * @author fradeve
 */

var map;
var _projObj = {
    wgs84 : new OpenLayers.Projection('EPSG:4326'),
    mercator : new OpenLayers.Projection('EPSG:900913')
};


function init() {
    map = new OpenLayers.Map('map_element', {
        maxExtent : new OpenLayers.Bounds(
            -128 * 156543.0339,
            -128 * 156543.0339,
            128 * 156543.0339,
            128 * 156543.0339),

        maxResolution : 156543.0339,
        units : 'm',

        controls:[
            //allows user pan/zoom ability
            new OpenLayers.Control.Navigation(
                {zoomWheelEnabled : false}
            ),
             
            //displays the pan/zoom tools
            new OpenLayers.Control.PanZoom(),
             
            //displays a layer switcher
            new OpenLayers.Control.LayerSwitcher()

            //displays nice attribution
            //new OpenLayers.Control.Attribution()
        ],

        projection : _projObj.mercator,
        displayProjection : _projObj.wgs84,
		//fractionalZoom: true
    });

    var osm_layer = new OpenLayers.Layer.OSM('OSM Layer', null, {
            transitionEffect: 'resize',
			resolutions: [156543.03390625, 78271.516953125, 39135.7584765625,
						  19567.87923828125, 9783.939619140625, 4891.9698095703125,
						  2445.9849047851562, 1222.9924523925781, 611.4962261962891,
						  305.74811309814453, 152.87405654907226, 76.43702827453613,
						  38.218514137268066, 19.109257068634033, 9.554628534317017,
						  4.777314267158508, 2.388657133579254, 1.194328566789627,
						  0.5971642833948135, 0.25, 0.1, 0.05],
			serverResolutions: [156543.03390625, 78271.516953125, 39135.7584765625,
								19567.87923828125, 9783.939619140625,
								4891.9698095703125, 2445.9849047851562,
								1222.9924523925781, 611.4962261962891,
								305.74811309814453, 152.87405654907226,
								76.43702827453613, 38.218514137268066,
								19.109257068634033, 9.554628534317017,
								4.777314267158508, 2.388657133579254,
								1.194328566789627, 0.5971642833948135]
        });

    map.addLayers([osm_layer]);

    poi_layer = new OpenLayers.Layer.Vector("PanoPOIs", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : false,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://46.105.19.68/cgi-bin/mapserv?map=/home/fradeve/public_html/ark-oia/ark-scrmap/wfs.map&service=WFS',
            featureType : 'pano'
        }),
		styleMap: new OpenLayers.StyleMap({
				externalGraphic : "img/map_icons/panoramicview_simple.png",
				graphicZIndex: 11,
				graphicYOffset: -28,
				pointRadius : 15 
			})
    });

    map.addLayer(poi_layer);

    var gargano = new OpenLayers.Bounds(15.66,41.60,16.14,41.91);
    map.zoomToExtent(gargano.transform(_projObj.wgs84, _projObj.mercator))
};


function onPopupClose(evt) {
    selectFeatureCtrl.unselect(selectedFeature);
};


function onSelect(feature) {
    selectedFeature = feature
    loadScr(feature.attributes.scrid)
    //popup = new OpenLayers.Popup.FramedCloud("popup", feature.geometry.getBounds().getCenterLonLat(), new OpenLayers.Size(200, 200), "<div id='content'> <img src='images/loading.gif'></img> </div>", null, true, onPopupClose);
    //feature.popup = popup;
    //map.addPopup(popup);
};


function onUnselect(feature) {
    $("#responseSCR").html('');
    $('#statistics').attr('data-content', '');
    console.log($('#statistics').attr('data-content'));
    $.pageslide.close();
    //map.removePopup(feature.popup);
    //feature.popup.destroy();
    //feature.popup = null;
};


function loadScr(scr) {
    $.ajax({
        type : 'POST',
        url : '../ark-scrmap/wsgi/golden_retriever.py',
        data : {
                scr : scr
               }
        }).done(function(html) {
            console.log(html);
            //$("#content img").remove();
            $("#responseSCR").append(html);
            $.pageslide({ href: '#responseSCR', modal: true });
            //popup.setSize(new OpenLayers.Size(300, 300))
        })

    $.ajax({
        type : 'POST',
        url : '../ark-scrmap/wsgi/stats.py',
        data : {
                scr : scr
               }
        }).done(function(html) {
            console.log(html);
            $('#statistics').attr('data-content', html)
        })
};


function addSelectedLayer(USType) {
    // before adding new layer, check if there are other layers loaded,
    // and destroy them; since we've one layer loaded a time, we don't need
    // to check layer name (since layer[0] is always OSM WMS)
    // interestin option for name checking
    // var regExp = /Simple/g
    // var testString = "Simple Geometry"
    // f(regExp.test(testString)) {alert("c'è!")}
    if (map.layers.length > 2) {
        map.layers[2].destroy()
    };

    uses_layer = new OpenLayers.Layer.Vector("US Layer", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : true,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://46.105.19.68/cgi-bin/mapserv?map=/home/fradeve/public_html/ark-oia/ark-scrmap/wfs.map&service=WFS',
            featureType : USType
        })
    });

    map.addLayers([uses_layer])

    // operations to do after complete layer loading
    uses_layer.events.register('loadend', uses_layer, function(evt) {

        // zoom to layer extent function after complete layer loading
        map.zoomToExtent(uses_layer.getDataExtent())
    })

    // define the behaviour of geometries in layer when selected
    var selectFeatureCtrl = new OpenLayers.Control.SelectFeature(
        [uses_layer],
        {
            multiple : false,
            toggle : true,
            renderIntent: "select",
            onSelect : onSelect,
            onUnselect : onUnselect
        });

    // define the behaviour of geometries when hover
    var highlightCtrl = new OpenLayers.Control.SelectFeature(
        uses_layer,
        {
            hover: true,
            highlightOnly: true,
            renderIntent: "temporary"
        });

    map.addControl(highlightCtrl);
    map.addControl(selectFeatureCtrl);

    highlightCtrl.activate();
    selectFeatureCtrl.activate();

    default_style = new OpenLayers.Style({
        fill: true,
        fillColor: '#C0C0C0',
        fillOpacity: 0.5,
        strokeColor: 'white'
    });

    select_style = new OpenLayers.Style({
        fill: true,
        fillColor: '#00FF00',
        fillOpacity: 0.5,
        strokeColor: 'white'
    });

    temporary_style = new OpenLayers.Style({
        fill: true,
        fillColor: '#FFCC33',
        fillOpacity: 0.5,
        strokeColor: 'white'
    });

    us_styleMap = new OpenLayers.StyleMap({
        'default' : default_style,
        'select' : select_style,
        'temporary' : temporary_style
    });

    uses_layer.styleMap = us_styleMap
};


function toggleMultiLayer(layername) {
	var curlayer = map.getLayersBy('name', layername)[0]
	if (curlayer.visibility) {
		curlayer.setVisibility(false)
	}else{
		curlayer.setVisibility(true);
	};
    curlayer.events.register('loadend', curlayer, function(evt) {

        // zoom to layer extent function after complete layer loading
        map.zoomToExtent(curlayer.getDataExtent())
    })
};


function getValuesInterval(layername, attribute) {
	var curlayer = map.getLayersBy('name', layername)[0]

    var min = 1000000000000000;
    var minValue = null;
    for (var i = 0; i < curlayer.features.length; i++) {
        var value = curlayer.features[i].attributes[attribute];
        if (value < min) {
            minValue = curlayer.features[i].attributes[attribute];
            min = value
        }
    }

    var max = 0;
    var maxValue = null;
    for (var i = 0; i < curlayer.features.length; i++) {
        var value = curlayer.features[i].attributes[attribute];
        if (value > max) {
            maxValue = curlayer.features[i].attributes[attribute];
            max = value
        }
    }

    interval = (maxValue - minValue);
    return interval
}
