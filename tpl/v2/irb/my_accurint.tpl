<!-- begin v2/irb/my_accurint.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>My Favorite Searches - Add/Remove Search Tabs</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/v2/search.js"></script>
</head>


<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<div id="hd"><span id="hdr_top_logo"></span></h2></div>
<div id="wrapper">
  <form name="MYACCURINT" method='post' action='<tmpl_var ACTION_MISC>'>
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT type=hidden NAME="EVENT" VALUE="MISC/SAVE_ADD_REMOVE">
  <INPUT type=hidden NAME="NEWMYACC" VALUE="0">

    <table width="750" cellspacing="0" cellpadding="5">
      <tr>
        <td height="40" colspan="4"><div id="searchResults">
            <h2>My Favorite Searches - Add/Remove Search Tabs</h2>
          </div></td>
      </tr>
      <tr>
        <td width="40%" valign="top"  style="padding-left:25px;"><p class="medblack"><strong>Available Searches:</strong></p>
          <label for="ALLS"></label>
          <select class="medblack" name="ALLS" size="12" id="ALLS">
	      <tmpl_loop SRCH_LIST>
            	<option value='<tmpl_var VAL>'><tmpl_var NAME></option>
	      </tmpl_loop>
          </select></td>
        <td align="right" valign="top" ><p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>
            <label for="add">
            <input class="medblack" type="submit" name="add" id="add" value="Add &gt;&gt;" onclick="addToMyAcc();return false;"/>
            </label>
          </p>
          <p>&nbsp;</p>
          <p>
            <label for="remove">
            <input class="medblack" type="submit" name="remove" id="remove" value="<< Remove"  onclick="removeFromMyAcc();return false;"/>
            </label>
          </p></td>
        <td width="40%" valign="top"><p class="medblack"><strong>My Favorite Searches:</strong></p>
          <select class="medblack" name="MYS" size="6" id="MYS" style="width:100%;">
	      <tmpl_loop MY_SRCH_LIST>
            	<option value='<tmpl_var VAL>'><tmpl_var NAME></option>
	      </tmpl_loop>
          </select>
          <p>&nbsp;</p>
          <div style="margin-left:10px;">
            <label for="save">
            <input name="save" type="button" id="searchBtn" value="Save" onclick="saveMyAcc();" />
            </label>
            <label for="cancel">
            <input name="cancel" type="button" id="cancelBtn" value="Cancel" onclick="window.close()"/>
            </label>
          </div></td>
        <td valign="top"><p>&nbsp;</p>
          <p>&nbsp;</p>
          <label for="up">
          <input class="medblack" type="submit" name="up" id="label" value="Up" onclick="upMyAcc();return false;" />
          </label>
          <p>&nbsp;</p>
          <p>
            <label for="down">
            <input class="medblack" type="submit" name="add" id="add" value="Down" onclick="downMyAcc();return false;"/>
            </label>
          </p></td>
      </tr>
      <tr>
        <td colspan="4" valign="top" style="padding-left:25px;"><p class="smallgray2">&nbsp;<br>
	<b>TO ADD A SEARCH:</b>&nbsp; Select a search from Available Searches and click Add to move to My Favorite Searches Searches.&nbsp; Click "SAVE."  You may add a maximum of six (6) searches.
	<br><br>
	<b>CHANGE SEARCH ORDER:</b>&nbsp; Select a search from My Favorite Searches and click  Up or Down  to change the order.&nbsp; Click "SAVE."
	<br><br>
	<b>TO REMOVE A SEARCH:</b>&nbsp; To remove a search from My Favorite Searches, select a search and click remove.&nbsp; Click "SAVE."</p></td>
      </tr>
    </table>
  </form>

</div>
<!-- START Footer -->
<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
</body>
</html>
<!-- end v2/irb/my_accurint.tpl -->
