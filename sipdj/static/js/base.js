var geo = {
	attribution : 'Tiles Courtesy of <a href="http://www.mapquest.com/" target="_blank">MapQuest</a> <img src="http://developer.mapquest.com/content/osm/mq_logo.png">',
	map : new Object,
	map_div : 'map',
	center : [41.61083, 15.89336],
	tilecache_url : "http://otile{s}.mqcdn.com/tiles/1.0.0/map/{z}/{x}/{y}.jpg",
	subdomains : '1234',
	zoom : 15,
	maxZoom : 20,

	init : function() {
		this.map = L.map(this.map_div, {
			center : this.center,
			zoom : this.zoom,
			maxZoom : this.maxZoom
			//maxBounds
		});

		// base layer
		L.tileLayer(this.tilecache_url, {
			subdomains : this.subdomains,
			attribution : this.attribution,
			maxZoom : this.maxZoom
		}).addTo(this.map);

		// mini map
		var mmap = new L.TileLayer(this.tilecache_url, {
            minZoom: 8,
            maxZoom: this.maxZoom,
            attribution: this.attribution,
            subdomains: this.subdomains
            }
        );
		var miniMap = new L.Control.MiniMap(mmap, {
            zoomLevelFixed: 8,
            autoToggleDisplay: true,
            toggleDisplay: true
        }).addTo(this.map);

		// load data
        // TODO: create `url` from button definition
		$.ajax({
			type : 'GET',
			url : 'get_panos/',
			dataType : 'json',
			success : this.addGeom,
			context : this
		});
	},

	addGeom: function(response) {
		var markers = new L.MarkerClusterGroup();
        //var markers = new L.Marker();
		for ( i = 0; i < response.length; i++) {
			var coord = this.toLeaflet(response[i].fields.the_geom);
			var popupContent = '<img src="' + response[i].fields.title + '"/><br>' + response[i].fields.title;
			var marker = L.marker(coord, {
				popupContent : popupContent
			});
			marker.bindPopup(popupContent, {
				minWidth : 350,
				maxWidth : 350
			});
			markers.addLayer(marker);
            //this.map.addLayer(marker);
            console.log(marker);
		}
		this.map.addLayer(markers);
	},

	toLeaflet : function(wkt) {
		var tmp = wkt.slice(7, -1).split(' ');
		var coord = new L.LatLng(parseFloat(tmp[1]), parseFloat(tmp[0]));
		return coord;
	}
}


/***********************************************
 DOM Ready
 ************************************************/

$(document).ready(function() {
	geo.init();
	// Attatch resize action to window
});
