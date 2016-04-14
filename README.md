# GeoHeatmap (Google Maps) #

**A Region plugin for Oracle Application Express**

This allows you to add a Google Map region to any page, showing a heatmap based on a query you specify. 

![plugin-heatmap-preview.png](https://raw.githubusercontent.com/jeffreykemp/jk64-plugin-heatmap/master/src/plugin-heatmap-preview.png)

## DEMO ##

[https://apex.oracle.com/pls/apex/f?p=JK64_GEOHEATMAP&c=JK64](https://apex.oracle.com/pls/apex/f?p=JK64_GEOHEATMAP&c=JK64)

## PRE-REQUISITES ##

* [Oracle Application Express 5.0.2](https://apex.oracle.com)

## INSTALLATION INSTRUCTIONS ##

1. Download the [latest release](https://github.com/jeffreykemp/jk64-plugin-heatmap/releases/latest)
2. Install the plugin to your application - **region_type_plugin_com_jk64_heatmap.sql**
3. *(optional)* Supply your **Google API Key** (NOTE: the plugin is usable without one)
4. Add a region to the page, select type **GeoHeatmap [Plug-In]**
5. For **SQL Source**, enter a query with 3 columns (see example below)
6. Update the **Number of Rows** to a reasonable upper limit (default is 15, you probably want a much bigger number)

**Sample query**

```sql
select lat, lng, weight from mydata
```

If you don't have any "weight" to go with the data points (e.g. population, earthquake magnitude, sales volume), just set the third column to `1`, e.g. `select lat, lng, 1 from mydata`.

For more info, refer to the [WIKI](https://github.com/jeffreykemp/jk64-plugin-heatmap/wiki).
