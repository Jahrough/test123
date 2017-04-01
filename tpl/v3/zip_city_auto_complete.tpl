<TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
    <TMPL_IF ENABLE_ZIP_CITY_AUTOCOMPLETE>
<link rel="stylesheet" href="<TMPL_VAR NAME=CSSPATH>/jquery-ui.css">
<!-- end inputs_fields/search_inputs_fields.tpl -->
<style>
.ui-autocomplete{
background:#c3c3c3;
width:250px;
top:-100px;
}

ul.ui-autocomplete{
list-style-type:none;
-webkit-padding-start: 0px;
padding:4px;
float:left;
font:12px Verdana;
}

ul.ui-autocomplete li{
margin:2px;
padding:2px;
cursor:pointer;
float:left;
width:98%;
}

ul.ui-autocomplete li:hover{
color:white;
}


.ui-widget-content {
border: 1px solid #aaaaaa;
color: #222222;
}

</style>


    </TMPL_IF>
</TMPL_IF>
