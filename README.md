# GeoHeatmap region plugin (Google Maps) for Application Express #

This allows you to add a Google Map region to any page, showing a heatmap based on a query you specify. 

![plugin-heatmap-preview.png](https://raw.githubusercontent.com/jeffreykemp/jk64-plugin-heatmap/master/plugin-heatmap-preview.png)

## DEMO ##

[https://apex.oracle.com/pls/apex/f?p=JK64_HEATMAP](https://apex.oracle.com/pls/apex/f?p=JK64_HEATMAP)

## INSTALLATION INSTRUCTIONS ##

1. Download the [latest release](https://github.com/jeffreykemp/jk64-plugin-heatmap/releases/latest)
2. Install the plugin to your application - **region_type_plugin_com_jk64_heatmap.sql**
3. *(optional)* Supply your **Google API Key** (NOTE: the plugin is usable without one)
4. Add a region to the page, select type **JK64 Heatmap [Plug-In]**
5. For **SQL Source**, enter a query with 3 columns (see example below)

**Sample query**

```sql
SELECT lat, lng, weight FROM mydata
```

For more info including version history and plugin references, refer to the [WIKI](https://github.com/jeffreykemp/jk64-plugin-heatmap/wiki).
