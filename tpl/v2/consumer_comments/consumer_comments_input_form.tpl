<!-- BEGIN: consumer_comments/consumer_comments_input_form.tpl -->
<br/>
<table id="searchTable" cellpadding="1" cellspacing="0" border="0" style="margin-left:10px;">
<tbody>
        <tr>
          <td style="padding-left: 10px; padding-top: 5px;" valign="top">
           <table cellspacing="0" border="0">
           <tbody>
	        <TMPL_INCLUDE NAME="consumer_comments_inputs.tpl">
           </tbody>
           </table>
          </td>

          <td style="padding-left: 10px; padding-right: 10px; padding-top: 5px;" valign="top" width="33%">
           <table cellspacing="0" border="0">

           <tr>
           <td style="padding-right: 10px; padding-top: 18px;" valign="top" width="33%">
	       <table border="0" cellpadding="0" cellspacing="0">
		  <tr>
		    <td class="no-print" align="center">
		    <div id="searchBlock">
			<input name="BUTTON" tabindex="101" id="searchBtn" type="button" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validate()) return false; flip_ids(); send_event('SEARCH2/SEARCH_CONSUMER_COMMENTS_POPUP');">
			<input name="BUTTON" tabindex="102" id="clearSrch" type="button" value="Clear Form" onClick="clearAll();<TMPL_IF REPORT_EVENT>clear_report_fields('clear');</TMPL_IF>">
		     </div>
		    </td>
		  </tr>
		</table>
          </td>
          </tr>
           <tr>
           <td height="10"></td>
          </tr>

             <tr>
               <td valign="top" align="left">
                <TMPL_INCLUDE NAME="coverage_help.tpl">

                <TMPL_INCLUDE NAME="search_inputs_disclaimer.tpl">
              </td>
             </tr>
           </table>
         </td>
        </tr>
        <tr>
          <td colspan="2" align="center"><div id="lineVertRedDot"></div></td>
        </tr>

        <tr>
          <td style="padding-left: 10px; padding-top: 5px; padding-bottom: 10px;" valign="top">
           <table cellspacing="0" border="0">
              <tr>
                <td><b><label for="REF_CODE">Reference Code:&nbsp;</label></b></td>
                <td style="font-size: 9pt;" align="center" valign="middle"><input type=text tabindex="91" size="16" maxlength="<TMPL_IF REFERENCE_CODE_MAX_LENGTH><TMPL_VAR REFERENCE_CODE_MAX_LENGTH><TMPL_ELSE>30</TMPL_IF>" name="REFERENCE_CODE" id="REF_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"<TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF>><TMPL_IF REF_CODE_DROP_DOWN> <a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','440','120',0,0,0,0,0,0,'','client_number');">Select Reference Number</a></TMPL_IF></td>
              </tr>
           </table>
          </td>
        </tr>
</tbody>
</table>
<p>&nbsp;</p>

<!-- END: consumer_comments/consumer_comments_input_form.tpl -->
