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
        units : 'm',
        theme: null,

        controls:[
            //allows user pan/zoom ability
            new OpenLayers.Control.Navigation(
                {zoomWheelEnabled : false}
            ),
             
            //displays the pan/zoom tools
            new OpenLayers.Control.ZoomPanel()
        ],

	eventListeners : {
	    'zoomend' : hide_basemap
	},

        projection : _projObj.mercator,
        displayProjection : _projObj.wgs84
    });

    osm_layer = new OpenLayers.Layer.OSM('OSM Layer', null, {
        maxExtent : new OpenLayers.Bounds(
            -128 * 156543.0339,
            -128 * 156543.0339,
            128 * 156543.0339,
            128 * 156543.0339),
        maxResolution : 156543.03390625,
        resolutions: [
                        156543.03390625,
                        78271.516953125,
                        39135.7584765625,
                        19567.87923828125,
                        9783.939619140625,
                        4891.9698095703125,
                        2445.9849047851562,
                        1222.9924523925781,
                        611.4962261962891,
                        305.74811309814453,
                        152.87405654907226,
                        76.43702827453613,
                        38.218514137268066,
                        19.109257068634033,
                        9.554628534317017,
                        4.777314267158508,
                        2.388657133579254,
                        1.194328566789627,
                        0.5971642833948135,
                        0.25,
                        0.1,
                        0.05
                    ],
        serverResolutions: [
                        156543.03390625,
                        78271.516953125,
                        39135.7584765625,
                        19567.87923828125,
                        9783.939619140625,
                        4891.9698095703125,
                        2445.9849047851562,
                        1222.9924523925781,
                        611.4962261962891,
                        305.74811309814453,
                        152.87405654907226,
                        76.43702827453613,
                        38.218514137268066,
                        19.109257068634033,
                        9.554628534317017,
                        4.777314267158508,
                        2.388657133579254,
                        1.194328566789627,
                        0.5971642833948135
                         ],
	transitionEffect: 'resize'
    });

    map.addLayers([osm_layer]);

    /*** START background layers configuration ***/

    // create a new style and add rules
    var defStyle = new OpenLayers.Style({
       strokeWidth: 0
    });

    defStyle.addRules([

	new OpenLayers.Rule({
	    symbolizer: {
	        strokeColor: "#FDD6A4",
	        strokeWidth: 15
	    },
	    filter: new OpenLayers.Filter.Comparison({
	        type: OpenLayers.Filter.Comparison.EQUAL_TO,
	        property: 'obj',
	        value: 'road'
	    })
        }),

	new OpenLayers.Rule({
	    symbolizer: {
	        strokeColor: "#A09E9B",
	        strokeWidth: 3
	    },
	    filter: new OpenLayers.Filter.Comparison({
	        type: OpenLayers.Filter.Comparison.EQUAL_TO,
	        property: 'obj',
	        value: 'fence'
	    })
        }),

	new OpenLayers.Rule({
	    symbolizer: {
	        strokeColor: "#999999",
	        strokeWidth: 4
	    },
	    filter: new OpenLayers.Filter.Comparison({
	        type: OpenLayers.Filter.Comparison.EQUAL_TO,
	        property: 'obj',
	        value: 'rail'
	    })
        }),

	new OpenLayers.Rule({
	    symbolizer: {
	        strokeColor: "#F9998D",
	        strokeWidth: 3
	    },
	    filter: new OpenLayers.Filter.Comparison({
	        type: OpenLayers.Filter.Comparison.EQUAL_TO,
	        property: 'obj',
	        value: 'path'
	    })
        })
    ]);

    var myStyleMap = new OpenLayers.StyleMap({
	'default': defStyle
    });

    back_lines_layer = new OpenLayers.Layer.Vector("back_lines", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : true,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://sipontomedievale.it/cgi-bin/mapserv?map=/home/oia/public_html/sipontomedievale/sip-site/ark-scrmap/wfs.map&service=WFS',
            featureType : 'back_lines'
        }),
	styleMap   : myStyleMap
    });

    map.addLayer(back_lines_layer);

    console.log('added back_lines_layer')

    /*** END background layers configuration ***/

    poi_layer = new OpenLayers.Layer.Vector("PanoPOIs", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : false,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://sipontomedievale.it/cgi-bin/mapserv?map=/home/oia/public_html/sipontomedievale/sip-site/ark-scrmap/wfs.map&service=WFS',
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

    models_layer = new OpenLayers.Layer.Vector("models", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : false,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://sipontomedievale.it/cgi-bin/mapserv?map=/home/oia/public_html/sipontomedievale/sip-site/ark-scrmap/wfs.map&service=WFS',
            featureType : 'models'
        }),
	styleMap: new OpenLayers.StyleMap({
	    externalGraphic : "img/map_icons/star-3.png",
	    graphicZIndex: 11,
	    graphicYOffset: -28,
	    pointRadius : 15 
	})
    });

    map.addLayer(models_layer);

    var selectFeatureCtrl = new OpenLayers.Control.SelectFeature(
        [models_layer],
        {
            multiple : false,
            toggle : true,
            renderIntent: "select",
            onSelect : onSelectModel,
            onUnselect : onUnselectModel
        });

    // define the behaviour of geometries when hover
    var highlightCtrl = new OpenLayers.Control.SelectFeature(
        models_layer,
        {
            hover: true,
            highlightOnly: true,
            renderIntent: "temporary"
        });

    map.addControl(highlightCtrl);
    map.addControl(selectFeatureCtrl);

    highlightCtrl.activate();
    selectFeatureCtrl.activate();

    var gargano = new OpenLayers.Bounds(15.66,41.60,16.14,41.91);
    map.zoomToExtent(gargano.transform(_projObj.wgs84, _projObj.mercator))
};


function onSelect(feature) {
    selectedFeature = feature;
    loadScr(feature.attributes.scrid)
};


function onUnselect(feature) {
    $("#responseSCR").html('');
    $('#statistics').attr('data-content', '');
    console.log($('#statistics').attr('data-content'));
    $.pageslide.close();
};


function onSelectModel(feature) {
    console.log(feature);
    $.ajax({
        type : 'POST',
        url : '../ark-scrmap/wsgi/model_builder.py',
        data : {
                filename: feature.attributes['filename'],
                name : feature.attributes['name'],
                state : feature.attributes['state'],
                desc : feature.attributes['desc'],
                mat : feature.attributes['mat'],
                from : feature.attributes['from']
               }
        }).done(function(html) {
            console.log(html);
            $("#responseSCR").append(html);
            $.pageslide({ href: '#responseSCR', modal: true });
        })
};


function onUnselectModel(feature) {
    $("#responseSCR").html('');
    $('#statistics').attr('data-content', '');
    $.pageslide.close();
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
        })

    $.ajax({
        type : 'POST',
        url : '../ark-scrmap/wsgi/stats.py',
        data : {
                scr : scr
               }
        }).done(function(html) {
            console.log(html);
            $('#statistics').attr('data-content', html);
        })
};


function addSelectedLayer(USType, layer_back) {
    // before adding new layer, check if there are other layers loaded,
    // and destroy them;
    if (map.getLayersByName('US Layer').length > 0) {
	map.getLayersByName('US Layer')[0].destroy();
    };

    uses_layer = new OpenLayers.Layer.Vector("US Layer", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : true,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://sipontomedievale.it/cgi-bin/mapserv?map=/home/oia/public_html/sipontomedievale/sip-site/ark-scrmap/wfs.map&service=WFS',
            featureType : USType
        })
    });

    map.addLayer(uses_layer);

    // operations to do after complete layer loading
    uses_layer.events.register('loadend', uses_layer, function(evt) {

        // zoom to layer extent function after complete layer loading
        map.zoomToExtent(uses_layer.getDataExtent())
    });

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
            renderIntent: 'temporary'
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

    back_layer = new OpenLayers.Layer.Vector("background", {
        strategies : [new OpenLayers.Strategy.Fixed()],
        projection : _projObj.wgs84,
        visibility : true,
        displayInLayerSwitcher : false,
        protocol : new OpenLayers.Protocol.WFS({
            version : '1.0.0',
            // TODO: try WFS 1.1.0 and OL reprojection
            url : 'http://sipontomedievale.it/cgi-bin/mapserv?map=/home/oia/public_html/sipontomedievale/sip-site/ark-scrmap/wfs.map&service=WFS',
            featureType : layer_back
        })
    });

    map.addLayer(back_layer);

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
    return {
        'interval': interval,
        'maxFeat': maxValue,
        'minFeat': minValue
    }
};


function hide_basemap(event) {
    if (map.getZoom() > 18) {
        map.getLayersBy('name', 'OSM Layer')[0].setVisibility(false);
        map.getLayersBy('name', 'back_lines')[0].setVisibility(true)
    } else {
        map.getLayersBy('name', 'OSM Layer')[0].setVisibility(true);
        map.getLayersBy('name', 'back_lines')[0].setVisibility(false)
    }
}
