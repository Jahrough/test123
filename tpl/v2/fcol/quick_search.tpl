<!-- BEGIN fcol/quick_search.tpl -->

<table id="quickSearchTab" class="quicksearchHome2" border="0" cellspacing="0" width="100%">
<tbody><tr>
<td nowrap>
<div class="quickSmall">&nbsp;&nbsp;Quick Search</div>
</td>

<td style="width:90px;">
<select name="QS_OPTION" id="QS_OPTION" class="quickEnter" onchange="qsTextEntered=false;javascript:SetSearchText();">
<TMPL_UNLESS NAME="DO_NOT_DISPLAY_ALL_PERSON_SEARCHES">
   <option selected="selected" value="SSN">SSN Lookup &gt;</option>
   <option value="Address">Address &gt;</option>
</TMPL_UNLESS>
<TMPL_UNLESS NAME="DO_NOT_DISPLAY_QS_PHONES"><option value="Phone">Reverse Phone &gt;</option></TMPL_UNLESS>
<option value="Company">Company Name &gt;</option>

</select>
</td>

<td style="width:90px">
<TMPL_UNLESS NAME="DO_NOT_DISPLAY_ALL_PERSON_SEARCHES">
    <input name="QS_TEXT" value="Enter SSN..." size="20" id="QS_TEXT" class="quickEnter quickGray" onfocus="javascript:QSGotFocus();" onchange="javascript:QSChanged();" onblur="this.value=this.value.toUpperCase();javascript:QSChanged();"  type="text">
</TMPL_UNLESS>
<TMPL_IF NAME="DO_NOT_DISPLAY_ALL_PERSON_SEARCHES">
  <TMPL_IF NAME="DO_NOT_DISPLAY_QS_PHONES">
    <input name="QS_TEXT" value="Enter Company..." size="20" id="QS_TEXT" class="quickEnter quickGray" onfocus="javascript:QSGotFocus();" onchange="javascript:QSChanged();" onblur="this.value=this.value.toUpperCase();javascript:QSChanged();"  type="text">
  <TMPL_ELSE>
    <input name="QS_TEXT" value="Enter Phone..." size="20" id="QS_TEXT" class="quickEnter quickGray" onfocus="javascript:QSGotFocus();" onchange="javascript:QSChanged();" onblur="this.value=this.value.toUpperCase();javascript:QSChanged();"  type="text">
  </TMPL_IF>
</TMPL_IF>
</td>

<td nowrap>
<div class="quickSmall">&nbsp;&nbsp;Reference ID</div>
</td>

<td style="width:90px">
<input name="QS_REFERENCE_CODE" maxlength="32" id="QS_REFERENCE_CODE" class="quickEnter" onfocus="ENTER_FOCUS=1;" onblur="ENTER_FOCUS=0;" type="text" value="<TMPL_VAR NAME=REFERENCE_CODE>" <TMPL_IF REF_CODE_DROP_DOWN>readonly="true"</TMPL_IF> >
</td>

<td style="width:40px">
<span id="QuickSearchButton">
<input name="BUTTON" value="." type="button" id="quickSearchBtn" title="Execute Quick Search" onmouseover="flip_style(this,'islink');" onmouseout="flip_style(this,'isnotlink');" onclick="javascript:QSSubmit();return false;" onfocus="ENTER_FOCUS=1" onblur="ENTER_FOCUS=0;">
</span>
</td>
</tr>
<TMPL_IF REF_CODE_DROP_DOWN>
</TMPL_IF>
<tr>
<td colspan="4">&nbsp;</td>
<td style="font-size:58%;"><TMPL_IF REF_CODE_DROP_DOWN><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','440','120',0,0,0,0,0,0,'','client_number');">Select Reference Number</a></TMPL_IF></td>
<td>&nbsp;</td>
</tr>
</tbody></table>

<!-- END fcol/quick_search.tpl -->
