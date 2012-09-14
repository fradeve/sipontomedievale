var map;
var _projObj = {
	orig : new OpenLayers.Projection('EPSG:4326'),
	web : new OpenLayers.Projection('EPSG:900913')
};

function init() {
    map = new OpenLayers.Map('map_element', {
		controls:[
		//allows user pan/zoom ability
		new OpenLayers.Control.Navigation(),
		 
		//displays the pan/zoom tools
		new OpenLayers.Control.PanZoom(),
		 
		//displays a layer switcher
		new OpenLayers.Control.LayerSwitcher()],

		projection : _projObj.web,
		displayProjection: _projObj.orig
        });

    var osm_layer = new OpenLayers.Layer.OSM('OSM Layer');

	var uss_Layer = new OpenLayers.Layer.Vector("USS Layer", {
            strategies : [new OpenLayers.Strategy.Fixed()],
	    projection : _projObj.orig,
            protocol : new OpenLayers.Protocol.WFS({
                version : '1.1.0',
                url : 'http://46.105.19.68/cgi-bin/mapserv?map=/var/www/gis/wfs.map&service=WFS',
                featureType : 'uss',
            })
        });

    map.addLayers([osm_layer, uss_Layer]);
    map.zoomToMaxExtent();
}
