<!-- BEGIN loc/manage_account_disable_searches.tpl -->
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td class="unifont1" colspan="2"><b>Enable Search / Report Settings:</b><TMPL_UNLESS DA_ONLY>&nbsp;<span class="smallfont1"> (Disabling Search settings will also disable these options on Reports)</TMPL_UNLESS><br></td>
	      </TR>
           </table>
	      
      <!-- People -->
      <TMPL_IF COMPANY_DISABLE_PERSON>
      <INPUT TYPE=HIDDEN NAME="DISABLE_PERSON" VALUE="<TMPL_IF DISABLE_PERSON>1<TMPL_ELSE>0</TMPL_IF>">
      <TMPL_ELSE>
	 <fieldset>
	  <span class="unifont1bold"><legend>People</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
	      <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Find a Person:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PERSON" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PERSON>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PERSON" VALUE='1' <TMPL_IF NAME=DISABLE_PERSON>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>
           </table>
	 </fieldset>
      </TMPL_IF>

      <!-- Businesses -->
      <TMPL_IF COMPANY_DISABLE_BUS>
      <INPUT TYPE=HIDDEN NAME="DISABLE_BUS" VALUE="<TMPL_IF DISABLE_BUS>1<TMPL_ELSE>0</TMPL_IF>">
      <TMPL_ELSE>
	 <fieldset>
	  <span class="unifont1bold"><legend>Businesses</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Find a Business:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS" VALUE='1' <TMPL_IF NAME=DISABLE_BUS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>
           </table>
	 </fieldset>
      </TMPL_IF>

      <!-- Directory Assistance -->
	 <TMPL_IF COMPANY_DISABLE_DA_BASIC>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DA_BASIC" VALUE="<TMPL_IF DISABLE_DA_BASIC>1<TMPL_ELSE>0</TMPL_IF>">
        <TMPL_ELSE>
	 <fieldset>
	  <span class="unifont1bold"><legend>Phones</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Find a Phone:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_BASIC" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DA_BASIC>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_BASIC" VALUE='1' <TMPL_IF NAME=DISABLE_DA_BASIC>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>
	   </table>
	 </fieldset>
      </TMPL_IF>
 <!-- END loc/manage_account_disable_searches.tpl -->

