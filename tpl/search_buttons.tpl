<!-- begin search buttons -->

            <table border="0" cellpadding="0" cellspacing="0">
              <tr height="15">
                <td height="15" class="unifont2pt">&nbsp;</td>
              </tr>
              <tr>
	   
	      <TMPL_IF USE_MISC_PROCESS>
	        <td class="no-print" align="center"><input name="BUTTON" tabindex="101" class="sb" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onMouseDown="flip_style(this,'sbd');" onClick="if(!validate()) return false;send_event('<TMPL_VAR NAME=SEARCH_EVENT>'<TMPL_UNLESS IRB>,'<TMPL_VAR NAME=ACTION_MISC>'</TMPL_UNLESS>);<TMPL_IF RESTRICT_MULTIPLE_SUBMITS>disable_buttons('BUTTON');</TMPL_IF>" onMouseOut="flip_style(this,'sb');"></td>
	      <TMPL_ELSE>
	      <TMPL_IF USE_LP_PROCESS>
	        <td class="no-print" align="center"><input name="BUTTON" tabindex="101" class="sb" type="button" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onMouseDown="flip_style(this,'sbd');" onClick="if(!validate()) return false;send_event('<TMPL_VAR NAME=SEARCH_EVENT>','<TMPL_VAR NAME=ACTION_LP>');<TMPL_IF RESTRICT_MULTIPLE_SUBMITS>disable_buttons('BUTTON');</TMPL_IF>" onMouseOut="flip_style(this,'sb');"></td>
	      <TMPL_ELSE>
	      <TMPL_IF REPORT_EVENT>
	        <td class="no-print" align="center"><input name="BUTTON" tabindex="101" class="sb" type="button" value="Report" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onMouseDown="flip_style(this,'sbd');" onClick="if(!validate()) return false;show_report_win('<TMPL_VAR NAME=REPORT_EVENT>')" onMouseOut="flip_style(this,'sb');"></td>
	      <TMPL_ELSE>
	        <td class="no-print" align="center"><input name="BUTTON" tabindex="101" class="sb" type="button" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onMouseDown="flip_style(this,'sbd');" onClick="if(!validate()) return false;send_event('<TMPL_VAR NAME=SEARCH_EVENT>');<TMPL_IF RESTRICT_MULTIPLE_SUBMITS>disable_buttons('BUTTON');</TMPL_IF>" onMouseOut="flip_style(this,'sb');"></td>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
              
	      </tr>
              <tr height="5">
                <td height="5" class="unifont2pt">&nbsp;</td>
              </tr>
              <tr>
	      <TMPL_IF ADV_SEARCH>
	        <td class="no-print" align="center"><input name="BUTTON" tabindex="102" class="sb" type="button" value="Clear" onMouseDown="flip_style(this,'sbd');" onClick="clearAll();spot_fields('clear');" onMouseOut="flip_style(this,'sb');" onMouseUp="flip_style(this,'sb');"></td>
	      <TMPL_ELSE>
	        <td class="no-print" align="center"><input name="BUTTON" tabindex="102" class="sb" type="button" value="Clear" onMouseDown="flip_style(this,'sbd');" onClick="clearAll();<TMPL_IF REPORT_EVENT>clear_report_fields('clear');</TMPL_IF>;" onMouseOut="flip_style(this,'sb');" onMouseUp="flip_style(this,'sb');"></td>
	      </TMPL_IF>
              </tr>
              <tr height="5">
                <td height="5" class="unifont2pt">&nbsp;</td>
              </tr>
            </table>
	    
<!-- end search buttons -->
