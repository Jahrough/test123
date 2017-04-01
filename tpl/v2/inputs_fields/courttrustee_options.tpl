<!-- begin tcol/inputs_fields/courttrustee_options.tpl -->

    <!--- Start Show Court Trustee Information --->
    <TMPL_IF NAME='COURTTRUSTEE'>
        <tr>
            <td valign="top" align="left">
                <span class="moreSearchesHeader" id="title_text"></span>
                <script>write_search_title('<TMPL_VAR NAME='CourtTrusteeInfo'>');</script>
            </td>
        </tr>
        <tr>
            <td valign="top" align="left">
                <table border="0" cellpadding="4" cellspacing="0">
                    <tr>
                        <td>&nbsp;<b>Select a state from the drop down menu below to see the Court and Trustee information for that state.</b></td>
                    </tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr>
                    <td valign="top" align="left">
                        <table border="0" cellpadding="4" cellspacing="0">
                            <tr>
	                            <td><b><label>State</label></b></td>
	                            <td>&nbsp;</td>
	                            <td class="nsinputs" align="left"><TMPL_INCLUDE NAME="state_only_dropdown.tpl"></td>
                            </tr>
                        </table>
                    </td>
                    </tr>
                </table>
            </td>
        </tr>
        
    </TMPL_IF>
    <!--- End Show Court Trustee Information --->
<!-- end tcol/inputs_fields/courttrustee_options.tpl -->
