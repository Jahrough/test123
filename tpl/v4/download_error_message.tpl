<!DOCTYPE html>
<html lang="en">
  <head>
    <base href="<TMPL_VAR BASE_HREF>/">
    <link class="for-print" href="<TMPL_VAR NAME='CSSPATH'>/evolution.css" type="text/css" media="all" rel="stylesheet">
    <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>
  </head>
  <body>
    <div id="content">
    <header id="header"> 
     <TMPL_INCLUDE NAME="header_logo.tpl">
    </header>
    <hr/>
    <h2 class="modal-title">
      <TMPL_IF NAME="ERROR_MESSAGE_TITLE">
        <TMPL_VAR NAME="ERROR_MESSAGE_TITLE">
      <TMPL_ELSE>
        Error
      </TMPL_IF>
    </h2>
    <TMPL_INCLUDE NAME="search_error_message.tpl">
    <TMPL_IF DOWNLOAD_NOTE>
      <br/>
      <div id="download_note">
        <strong>Note:&nbsp;</strong><TMPL_VAR NAME="DOWNLOAD_NOTE">
      </div>
      <br/>
    </TMPL_IF>
    <TMPL_UNLESS SHOW_PERMISSIBLE_USES_FOR_ADD_CONTENT>
        <br />
        <strong>Date and Time of the search:</strong>&nbsp; <TMPL_VAR NAME="PRINT_DOWNLOAD_TIME">
    </TMPL_UNLESS>
    <hr/>
    <span>Copyright &COPY;</span>
    <TMPL_VAR COPYRIGHT_YEAR> LexisNexis. All rights reserved.
    </div>
  </body>
</html>
