<html>
    <head>
        <title>Batch Wizard <TMPL_VAR TITLE_PAGE></title>
        <TMPL_INCLUDE NAME="batch/batch_includes.tpl">
        <script src="<TMPL_VAR NAME='JSPATH'>/phone_batch.js"></script>
        <script>
            var search_option = '<TMPL_VAR SEARCH_OPTION>';
        </script>
        <script>
        var items = new Array(
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_EDA'>", "eda",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_SKIPTRACE'>", "skiptrace",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_EXPANDEDSKIPTRACE'>", "expandedskiptrace",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_PHONESPLUS'>", "phonesplus",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_PROGRESSIVEADDRESS'>", "progressiveaddress",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_CORESIDENT'>", "coresident",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_POSSIBLESPOUSE'>", "possiblespouse",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_POSSIBLEPARENTS'>", "possibleparents",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_CLOSESTRELATIVE'>", "closestrelative",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_CLOSESTNEIGHBOR'>", "closestneighbor",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_PEOPLEATWORK'>", "peopleatwork",
            "<TMPL_VAR NAME='TEXT_PHONE_TYPE_POSSIBLERELOCATION'>", "possiblerelocation"
        );
    </script>
    
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/phone_batch.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws_iframe.js"></script>
        
    </head>
    <body onUnLoad="closewaitwin();" onLoad="onpbload();return true;" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
        <TMPL_INCLUDE NAME="batch/header_info.tpl">
        <INPUT TYPE=HIDDEN NAME=IS_PHONE_BATCH VALUE="0">
