<!--DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en"-->
  <head>
    <title>Batch Wizard <TMPL_VAR TITLE_PAGE></title>

    <link href="<TMPL_VAR CSSPATH>/style1.css" rel="stylesheet" type="text/css"/>
    <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css"/>
<TMPL_IF ENABLE_V2>
    <link href="<TMPL_VAR CSSPATH>/v2/accurint.css" rel="stylesheet" type="text/css"/>
    <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css"/>
    <link href="<TMPL_VAR CSSPATH>/v2/<TMPL_VAR APPLICATION_TYPE>/<TMPL_VAR USER_THEME>.css" rel="stylesheet" type="text/css"/>
</TMPL_IF>
    <style>
      body{ margin: 0; }
      em{ font-style: italic; }
      /* overide LI tag here to fix accurint.css global setting */
      .discList li{ list-style-type: disc; }
      .nodisc li{ list-style-type: none; }
      ul{
        margin: 15px;
      }
      li, p{
        font-family: Arial;
        font-size: 10pt;
      }
      h1, h2{
        margin: 15px;
      }
      h3, h4{
        margin: 10px;
      }
    </style>
    <script>
      var search_option = '<TMPL_VAR SEARCH_OPTION>';
    </script>
    <script src="<TMPL_VAR JSPATH>/phone_batch.js"></script>
    <script src="<TMPL_VAR JSPATH>/common.js"></script>
    <script src="<TMPL_VAR JSPATH>/shared.js"></script>
    <script src="<TMPL_VAR JSPATH>/batch.js"></script>
    <script src="<TMPL_VAR JSPATH>/show_please_wait.js"></script>
    <script src="<TMPL_VAR JSPATH>/overlibmws.js"></script>
    <script>
      close_x = new Image();
      close_x.src = "/bps/images/closex.gif";
    </script>
  </head>

  <body onunload="closewaitwin();" onload="onpbload();return true;">

    <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

<TMPL_IF ENABLE_V2>
    <div id="hd">
      <h2><a id="hdr_top_logo">LexisNexis Accurint</a></h2>
    </div>
</TMPL_IF>

    <form name="BATCH" action="<TMPL_VAR ACTION_BATCH>" method="post" <TMPL_VAR FORM_ARGS>><div>

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
  <!-- This is confusing, but this variable signifies the OLD Phone Batch -->
      <input type="hidden" name="IS_PHONE_BATCH" value="0"/> 

 
<TMPL_UNLESS ENABLE_V2>
      <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccccc">
        <tr>
          <td><img src="<TMPL_VAR IMGPATH>/<TMPL_VAR APPLICATION_TYPE>/BATCH/batch22.gif" width="680" height="66" border="0"></td>
        </tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
          <td class="headerseparator" height="10"><img border="0" height="10" width="1" src="<TMPL_VAR IMGPATH>/spacer.gif"></td>
        </tr>
      </table>
</TMPL_UNLESS>
<!-- end batch_head.tpl -->
