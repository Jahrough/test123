<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="no-print" align="center">
    <div id="searchBlock">
    <div id="srch_rpt_button" style="display: block;">
  <TMPL_IF CONTACT_PLUS_SEARCH>
      <input name="BUTTON" tabindex="101" id="searchBtn" type="button" value="Search" />
  <TMPL_ELSE>
  <TMPL_IF PREMISES_SEARCH>
      <input name="BUTTON" tabindex="101" id="searchBtn" type="button" value="Report" />
  <TMPL_ELSE>
    <TMPL_IF USE_MISC_PROCESS>
           <TMPL_IF SOCIALMEDIA_SEARCH>
  <input name="BUTTON" tabindex="201" id="searchBtn" onMouseOver="flip_cursor(this,'islink');" onMouseOut="flip_style(this,'isnotlink');" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validate()) return false;flip_ids();showwaitnew();send_event('<TMPL_VAR NAME=SEARCH_EVENT>'<TMPL_IF POWER_BOOLEAN_SEARCH>,'<TMPL_VAR NAME=ACTION_REPORT>'<TMPL_ELSE><TMPL_UNLESS IRB>,'<TMPL_VAR NAME=ACTION_MISC>'</TMPL_UNLESS></TMPL_IF>);disable_buttons('BUTTON')">
           <TMPL_ELSE>
  <input name="BUTTON" tabindex="101" id="searchBtn" onMouseOver="flip_cursor(this,'islink');" onMouseOut="flip_style(this,'isnotlink');" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validate()) return false;flip_ids();showwaitnew();send_event('<TMPL_VAR NAME=SEARCH_EVENT>'<TMPL_IF POWER_BOOLEAN_SEARCH>,'<TMPL_VAR NAME=ACTION_REPORT>'<TMPL_ELSE><TMPL_UNLESS IRB>,'<TMPL_VAR NAME=ACTION_MISC>'</TMPL_UNLESS></TMPL_IF>);disable_buttons('BUTTON')">
           </TMPL_IF>
    <TMPL_ELSE>
      <TMPL_IF USE_LP_PROCESS>
    <input name="BUTTON" tabindex="101" id="searchBtn" onMouseOver="flip_cursor(this,'islink');" onMouseOut="flip_style(this,'isnotlink');" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validate()) return false;flip_ids();showwaitnew();send_event('<TMPL_VAR NAME=SEARCH_EVENT>','<TMPL_VAR NAME=ACTION_LP>');disable_buttons('BUTTON');">
      <TMPL_ELSE>
        <TMPL_IF REPORT_EVENT>
      <input name="BUTTON" tabindex="101" id="searchBtn" onMouseOver="flip_cursor(this,'islink');" onMouseOut="flip_style(this,'isnotlink');" type="button" value="Report" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validate()) return false;show_report_win('<TMPL_VAR NAME=REPORT_EVENT>')">
        <TMPL_ELSE>
      <input name="BUTTON" tabindex="101" id="searchBtn" onMouseOver="flip_cursor(this,'islink');" onMouseOut="flip_style(this,'isnotlink');" type="button" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validate()) return false;flip_ids();showwaitnew();send_event('<TMPL_VAR NAME=SEARCH_EVENT>');disable_buttons('BUTTON')">
        </TMPL_IF>
      </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
   </div>
     <div id="rpt_button_only" style="display: none;">
     <input name="BUTTON" tabindex="101" id="searchBtn" onMouseOver="flip_cursor(this,'islink');" onMouseOut="flip_style(this,'isnotlink');" type="button" value="Report" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validate()) return false;show_report_win('<TMPL_VAR NAME=REPORT_EVENT>')">
     </div>
      <TMPL_IF SOCIALMEDIA_SEARCH>
         <input name="BUTTON" tabindex="202" id="clearSrch" type="button" value="Clear Form" onClick="clearAll();<TMPL_IF REPORT_EVENT>clear_report_fields('clear');</TMPL_IF>">
      <TMPL_ELSE>
         <input name="BUTTON" tabindex="102" id="clearSrch" type="button" value="Clear Form" onClick="clearAll();<TMPL_IF REPORT_EVENT>clear_report_fields('clear');</TMPL_IF>">
      </TMPL_IF>
     </div>
    </td>
  </tr>
</table>
