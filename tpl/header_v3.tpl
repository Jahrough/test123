<!DOCTYPE html>
<html>
    <head>

        <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
        <script>
            var $j = jQuery.noConflict();
        </script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/accurint.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/accurintSearch.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/main_menu.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/demo.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/demo2.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/sprites.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/skin.css" rel="stylesheet" type="text/css">
        <link href="<TMPL_VAR NAME='CSSPATH'>/v3/menus_alerts.css" rel="stylesheet" type="text/css">


    </head>

    <body>

	<TMPL_INCLUDE NAME="v3/logo.tpl">

        <div class="txtWrapper w100pc">
            <div id="txtCon">
