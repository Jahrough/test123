<html>
<head>
    <SCRIPT src="<TMPL_VAR NAME='JSPATH'>/shared.js"></SCRIPT>
    <SCRIPT src="<TMPL_VAR NAME='JSPATH'>/common.js"></SCRIPT>
    <SCRIPT src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></SCRIPT>
    <SCRIPT src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></SCRIPT>

    <SCRIPT LANGUAGE="JavaScript">
    function checkall(thestate,formname,checkname,idname) {
                                                                                                                 
	var chkstate;
	if (thestate.checked == true) {
	    chkstate = true;
	} else {
	    chkstate = false;
	}
                                                                                                                 
	var ck_collection = eval("document."+formname+"."+checkname)
                                                                                                                 
	if (ck_collection.length > 1) {
	    for (var c = 0; c < ck_collection.length; c++) {
		if (ck_collection[c].checked != chkstate) {
		    ck_collection[c].checked = chkstate;
		}
	    }
	} else {
	    if (ck_collection.checked != chkstate) {
		ck_collection.checked = chkstate;
	    }
	}
    }

    </SCRIPT>
</head>
<body>
<!-- BEGIN start.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<div align="center">
<br><br>
<table border="0" width="600">
    <tr><td>

<fieldset>
    <legend> Online Job </legend>
	    <table  cellspacing="5" cellpadding="3" align="left">
		<tr><td class="unifont1">Login ID:&nbsp;</td><td class="smallfont1"><b><TMPL_VAR LOGINID></b></td></tr>
		<tr><td class="unifont1">Company ID:&nbsp;</td><td class="smallfont1"><b><TMPL_VAR COMPANY_ID></b></td></tr>
		<tr><td class="unifont1">Job ID:&nbsp;</td><td class="smallfont1"><b><TMPL_VAR JOB_ID></b></td></tr>
	    </table>
</fieldset>
<br>
<fieldset>
    <legend> Completed Files </legend>
    <FORM NAME="form" action="<TMPL_VAR ACTION_BATCH>">
	<TMPL_INCLUDE NAME=common_hidden_input.tpl>
	<input type="hidden" name="EVENT" value="">
	<input type="hidden" name="COMPANY_ID" value="<TMPL_VAR COMPANY_ID>">
	<input type="hidden" name="JOB_ID" value="<TMPL_VAR JOB_ID>">

	<table width="100%" cellspacing="5" cellpadding="3">
	<tr>
	
	<td class="unifont1" align="left" width="50%">Name</td><td class="unifont1" width="25%">Last modified</td><td class="unifont1" width="25%" align="right">Size (bytes)</td></tr>

	<tr><td colspan="4"><hr></td></td>
	    <TMPL_IF FILES>
		<TMPL_LOOP FILES>
	<tr>
	<td class="smallfont1"><img src="<TMPL_VAR NAME=IMGPATH>/report_manager_details.gif">
	<a href="<TMPL_VAR NAME=ACTION_BATCH>?EVENT=BATCHMANAGE/DOWNLOAD&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&JOB_ID=<TMPL_VAR NAME=JOB_ID>&FILE_ID=<TMPL_VAR NAME=FILE_ID>"><TMPL_VAR BASENAME></a>
	</td>
	<td class="smallfont1"><TMPL_VAR MODIFIED></td>
	<td class="smallfont1" align="right"><TMPL_VAR SIZE></td>
	</tr>
		</TMPL_LOOP>
	    </TMPL_IF>
	<tr>
	<tr><td colspan="4"><hr></td></td></tr>
	<tr><td colspan="4" class="unifont1">** Click on file name to download</td></td></tr>
	</table>
    </FORM>
</fieldset>

    </td>
    </tr>
    <tr>
        <td valign="bottom" align="center"><br><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></td>
    </tr>
</table>

</body>
</html>
