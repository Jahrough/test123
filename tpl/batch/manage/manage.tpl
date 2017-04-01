<!-- begin myaccount.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Batch Manage</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script>
// javascript code for search pages
                                                                                                                            
IE4 = document.all;
NS4 = document.layers;
ENTER_FOCUS = 0;
                                                                                                                            
if (!NS4) {
    document.onkeyup = doKey;
    document.onkeydown = keyClear;
} else {
    document.captureEvents(Event.KEYPRESS);
    document.onkeypress = doKey;
}
                                                                                                                            
function doKey(e)
{
    var typedkey = (IE4) ? event.keyCode : e.which;
    if ((typedkey == 13 && !ENTER_FOCUS) || (typedkey == 32 && ENTER_FOCUS)) {
        search_page();
    }
}

function keyClear(e)
{
    var homekey = (IE4) ? event.keyCode : e.which;
    var controlkeypressed = (IE4) ? event.ctrlKey : e.ctrlKey;
    if (controlkeypressed && homekey == '36') {
        clearAll();
    }
}


</script>

<TMPL_IF NAME="ERROR_MSG">
<script>alert('<TMPL_VAR NAME="ERROR_MSG">\n\n');</script>
</TMPL_IF>

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">

<form name="BATCHMANAGE" action="<TMPL_VAR NAME=ACTION_BATCH>" method="post">

     <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT">

<center>
<TMPL_INCLUDE NAME="batch/manage/admin_header.tpl">

  <TMPL_IF NAME="BATCHMANAGE_SHOW_ACTIVE_FTPJOBS">
    <TMPL_INCLUDE NAME=batch/manage/ftpjobs.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="BATCHMANAGE_SEARCH_FTPJOBS">
    <TMPL_INCLUDE NAME=batch/manage/ftpjobs.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="BATCHMANAGE_SHOW_ACTIVE_ONLINEJOBS">
    <TMPL_INCLUDE NAME=batch/manage/onlinejobs.tpl>
  </TMPL_IF>
  <TMPL_IF NAME="BATCHMANAGE_SEARCH_ONLINEJOBS">
    <TMPL_INCLUDE NAME=batch/manage/onlinejobs.tpl>
  </TMPL_IF>

</center>

</form>
</body>
</html>
<!-- end manage.tpl -->
