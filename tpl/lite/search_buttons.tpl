<!-- begin search buttons -->
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><img alt="" border="0" height="15" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              </tr>
              <tr>
	      <TMPL_IF SEARCH_DISABLED>
	      <TMPL_IF REPORT_EVENT>
	        <td align="center"><input class="bs" type="button" value="Report"></td>
	      <TMPL_ELSE>
	        <td align="center"><input class="bs" type="button" value="Search"></td>
	      </TMPL_IF>
	      <TMPL_ELSE>
	      <TMPL_IF USE_MISC_PROCESS>
	        <td align="center"><input tabindex="101" class="bs" type="button" value="Search" onClick="if(!validate()) return false;send_event('<TMPL_VAR NAME=SEARCH_EVENT>'<TMPL_UNLESS IRB>,'<TMPL_VAR NAME=ACTION_MISC>'</TMPL_UNLESS>);" onBlur="SPACEBAR=0;" onFocus="SPACEBAR=1;" onMouseUp="flip_style(this,'bs');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
	      <TMPL_ELSE>
  	      <TMPL_IF USE_LP_PROCESS>
            <td align="center"><input tabindex="101" class="bs" type="button" value="Search" onClick="if(!validate()) return false;send_event('<TMPL_VAR NAME=SEARCH_EVENT>','<TMPL_VAR NAME=ACTION_LP>');" onBlur="SPACEBAR=0;" onFocus="SPACEBAR=1;" onMouseUp="flip_style(this,'bs');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
          <TMPL_ELSE>
          <TMPL_IF REPORT_EVENT>
  	        <td align="center"><input tabindex="101" class="bs" type="button" value="Report" onClick="if(!validate()) return false;show_report_win('<TMPL_VAR NAME=REPORT_EVENT>');" onBlur="SPACEBAR=0;" onFocus="SPACEBAR=1;" onMouseUp="flip_style(this,'bs');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
          <TMPL_ELSE>
	          <td align="center"><input tabindex="101" class="bs" type="button" value="Search" onClick="<TMPL_UNLESS NAME=IM_ON_DA_SEARCH>if(!validate()) return false;</TMPL_UNLESS>send_event('<TMPL_VAR NAME=SEARCH_EVENT>');" onBlur="SPACEBAR=0;" onFocus="SPACEBAR=1;" onMouseUp="flip_style(this,'bs');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
          </TMPL_IF>
          </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
              </tr>
              <tr>
                <td><img alt="" border="0" height="5" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              </tr>
              <tr>
<TMPL_IF SEARCH_DISABLED>
	        <td align="center"><input class="bs" type="button" value="Clear"></td>
<TMPL_ELSE>
	      <TMPL_IF ADV_SEARCH>
	        <td align="center"><input tabindex="102" class="bs" type="button" value="Clear" onClick="clearAll();spot_fields('clear')" onMouseUp="flip_style(this,'bs');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
<TMPL_ELSE>
	        <td align="center"><input tabindex="102" class="bs" type="button" value="Clear" onClick="clearAll();<TMPL_IF REPORT_EVENT>clear_report_fields('clear');</TMPL_IF>" onMouseUp="flip_style(this,'bs');" onMouseOut="flip_style(this,'bs');" onMouseDown="flip_style(this,'bsd');"></td>
	      </TMPL_IF>
</TMPL_IF>
              </tr>
              <tr>
                <td><img alt="" border="0" height="5" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              </tr>
            </table>
<!-- end search buttons -->
