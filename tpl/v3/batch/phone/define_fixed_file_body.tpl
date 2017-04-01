<!-- BEGIN phone/define_fixed_file_body.tpl -->

  <tr>
    <td align="center" class="unifont2"><br><b>Select the proper Field Label for each Field Value found in your data:</b><br><br></td>
  </tr>

  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont2" valign="middle" align="center"><TMPL_IF ALT_FIRST_ROW_MSG><b><FONT COLOR="#FF0000"></TMPL_IF>First row contains the name of the fields:&nbsp;<TMPL_IF ALT_FIRST_ROW_MSG></FONT></b></TMPL_IF></td>

	<td class="unifont2" valign="middle" align="center"><input type=checkbox name="FIRST_ROW_NAMES" value="1"<TMPL_IF CHECKED_FIRST_ROW_NAMES> CHECKED</TMPL_IF>></td>
      </tr>
    </table>
    </td>
  </tr>

  
  <tr>
    <td align="center">
    <table border="1" cellpadding="0" cellspacing="0">
      <tr height="30">
        <td class="unifont2">&nbsp;<b></b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Label</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Field Length</b>&nbsp;</td>
        <td class="unifont2">&nbsp;<b>Example</b>&nbsp;</td>
      </tr>
  	  <TMPL_LOOP FIELDS>
      <tr>
        <td class="unifont1">&nbsp;<INPUT TYPE=RADIO NAME="FIELD_NUM" VALUE="<TMPL_VAR FIELD_NUM>"<TMPL_IF FIELD_NUM_C>CHECKED</TMPL_IF>></td>
        <td class="unifont1">
        <select name="FIELD_NAME_<TMPL_VAR FIELD_NUM>">
          <TMPL_INCLUDE NAME="../../../batch/phone/field_map_options.tpl">
        </select> 
        </td>
        <td class="unifont1" class="nsinputs" align="center">&nbsp;<SELECT NAME="FIELD_SIZE_<TMPL_VAR NAME=FIELD_NUM>" onChange="build_example();">
		<TMPL_LOOP SIZES>
		  <OPTION VALUE="<TMPL_VAR SIZE>"<TMPL_IF NAME=SELECTED> SELECTED</TMPL_IF>><TMPL_VAR SIZE></OPTION>
		</TMPL_LOOP>
		</SELECT> 
		</td>
		<td class="nsinputs"><INPUT TYPE=TEXT NAME="FIELD_<TMPL_VAR FIELD_NUM>" VALUE="" SIZE=70 readonly tabindex="-1"></td>
      </tr>
    </TMPL_LOOP>
    </table>
    </td>
  </tr>

<INPUT TYPE=HIDDEN NAME="FIELD_COUNT" VALUE="<TMPL_VAR FIELD_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_COUNT" VALUE="<TMPL_VAR ROW_COUNT>">
<INPUT TYPE=HIDDEN NAME="ROW_LENGTH" VALUE="<TMPL_VAR ROW_LENGTH>">

  <TMPL_IF FILE_NAME>
  <tr>
  	<td class="unifont1" valign="middle" align="center">File Name: <b><TMPL_VAR FILE_NAME></b>&nbsp;</td>
  </tr>
  </TMPL_IF>


  <tr>
    <td align="center">
    <br><br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont1" valign="middle" align="center"><a href="javascript:show_batch_event('PHONEBATCH/ADD_FIELD_FIRST')">Add First</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a href="javascript:show_batch_event('PHONEBATCH/ADD_FIELD_AFTER')">Add After</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont1" valign="middle" align="center"><a href="javascript:show_batch_event('PHONEBATCH/DELETE_FIELD')">Delete Field</a></td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td align="center">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="valign" align="center" class="unifont1"><a href="javascript:prev_index(this.document.forms[0]);build_example();">Previous</a>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1">Record Number:&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><INPUT TYPE=TEXT SIZE="1" NAME="SELECTED_INDEX" VALUE="1" readonly tabindex="-1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	<td valign="valign" align="center" class="unifont1"><a href="javascript:next_index(this.document.forms[0]);build_example();">Next</a></td>
      </tr>
    </table>
    </td>
  </tr>

<!-- END define_fixed_file_body.tpl -->

