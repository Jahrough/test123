  <!-- BEGIN manage_account_disable_reports.tpl -->
<TMPL_UNLESS DA_ONLY>
              <table border="0" width="100%">
              <tr><td style="border:solid 2px #4E8CB9;">
              <div class="hpColHdr" >
                <h4 style="font-family: Verdana; font-size: 85%; margin-top: 0px; margin-bottom: 0px; height: auto;">Contact &amp; Locate (NON-FCRA)</h4>
              </div>
  <fieldset>
    <div align="left" class="unifont1bold"><legend>Enable Report Settings</legend></div>
      <table border="0" cellpadding="0" cellspacing="0" width="95%">
  
    <TMPL_UNLESS COMPANY_DISABLE_ADDR_REPORT>
    <TR>
      <td width="200" nowrap class="unifont1" align="left">Address Reports:</TD>
      <td width="220" align="left">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><INPUT TYPE=RADIO NAME="DISABLE_ADDR_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ADDR_REPORT>CHECKED</TMPL_UNLESS>></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><INPUT TYPE=RADIO NAME="DISABLE_ADDR_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_ADDR_REPORT>CHECKED</TMPL_IF>></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </TR>
    </TMPL_UNLESS>

    <TMPL_UNLESS COMPANY_DISABLE_BUS_REPORT>
    <TR>
      <td width="200" nowrap class="unifont1" align="left">Business Reports:</TD>
      <td width="220" align="left">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_REPORT>CHECKED</TMPL_UNLESS>></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_REPORT>CHECKED</TMPL_IF>></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </TR>
    </TMPL_UNLESS>

    <TMPL_UNLESS DISABLE_BUS_INVIEW_REPORT>
    <TR>
      <td width="200" nowrap class="unifont1" align="left">Business InView Report:</TD>
      <td width="220" align="left">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_INVIEW" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_INVIEW>CHECKED</TMPL_UNLESS>></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_INVIEW" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_INVIEW>CHECKED</TMPL_IF>></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </TR>
    </TMPL_UNLESS>

    <TMPL_UNLESS COMPANY_DISABLE_COMP_REPORT>
    <TR>
      <td class="unifont1" align="left" width="200"><TMPL_IF XBPS>National Comprehensive plus Associates<TMPL_ELSE>Custom Comprehensive</TMPL_IF> Reports:</TD>
      <td align="left" width="220">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><INPUT TYPE=RADIO NAME=DISABLE_COMP_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_COMP_REPORT>CHECKED</TMPL_UNLESS>></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><INPUT TYPE=RADIO NAME=DISABLE_COMP_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_COMP_REPORT>CHECKED</TMPL_IF>></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </TR>
    </TMPL_UNLESS>

    <TMPL_UNLESS COMPANY_DISABLE_COMPREHENSIVE_REPORT>
    <TR>
      <td class="unifont1" align="left" width="200"><TMPL_IF XBPS>National </TMPL_IF>Comprehensive Reports:</TD>
      <td align="left" width="220">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><INPUT TYPE=RADIO NAME=DISABLE_COMPREHENSIVE_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_COMPREHENSIVE_REPORT>CHECKED</TMPL_UNLESS>></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><INPUT TYPE=RADIO NAME=DISABLE_COMPREHENSIVE_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_COMPREHENSIVE_REPORT>CHECKED</TMPL_IF>></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </TR>
    </TMPL_UNLESS>
          
          
	  <TMPL_UNLESS COL>
	  <TMPL_UNLESS COMPANY_DISABLE_SUMMARY_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="200">Summary Reports:</TD>
	    <td align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME=DISABLE_SUMMARY_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_SUMMARY_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME=DISABLE_SUMMARY_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_SUMMARY_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>
	  </TMPL_UNLESS>
	  

	  <TMPL_UNLESS XBPS>
	  <TMPL_UNLESS COMPANY_DISABLE_PEOPLE_FINDER_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="200">Finder Reports:</TD>
	    <td align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME=DISABLE_PEOPLE_FINDER_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_PEOPLE_FINDER_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME=DISABLE_PEOPLE_FINDER_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_PEOPLE_FINDER_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>
	  </TMPL_UNLESS>

	  <TMPL_UNLESS HIDE_BUS_CREDIT>
	  <TMPL_IF COMPANY_DISABLE_BUS_CREDIT_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_CREDIT_REPORT" VALUE="<TMPL_IF DISABLE_BUS_CREDIT_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="75%" nowrap class="unifont1" align="left">
	      <TMPL_IF NAME="IRS">Experian Business Report:<TMPL_ELSE>Business Credit Report:</TMPL_IF>&nbsp;&nbsp;
	    </td>
	    <td width="25%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_CREDIT_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_CREDIT_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_CREDIT_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_CREDIT_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_UNLESS>
	  
	  <TMPL_UNLESS COMPANY_DISABLE_BUSINESS_INVIEW_CREDIT>
	  <TMPL_UNLESS DISABLE_BUS_INVIEW_CRED_REPORT>
	  <TR>
	    <td width="200" nowrap class="unifont1" align="left">Business InView Credit Report:</TD>
	    <td width="220" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_INVIEW_CREDIT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_INVIEW_CREDIT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_INVIEW_CREDIT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_INVIEW_CREDIT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>
	  </TMPL_UNLESS>

	  <TMPL_IF ENABLE_PHONE_HISTORY_REPORT>
	  <TMPL_IF COMPANY_DISABLE_PHONE_HISTORY_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_PHONE_HISTORY_REPORT" VALUE="<TMPL_IF DISABLE_PHONE_HISTORY_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="75%" nowrap class="unifont1" align="left">Phone History Report:&nbsp;&nbsp;</TD>
	    <td width="25%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_PHONE_HISTORY_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PHONE_HISTORY_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_PHONE_HISTORY_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_PHONE_HISTORY_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>
    
    <TMPL_IF ENABLE_TRIMERGE_REPORT>
    <TMPL_IF COMPANY_DISABLE_TRIMERGE_REPORT>
    <input type="hidden" name="DISABLE_TRIMERGE_REPORT" value="<TMPL_IF DISABLE_TRIMERGE_REPORT>1<TMPL_ELSE>0</TMPL_IF>"/>
    <TMPL_ELSE>
    <tr>
      <td width="75%" nowrap="nowrap" class="unifont1" align="left">Tri-Merge Credit Report:&nbsp;&nbsp;</td>
      <td width="25%" align="left">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><input type="radio" name="DISABLE_TRIMERGE_REPORT" value="0"<TMPL_UNLESS DISABLE_TRIMERGE_REPORT> checked="checked"</TMPL_UNLESS>/></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><input type="radio" name="DISABLE_TRIMERGE_REPORT" value="1"<TMPL_IF DISABLE_TRIMERGE_REPORT> checked="checked"</TMPL_IF>/></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </tr>
    </TMPL_IF>
    </TMPL_IF>

    <TMPL_IF ENABLE_ENTITLEMENTS_REPORT>
    <TMPL_IF COMPANY_DISABLE_ENTITLEMENTS_REPORT>
    <input type="hidden" name="DISABLE_ENTITLEMENTS_REPORT" value="<TMPL_IF DISABLE_ENTITLEMENTS_REPORT>1<TMPL_ELSE>0</TMPL_IF>"/>
    <TMPL_ELSE>
    <tr>
      <td width="75%" nowrap="nowrap" class="unifont1" align="left">Entitlements Report:&nbsp;&nbsp;</td>
      <td width="25%" align="left">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><input type="radio" name="DISABLE_ENTITLEMENTS_REPORT" value="0"<TMPL_UNLESS NAME=DISABLE_ENTITLEMENTS_REPORT> checked="checked"</TMPL_UNLESS>/></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><input type="radio" name="DISABLE_ENTITLEMENTS_REPORT" value="1"<TMPL_IF NAME=DISABLE_ENTITLEMENTS_REPORT> checked="checked"</TMPL_IF>/></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </tr>
    </TMPL_IF>
    </TMPL_IF>
    
	  <TMPL_IF COMPANY_DISABLE_LOCATOR_REPORT>
	  <TMPL_IF COMPANY_DISABLE_COMP_REPORT>
	  <TMPL_IF COMPANY_DISABLE_ADDR_REPORT>
	  <TMPL_IF COMPANY_DISABLE_BUS_REPORT>
	  <TMPL_IF COMPANY_DISABLE_COMPREHENSIVE_REPORT>
	  <TMPL_IF COMPANY_DISABLE_SUMMARY_REPORT>
	  <TMPL_IF COMPANY_DISABLE_PEOPLE_FINDER_REPORT>
	  <TMPL_IF COMPANY_DISABLE_ASSET_REPORT>
	  <TMPL_IF COMPANY_DISABLE_ENTITLEMENTS_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="200" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;No Reports Available</TD>
	  </TR>

	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
    </table>
  </fieldset>
  </td></tr></table>

  <TMPL_IF ALLOW_FCRA>
              <table border="0" width="100%">
              <tr><td style="border:solid 2px #496426;">
              <div class="hpColHdrGrn" >
                <h4 style="font-size: 85%; margin-top: 0px; margin-bottom: 0px; height: auto;">Decisioning (FCRA)</h4>
              </div>
  <fieldset>
    <div align="left" class="unifont1bold"><legend>Enable Report Settings</legend></div>
      <table border="0" cellpadding="0" cellspacing="0" width="95%">
  
    <TMPL_UNLESS COMPANY_DISABLE_FCRA_COMP_REPORT>
    <TR>
      <td class="unifont1" align="left" width="75%" nowrap="">Custom Comprehensive Reports:</TD>
      <td align="left" width="25%">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><INPUT TYPE=RADIO NAME=DISABLE_FCRA_COMP_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_COMP_REPORT>CHECKED</TMPL_UNLESS>></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><INPUT TYPE=RADIO NAME=DISABLE_FCRA_COMP_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_COMP_REPORT>CHECKED</TMPL_IF>></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </TR>
    </TMPL_UNLESS>

    <TMPL_UNLESS COMPANY_DISABLE_FCRA_COMPREHENSIVE_REPORT>
    <TR>
      <td class="unifont1" align="left" width="75%" nowrap="">Comprehensive Reports:</TD>
      <td align="left" width="25%">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
    <td><INPUT TYPE=RADIO NAME=DISABLE_FCRA_COMPREHENSIVE_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_COMPREHENSIVE_REPORT>CHECKED</TMPL_UNLESS>></td>
    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
    <td><INPUT TYPE=RADIO NAME=DISABLE_FCRA_COMPREHENSIVE_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_COMPREHENSIVE_REPORT>CHECKED</TMPL_IF>></td>
    <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </TR>
    </TMPL_UNLESS>

	  <TMPL_UNLESS COMPANY_DISABLE_FCRA_ASSET_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="75%" nowrap="">Asset Reports:</TD>
	    <td align="left" width="25%">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME=DISABLE_FCRA_ASSET_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_ASSET_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME=DISABLE_FCRA_ASSET_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_ASSET_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>

    </table>
  </fieldset>

  </td></tr></table>
  </TMPL_IF>
</TMPL_UNLESS>
  <!-- END manage_account_disable_reports.tpl -->
