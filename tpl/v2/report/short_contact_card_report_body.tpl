<!-- Begin short_contact_card_report_body.tpl-->
<table width="650" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>

  <tr>
    <td align="left" colspan="3"class="medblack"><b><TMPL_UNLESS HIDE_PRICES>Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-contact-card-price"><TMPL_ELSE>Base Report Features:</TMPL_UNLESS>&nbsp;</b></td>
  </tr>

  <tr>
    <td width="56%" valign="top">
      <table border="0" cellpadding="2" cellspacing="0" width="100%">
		<TMPL_UNLESS DISABLE_DA_WIRELESS>
		 <TMPL_UNLESS DELETE_DA_WIRELESS>
                 <TMPL_IF FCOL_TCOL>
                     <input type="hidden" name="phones-plus-data" id="phones-plus-data" value="1">
                 <TMPL_ELSE>
                    <tr> 
                         <td width="1%"><input type="checkbox" name="phones-plus-data" id="phones-plus-data" value="1" <TMPL_VAR NAME="phones-plus-data"> onClick="change_total(this, <TMPL_VAR NAME="phones-plus-data-price">, document.forms[0].CONTACT_CARD_TOTAL,document.forms[0].CONTACT_CARD_PRE_TOTAL)"></td> 
                         <td class="medblack" width="60%" align="left"><label for="phones-plus-data">&nbsp;Phones Plus<TMPL_IF INS>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_IF></label></td> 
                         <td width="39%" align="left" class="medblue"><TMPL_UNLESS HIDE_CONTACT_CARD_PRICE><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="phones-plus-data-price"></TMPL_UNLESS></TMPL_UNLESS>&nbsp;</td> 
                     </tr> 
                 </TMPL_IF>
		 </TMPL_UNLESS> 	
		</TMPL_UNLESS>
	  </table>
    </td>
  </tr>
  <TMPL_IF INS>
  <tr>
     <td width="60%" valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
		 <TMPL_UNLESS DISABLE_DA_WIRELESS>
		   <TMPL_UNLESS DELETE_DA_WIRELESS>
         <tr>
           <td width="100%" align="left" class="smallblack">
              <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges">&nbsp;
               -Indicates an optional add-on and additional charges will apply.
           </td>
	     </tr>
		   </TMPL_UNLESS> 	
		 </TMPL_UNLESS>
	    </table>
     </td>
  </tr>
  </TMPL_IF>    
     <tr>
      <td width="100%" valign="top" colspan="3">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td align="left" class="medblack" width="24%"><b>&nbsp;Relatives:&nbsp;</b></td>
		    <td width="76%">
 				<select name="relative-depth">
                    <TMPL_IF LE_ALLOW_REL_DEPTH_0>
                        <option value="0"<TMPL_IF NAME="relative-depth-0"> SELECTED</TMPL_IF>>0</option>
                    </TMPL_IF>
					<option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
					<option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
					<option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
                </select>&nbsp;Degrees of Separation
		    </td>
		  </tr>
	  </table>
      </td>
    </tr>
     <tr>
      <td width="100%" valign="top" colspan="3">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td align="left" class="medblack" width="24%"><b>&nbsp;Select Report Type:&nbsp;</b></td>
		    <td width="76%">
		    <select name="report-format">
		    <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
		    <option value="plain"<TMPL_IF NAME="report-format-plain"> SELECTED</TMPL_IF>>Non-Formatted/Plain Text Web Page</option>
		    <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Formatted text Web Page</option>
		    <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
		    <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
		    </select>
		    </td>
		  </tr>
	  </table>
      </td>
    </tr>
    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>

   <tr>
      <td colspan="3" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		   <TMPL_UNLESS HIDE_PRICES>
		    <td align="left" class="medblack" width="29%"><b>Maximum Report Price:&nbsp;$</b></td>
		    <td align="left"><input type="text" name="CONTACT_CARD_TOTAL" size="5" value="<TMPL_VAR NAME='CONTACT_CARD_TOTAL'>" onFocus="this.blur();"></td>
		    <TMPL_ELSE>
		    <input type='hidden' name='CONTACT_CARD_TOTAL' size='5' value='<TMPL_VAR NAME=CONTACT_CARD_TOTAL>'>
		   </TMPL_UNLESS>
		  </tr>
	  </table>
      </td>
   </tr>

   <tr>
      <td width="100%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		      <td width="48%" align="left" class="smallblack"><TMPL_UNLESS HIDE_PRICES><b>NOTE:</b>&nbsp;&nbsp;This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;</TMPL_UNLESS></td>
		      <td width="1%"></td>
		      <td width="51%" valign="top">
			  <table border="0" cellpadding="0" cellspacing="0" width="100%">
				  <tr>
				    <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
				    <td align="left" class="smallblack" width="98%"><label for="prompt">Prompt me for these options for each report.</label> </td>
				  </tr>
				  <tr>
				   <TMPL_IF NAME="ENABLE_SAVE_REPORT">
				      <TMPL_IF NAME="REPORT_MANAGER_OFF">
					    <td width="1%"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
					    <td align="left" class="disabled_medblack"><label for="save-report">(Saving Reports currently not available).</td>
				      <TMPL_ELSE>
					    <td width="1%"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
					    <td align="left" class="smallblack"><label for="save-report">Save report for later access.</label></td>
				      </TMPL_IF>
				   <TMPL_ELSE>
				   <td colspan="2"></td>
				   </TMPL_IF>
				  </tr>
			  </table>
		      </td>
		  </tr>
	  </table>
      </td>
   </tr>


<input type=hidden name="CONTACT_CARD_PRE_TOTAL" value="<TMPL_VAR NAME=CONTACT_CARD_PRE_TOTAL>">
</table>
<!-- End short_contact_card_report_body.tpl-->
