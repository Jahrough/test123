<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/jquery-ui.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/bootstrap.min.css">
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/bootstrap-accessibility_1.0.3.css">
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/font-awesome.min.css">
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/evolution.css">
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/utility.css">
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/search_page.css"> 
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/icons.css">
<link rel="stylesheet" type="text/css" media="all" href="<TMPL_VAR NAME='CSSPATH'>/main_menu.css">

<TMPL_UNLESS WEB20_PRINT_DOWNLOAD>
  <TMPL_INCLUDE NAME="include_javascripts.tpl">
</TMPL_UNLESS>