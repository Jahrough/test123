  <!-- BEGIN manage_account_disable_reports.tpl -->
<TMPL_UNLESS DA_ONLY>
<TMPL_UNLESS ATACRAIDS_ONLY>
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
	<TMPL_UNLESS GOV>
	<TMPL_UNLESS LE>
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
    </TMPL_UNLESS>
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

	  <TMPL_UNLESS COMPANY_DISABLE_ASSET_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="200">Asset Reports:</TD>
	    <td align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME=DISABLE_ASSET_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_ASSET_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME=DISABLE_ASSET_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_ASSET_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>

	  <TMPL_IF ENABLE_PRELIT_REPORT>
	  <TMPL_UNLESS COMPANY_DISABLE_PRE_LIT_REPORT>
	  <TR>
	    <td class="unifont1" align="left" width="200">Pre-Litigation Reports:</TD>
	    <td align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME=DISABLE_PRE_LIT_REPORT VALUE='0' <TMPL_UNLESS NAME=DISABLE_PRE_LIT_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME=DISABLE_PRE_LIT_REPORT VALUE='1' <TMPL_IF NAME=DISABLE_PRE_LIT_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>
	  </TMPL_IF>

	  <TMPL_IF ENABLE_GRAPHVIEW>
	  <TMPL_UNLESS COMPANY_DISABLE_GRAPHVIEW>
	  <TR>
	    <td class="unifont1" align="left" width="200"><TMPL_IF INS>Graphview Viewer:<TMPL_ELSE>Relavint:</TMPL_IF></TD>
	    <td align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE="RADIO" NAME="DISABLE_GRAPHVIEW" VALUE="0" <TMPL_UNLESS NAME=DISABLE_GRAPHVIEW>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE="RADIO" NAME="DISABLE_GRAPHVIEW" VALUE="1" <TMPL_IF NAME=DISABLE_GRAPHVIEW>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_UNLESS>
	  </TMPL_IF>

	  <TMPL_IF INS>
          <TMPL_IF ENABLE_GRAPHVIEW>
          <TMPL_IF EDIT_GRAPHTYPE>
	  <TR>
	    <td class="unifont1" align="left" width="200">Graphview Viewer Type</TD>
	    <td align="left" width="220">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE="RADIO" NAME="GTYPE" VALUE="1" <TMPL_IF GTYPE>CHECKED</TMPL_IF>></td>
		<td class="unifont1">Relavint</td>
		<td><INPUT TYPE="RADIO" NAME="GTYPE" VALUE="2" <TMPL_IF ITYPE>CHECKED</TMPL_IF>></td>
		<td class="unifont1">I2</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	  </TMPL_IF> 
	  </TMPL_IF> 
	  </TMPL_IF>

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
	  <TMPL_UNLESS GOV>
	  <TMPL_UNLESS LE>
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
	  </TMPL_UNLESS>
	  </TMPL_UNLESS>
    

      <TMPL_UNLESS DO_NOT_DISPLAY_CONTACT_CARD_REPORT>
	  <TMPL_IF ENABLE_CONTACT_CARD_REPORT>
	  <TMPL_IF COMPANY_DISABLE_CONTACT_CARD_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_CONTACT_CARD_REPORT" VALUE="<TMPL_IF DISABLE_CONTACT_CARD_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="75%" nowrap class="unifont1" align="left"><TMPL_IF INS>Points of Contact Report<TMPL_ELSE>Contact Card Report</TMPL_IF>:&nbsp;&nbsp;</TD>
	    <td width="25%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_CONTACT_CARD_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CONTACT_CARD_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_CONTACT_CARD_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_CONTACT_CARD_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td> 
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>
      </TMPL_UNLESS>

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

	  <TMPL_IF NAME="ENABLE_RESULTS_FOUND">
	  <TMPL_IF COMPANY_DISABLE_RESULTS_FOUND_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_RESULTS_FOUND_REPORT" VALUE="<TMPL_IF DISABLE_RESULTS_FOUND_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="10%" nowrap class="unifont1" align="left">Results Found Report:&nbsp;&nbsp;</TD>
	    <td width="90%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_RESULTS_FOUND_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_RESULTS_FOUND_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_RESULTS_FOUND_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_RESULTS_FOUND_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>

	  <TMPL_IF ENABLE_BASIC_PLUS_ASSOCIATES_REPORT>
	  <TMPL_IF COMPANY_DISABLE_BASIC_PLUS_ASSOCIATES_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_BASIC_PLUS_ASSOCIATES_REPORT" VALUE="<TMPL_IF DISABLE_BASIC_PLUS_ASSOCIATES_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="75%" nowrap class="unifont1" align="left">Basic Plus Associates Report:&nbsp;&nbsp;</TD>
	    <td width="25%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BASIC_PLUS_ASSOCIATES_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BASIC_PLUS_ASSOCIATES_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BASIC_PLUS_ASSOCIATES_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BASIC_PLUS_ASSOCIATES_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>

	  <TMPL_IF NAME="SHOW_BUS_QUALIFIER_REPORT">
	  <TMPL_IF COMPANY_DISABLE_BUS_QUALIFIER_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_QUALIFIER_REPORT" VALUE="<TMPL_IF DISABLE_BUS_QUALIFIER_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="10%" nowrap class="unifont1" align="left">Custom Comprehensive Health Care Business Report:&nbsp;&nbsp;</TD>
	    <td width="90%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_QUALIFIER_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_QUALIFIER_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_QUALIFIER_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_QUALIFIER_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>

	  <TMPL_IF NAME="SHOW_BUS_FR_QUALIFIER_REPORT">
	  <TMPL_IF COMPANY_DISABLE_BUS_FR_QUALIFIER_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_FR_QUALIFIER_REPORT" VALUE="<TMPL_IF DISABLE_BUS_FR_QUALIFIER_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="10%" nowrap class="unifont1" align="left">Comprehensive Health Care Business Report:&nbsp;&nbsp;</TD>
	    <td width="90%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_FR_QUALIFIER_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_FR_QUALIFIER_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_FR_QUALIFIER_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_FR_QUALIFIER_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>

	  <TMPL_IF NAME="SHOW_IND_QUALIFIER_REPORT">
	  <TMPL_IF COMPANY_DISABLE_IND_QUALIFIER_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_IND_QUALIFIER_REPORT" VALUE="<TMPL_IF DISABLE_IND_QUALIFIER_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="10%" nowrap class="unifont1" align="left">Custom Comprehensive Health Care Provider Report:&nbsp;&nbsp;</TD>
	    <td width="90%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_IND_QUALIFIER_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IND_QUALIFIER_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_IND_QUALIFIER_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_IND_QUALIFIER_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>

	  <TMPL_IF NAME="SHOW_IND_FR_QUALIFIER_REPORT">
	  <TMPL_IF COMPANY_DISABLE_IND_FR_QUALIFIER_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_IND_FR_QUALIFIER_REPORT" VALUE="<TMPL_IF DISABLE_IND_FR_QUALIFIER_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="10%" nowrap class="unifont1" align="left">Comprehensive Health Care Provider Report:&nbsp;&nbsp;</TD>
	    <td width="90%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_IND_FR_QUALIFIER_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IND_FR_QUALIFIER_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_IND_FR_QUALIFIER_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_IND_FR_QUALIFIER_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>

    <TMPL_UNLESS DO_NOT_DISPLAY_SNA_SEARCH_REPORT>
          <TMPL_IF NAME="COMPANY_DISABLE_SNA">          
	        <INPUT TYPE=HIDDEN NAME="DISABLE_SNA" VALUE="<TMPL_IF DISABLE_SNA>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
	  <TR>
	    <td width="10%" nowrap class="unifont1" align="left">Business Link Report:&nbsp;&nbsp;</TD>
	    <td width="90%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_SNA" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SNA>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_SNA" VALUE='1' <TMPL_IF NAME=DISABLE_SNA>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
          </TMPL_IF>
      </TMPL_UNLESS>        

	  <TMPL_IF ENABLE_BUS_CONTACT_CARD_REPORT>
	  <TMPL_IF COMPANY_DISABLE_BUS_CONTACT_CARD_REPORT>
	  <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_CONTACT_CARD_REPORT" VALUE="<TMPL_IF DISABLE_BUS_CONTACT_CARD_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	  <TMPL_ELSE>
	  <TR>
	    <td width="75%" nowrap class="unifont1" align="left">Business Contact Card Report:&nbsp;&nbsp;</TD>
	    <td width="25%" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_CONTACT_CARD_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_CONTACT_CARD_REPORT>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_CONTACT_CARD_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_CONTACT_CARD_REPORT>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>    
	  </TR>
	  </TMPL_IF>
	  </TMPL_IF>

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

          <TMPL_IF ALLOW_PREMISES_REPORT>
          <TMPL_IF COMPANY_DISABLE_PREMISES_REPORT>
          <input type="hidden" name="DISABLE_PREMISES_REPORT" value="<TMPL_IF DISABLE_PREMISES_REPORT>1<TMPL_ELSE>0</TMPL_IF>"/>
          <TMPL_ELSE>
            <TR>
              <td width="75%" nowrap class="unifont1" align="left">Premises Report:</TD>
              <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_PREMISES_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PREMISES_REPORT>CHECKED</TMPL_UNLESS>></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_PREMISES_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_PREMISES_REPORT>CHECKED</TMPL_IF>></td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
            </TR>
          </TMPL_IF>
          </TMPL_IF>

          <TMPL_IF FDN_DATA_ENABLED> 
            <TMPL_IF FDN_REPORTS_DISABLED>
              <INPUT TYPE=HIDDEN NAME="RESTRICT_FDN_USER_OPTIONS" VALUE="<TMPL_IF RESTRICT_FDN_USER_OPTIONS>1<TMPL_ELSE>0</TMPL_IF>">
            <TMPL_ELSE>
            <TR>
              <td width="75%" nowrap class="unifont1" align="left">LexisNexis&reg; Fraud Defense Network:
                <a id="fdndownicon" href="javascript:showhideFDN('display','')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_down.gif" hspace="4"/></a>
                <a id="fdnupicon" style="display:none;" href="javascript:showhideFDN('display','none')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_up.gif" hspace="4"/></a>
              <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_FDN_SECTION" VALUE='0' id="fdn-network" onClick="checkFDNelements('checkFDN');"<TMPL_UNLESS NAME=FDN_REPORTS_OFF>CHECKED</TMPL_UNLESS>></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_FDN_SECTION" VALUE='1' onClick="checkFDNelements('uncheckFDN');"<TMPL_IF NAME=FDN_REPORTS_OFF>CHECKED</TMPL_IF>></td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
            </TR>
            </TMPL_IF>
            <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_SUBJECT>
            <TMPL_IF COMPANY_DISABLE_FDN_REPORT_SUBJECT>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDN_REPORT_SUBJECT" VALUE="<TMPL_IF DISABLE_FDN_REPORT_SUBJECT>1<TMPL_ELSE>0</TMPL_IF>">
            <TMPL_ELSE>
            <TR id="fdnsubject" style="display:none;">
              <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Subject Only:</TD>
              <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_FDN_REPORT_SUBJECT" VALUE='0' class="checkFDN" onclick="checkFDNtopoption(this);"  <TMPL_UNLESS NAME=DISABLE_FDN_REPORT_SUBJECT>CHECKED</TMPL_UNLESS>></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td id='fdnsubjectno'><INPUT TYPE=RADIO NAME="DISABLE_FDN_REPORT_SUBJECT" VALUE='1' class="uncheckFDN" <TMPL_IF NAME=DISABLE_FDN_REPORT_SUBJECT>CHECKED</TMPL_IF>></td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
            </TR>
            </TMPL_IF>
            </TMPL_UNLESS>
            <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_ALL>
            <TMPL_IF COMPANY_DISABLE_FDN_REPORT_ALL>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDN_REPORT_ALL" VALUE="<TMPL_IF DISABLE_FDN_REPORT_ALL>1<TMPL_ELSE>0</TMPL_IF>">
            <TMPL_ELSE>
            <TR id="fdnassociations" style="display:none;">
              <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;All Associations:</TD>
              <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_FDN_REPORT_ALL" VALUE='0' class="checkFDN" onclick="checkFDNtopoption(this);" <TMPL_UNLESS NAME=DISABLE_FDN_REPORT_ALL>CHECKED</TMPL_UNLESS>></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td id='fdnassociationsno'><INPUT TYPE=RADIO NAME="DISABLE_FDN_REPORT_ALL" VALUE='1' class="uncheckFDN" <TMPL_IF NAME=DISABLE_FDN_REPORT_ALL>CHECKED</TMPL_IF>></td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
            </TR>
            </TMPL_IF>
            </TMPL_UNLESS>
          </TMPL_IF> <!--FDN_DATA_ENABLED -->

	  <TMPL_IF COMPANY_DISABLE_IND_QUALIFIER_REPORT>
	  <TMPL_IF COMPANY_DISABLE_BUS_QUALIFIER_REPORT>
	  <TMPL_IF COMPANY_DISABLE_LOCATOR_REPORT>
	  <TMPL_IF COMPANY_DISABLE_COMP_REPORT>
	  <TMPL_IF COMPANY_DISABLE_ADDR_REPORT>
	  <TMPL_IF COMPANY_DISABLE_BUS_REPORT>
	  <TMPL_IF COMPANY_DISABLE_COMPREHENSIVE_REPORT>
	  <TMPL_IF COMPANY_DISABLE_SUMMARY_REPORT>
	  <TMPL_IF COMPANY_DISABLE_PEOPLE_FINDER_REPORT>
	  <TMPL_IF COMPANY_DISABLE_ASSET_REPORT>
	  <TMPL_IF COMPANY_DISABLE_GRAPHVIEW>
      <TMPL_IF COMPANY_DISABLE_NCPDP_REPORT>
          <TMPL_UNLESS ALLOW_PREMISES_REPORT>

	  <TR>
	    <td class="unifont1" align="left" width="200" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;No Reports Available</TD>
	  </TR>

	  </TMPL_UNLESS>
	  </TMPL_IF>
	  </TMPL_IF>
	  </TMPL_IF>
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
</TMPL_UNLESS>
</TMPL_UNLESS>
  <!-- END manage_account_disable_reports.tpl -->
