<!-- BEGIN define_file_body.tpl -->
  <tr>
    <td align="center" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>

  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="center"><TMPL_IF ALT_FIRST_ROW_MSG><b><FONT COLOR="#FF0000"></TMPL_IF>First row contains the name of the fields:&nbsp;<TMPL_IF ALT_FIRST_ROW_MSG></FONT></b></TMPL_IF></td>
	<td class="unifont1" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" tabindex=1 value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF> OnClick="checkbox_set();">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a style="FONT-SIZE: 8pt; FONT-WEIGHT: bold; text-decoration: underline; textindex=2" href="javascript:reset_labels();">RESET SELECTIONS</a></td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td align="center">
    <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
        <td class="unifont2">&nbsp;<b>Field Order</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Value</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Label</b>&nbsp;</td>
      </tr>
      <TMPL_IF DELIM_LOOP>
      <TMPL_LOOP DELIM_LOOP>
      <tr>
        <td class="unifont1">&nbsp;<TMPL_VAR FIELD_NUMBER></td>
        
	<td class="unifont1" class="nsinputs">&nbsp;
	<TMPL_IF FIELD_LOOP>
	  <INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUMBER>" VALUE="<TMPL_VAR FIRST_VALUE ESCAPE=HTML>" SIZE=40 READONLY="TRUE">
	<TMPL_LOOP FIELD_LOOP>
	  <INPUT TYPE=HIDDEN NAME="FIELD_VALUE_<TMPL_VAR INDEX>" VALUE="<TMPL_VAR FIELD_VAL ESCAPE=HTML>">
	</TMPL_LOOP>
	<TMPL_ELSE>&nbsp;</TMPL_IF>
	</td>
        
	<td class="unifont1">
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUMBER>" onChange="check_fields(this,FIELD_<TMPL_VAR FIELD_NUMBER>);">
          <TMPL_INCLUDE NAME="../phone/field_map_options.tpl">
	    </select> 
        </td>
	
      </tr>
      </TMPL_LOOP>
      </TMPL_IF>
    </table>
    </td>
  </tr>

<INPUT TYPE=HIDDEN NAME="FIELD_COUNT" VALUE="<TMPL_VAR FIELD_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_COUNT" VALUE="<TMPL_VAR ROW_COUNT>">

<!-- can be taken out as at this point we are not guessing -->
<!-- these indexes are used for the 'guess_fields' routine in batch.js -->
<INPUT TYPE=HIDDEN NAME="SSN_INDEX" VALUE=11>
<INPUT TYPE=HIDDEN NAME="PHONE_INDEX" VALUE=12>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_1" VALUE=9>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_1" VALUE=10>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_2" VALUE=19>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_2" VALUE=20>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_3" VALUE=23>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_3" VALUE=24>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_4" VALUE=27>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_4" VALUE=28>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_5" VALUE=31>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_5" VALUE=32>

<INPUT TYPE=HIDDEN NAME="STATE_INDEX_6" VALUE=35>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_6" VALUE=36>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_7" VALUE=39>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_7" VALUE=40>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_8" VALUE=43>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_8" VALUE=44>
<INPUT TYPE=HIDDEN NAME="STATE_INDEX_9" VALUE=47>
<INPUT TYPE=HIDDEN NAME="ZIP_INDEX_9" VALUE=48>

  <TMPL_IF FILE_NAME>
  <tr>
  	<td class="unifont1" valign="middle" align="center">File Name: <b><TMPL_VAR FILE_NAME></b>&nbsp;</td>
  </tr>
  </TMPL_IF>

  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
	<td class="unifont1" align="center" valign="middle"><a href="javascript:prev_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/prev_record.gif" width="80" height="20" border="0"></a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle">Record Number:&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" READONLY="TRUE">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" align="center" valign="middle"><a href="javascript:next_options(this.document.forms[0])"><img src="<TMPL_VAR NAME=IMGPATH>/next_record.gif" width="80" height="20" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>


<!-- END define_file_body.tpl -->
