function jk64plugin_heatmap(opt) {
	apex.debug(opt.regionId+" heatmap");
	if (opt.heatmap) {
		apex.debug(opt.regionId+" hide heatmap");
		opt.heatmap.setMap(null);
		apex.debug(opt.regionId+" remove heatmap");
		opt.heatmap.delete;
		opt.heatmap = null;
	}
	if (opt.mapdata.length > 0) {
		if (opt.infoNoDataFound) {
			apex.debug(opt.regionId+" hide No Data Found infowindow");
			opt.infoNoDataFound.close();
		}
		var pts = [];
		for (var i = 0; i < opt.mapdata.length; i++) {
			pts.push({
				location:new google.maps.LatLng(opt.mapdata[i].a, opt.mapdata[i].b),
				weight:opt.mapdata[i].c
			});
		}
		opt.heatmap = new google.maps.visualization.HeatmapLayer({
			data: pts,
			map: opt.map,
			dissipating: opt.dissipating,
			opacity: opt.opacity,
			radius: opt.radius
		});
	} else {
		if (opt.noDataMessage !== "") {
			apex.debug(opt.regionId+" show No Data Found infowindow");
			if (opt.infoNoDataFound) {
				opt.infoNoDataFound.close();
			} else {
				opt.infoNoDataFound = new google.maps.InfoWindow(
					{
						content: opt.noDataMessage,
						position: {lat:0,lng:0}
					});
			}
			opt.infoNoDataFound.open(opt.map);
		}
	}
}
function jk64plugin_initMap(opt) {
	apex.debug(opt.regionId+" initMap");
	var myOptions = {
		zoom: 2,
        mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	opt.map = new google.maps.Map(document.getElementById(opt.container),myOptions);
	if (opt.mapstyle) {
		opt.map.setOptions({styles: opt.mapstyle});
	}
	opt.map.fitBounds(new google.maps.LatLngBounds(opt.southwest,opt.northeast));
	jk64plugin_heatmap(opt);
	apex.debug(opt.regionId+" initMap finished");
	apex.jQuery("#"+opt.regionId).trigger("maploaded", {map:opt.map});
}
function jk64plugin_refreshMap(opt) {
  apex.debug(opt.regionId+" refreshMap");
  apex.jQuery("#"+opt.regionId).trigger("apexbeforerefresh");
  apex.debug("ajaxItems="+opt.ajaxItems);
  apex.server.plugin
    (opt.ajaxIdentifier
    ,{ pageItems: opt.ajaxItems }
    ,{ dataType: "json"
		,success: function( pData ) {
			apex.debug(opt.regionId+" success");
			apex.debug(opt.regionId+" pData.southwest="+pData.southwest.lat+","+pData.southwest.lng+" pData.northeast="+pData.northeast.lat+","+pData.northeast.lng);
			opt.map.fitBounds(
				{south:pData.southwest.lat
				,west: pData.southwest.lng
				,north:pData.northeast.lat
				,east: pData.northeast.lng});
			apex.debug(opt.regionId+" pData.mapdata.length="+pData.mapdata.length);
			opt.mapdata = pData.mapdata;
			jk64plugin_heatmap(opt);
			apex.jQuery("#"+opt.regionId).trigger("apexafterrefresh");
		}
    } );
  apex.debug(opt.regionId+" refreshMap finished");
}
