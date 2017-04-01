<!-- begin search_inputs_disclaimer.tpl -->

<TMPL_UNLESS HIDE_DISCLAIMER>
 <!--<p style="margin-top:10px;"><strong>Important:</strong>&nbsp; The Public Records and commercially available data sources used in this system have errors. Data is sometimes entered poorly, processed incorrectly and is generally not free from defect. <a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','450','250',0,0,0,0,0,0,'','search_inputs_disclaimer_full');">Read More..</a>.</p>-->
 <p style="margin-top:10px;"><strong>Important:</strong> The Public Records and commercially available data sources used in this system have errors. Data is sometimes entered poorly, processed incorrectly and is generally not free from defect. <span id="toggleText" style="display:none"><br>This system should not be relied upon as definitively accurate. Before relying on any data this system supplies, it should be independently verified. For Secretary of State documents, the following data is for information purposes only and is not an official record.  Certified copies may be obtained from that individual state's Department of State.&nbsp; The criminal record data in this product or service may include records that have been expunged, sealed, or otherwise have become inaccessible to the public since the date on which the data was last updated or collected.<br><br><TMPL_IF IRB>IRBSearch, LLC<TMPL_ELSE>Accurint</TMPL_IF> does not constitute a "consumer report" as that term is defined in the federal Fair Credit Reporting Act, 15 USC 1681 et seq. (FCRA). Accordingly, <TMPL_IF IRB>IRBSearch, LLC<TMPL_ELSE>Accurint</TMPL_IF> may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another permissible purpose under the FCRA.</span><br><a id="displayText" href="javascript:toggle();">Read More</a></p>
 <TMPL_IF NAME="DA_WIRELESS_SEARCH">
    <p style="margin-top:10px;">Information available through the Phones Plus feature may not be used for marketing, solicitation, or similar purposes.  The Telephone Consumer Protection Act (47 U.S.C. sec. 227) prohibits use of automatic telephone dialing systems to make any call to any cellular telephone service or any other service for which the called party is charged for the call.</p>
 </TMPL_IF>

 <TMPL_IF NAME="ACCIDENT_SEARCH">
    <br/>
    <table border=0>
        <tr>
            <td style="margin-top:10px;" valign="top">
                <input type="checkbox" name="NO_SOLICIT"  id="noSolicit" tabindex="16" value="1" <TMPL_IF NAME="NO_SOLICIT">checked="checked" </TMPL_IF>/>
            </td>
            <td style="margin-top:10px;">
                <strong>
                    I hereby certify that I will not use (or allow any other person to use) the requested report(s) for any commercial solicitation purpose.
                </strong>
            </td>
        </tr>
    </table>
 </TMPL_IF>
 <TMPL_IF NAME="LEG">
   <TMPL_IF NAME="SHOW_CERITIFICATES">
    <br/>
    <table border=0>
        <tr>
            <td style="margin-top:10px;" valign="top">
                <input type="checkbox" name="NO_POLICE_SOLICIT"  id="noPoliceSolicit" tabindex="14" value="1" <TMPL_IF NAME="NO_POLICE_SOLICIT">checked="checked" </TMPL_IF>/>
            </td>
            <td style="margin-top:10px;">
                <strong>
					I hereby certify that my law firm will not use the requested for any commercial solicitation purposes
                </strong>
            </td>
        </tr>
		<tr>
			<td style="margin-top:10px;" valign="top">
                <input type="checkbox" name="POLICE_STATUTORY"  id="PoliceStatutory" tabindex="14" value="1" <TMPL_IF NAME="POLICE_STATUTORY">checked="checked" </TMPL_IF>/>
            </td>
            <td style="margin-top:10px;">
                <strong>
					I hereby certify that my law firm is a legal representative for an involved party to the accident or incident, and that my firm meets the statutory requirements for obtaining the report(s) ordered.
                </strong>
            </td>
        </tr>
     </table>
  </TMPL_IF>
 </TMPL_IF>

 <TMPL_IF NAME="EMAIL_SEARCH">
  <p style="margin-top:10px;">Information available through the Email Search feature may not be used for marketing, solicitation, or similar purposes.</p>
  </TMPL_IF>

 <TMPL_IF DELCO_SEARCH>
  <p style="margin-top:10px;"><strong>Note:</strong>&nbsp; This information is real time data and is subject to change at any moment. This information is also for informational purposes only. Certification may only be obtained through the Division of Corporations, or from a Delaware Registered Agent's office located within the State of Delaware.  </p>
 </TMPL_IF>

 <TMPL_IF DL_REG_SEARCH>
  <p style="margin-top:10px;"><strong>Note:</strong>&nbsp; Not all of the information contained in these search results is derived from governmental agencies. Some information may have been enhanced by additional sources.</p>
 </TMPL_IF>

 <TMPL_IF LICENSE_SEARCH>
  <p style="margin-top:10px;"><strong>Note:</strong>&nbsp; Not all of the information contained in these search results is derived from governmental agencies. Some information may have been enhanced by additional sources.</p>
 </TMPL_IF>

  <TMPL_IF CRIM_SEARCH>
  <p style="margin-top:10px;"><strong>Note:</strong>&nbsp; Not all of the information contained in these search results is derived from governmental agencies. Some information may have been enhanced by additional sources.</p>
 </TMPL_IF>

  <TMPL_IF SEXPREDATOR_SEARCH>
  <p style="margin-top:10px;"><strong>Note:</strong>&nbsp; Not all of the information contained in these search results is derived from governmental agencies. Some information may have been enhanced by additional sources.</p>
 </TMPL_IF>

 <TMPL_IF NAME=D_AND_B_SEARCH>
  <p style="margin-top:10px;"><strong>By clicking Search, I understand and agree to the <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','DNB','420','350',1,0,1,1,1,0,'','searches/dnb_terms');">Terms and Conditions</a> of usage.</strong></p>
 </TMPL_IF>

</TMPL_UNLESS>

<TMPL_IF LEXIS_SEARCH>
   <p style="margin-top:10px;"><strong><a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a></strong> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved. Use of this service is subject to <a href="http://www.lexisnexis.com/risk/terms/" target="_blank"><strong>Terms and Conditions</strong></a>.</p>
</TMPL_IF>

<!-- end search_inputs_disclaimer.tpl -->
