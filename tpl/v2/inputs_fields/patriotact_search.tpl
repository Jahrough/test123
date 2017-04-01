<!-- begin inputs_fields/patriotact_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="100%">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Full Name/Business Name/Vessel Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="1" size="60" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="100%">
          <tr>
            <td align="left">&nbsp;<b><label for="SEARCH_TYPE">Search Type</label></b></td>
            <td align="left">&nbsp;<b><label for="COUNTRY">Country</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs" width="35%" align="left">
      	      <select name="SEARCH_TYPE" id="SEARCH_TYPE" tabindex="2">
                <option value="I">Individual</option>
                <option value="N">Non-Individual</option>
                <option value="B">Both</option>
      	      </select>
          <TMPL_IF NAME="SEARCH_TYPE">
            <script>
              document.forms[0].SEARCH_TYPE.value = '<TMPL_VAR NAME="SEARCH_TYPE">';
            </script>
          </TMPL_IF>
	          </td>
            <td class="nsinputs" align="left">
      	      <select name="COUNTRY" id="COUNTRY" tabindex="3">
      	        <TMPL_INCLUDE NAME="inputs_fields/ofac_countries.tpl">
      	      </select>
          <TMPL_IF NAME="COUNTRY">
            <script>
              document.forms[0].COUNTRY.value = '<TMPL_VAR NAME="COUNTRY">';
            </script>
          </TMPL_IF>
	          </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" width="100%">
          <tr>
            <td align="left">&nbsp;</td>
	    <td><b><label for="THRESHOLD">Threshold</label></b><a href="javascript:void(0);" onClick="pa_threshold_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td width="35%" align="left"><b><label for="OFAC_ONLY">OFAC Search Only</label></b>&nbsp;<input type="checkbox" name="OFAC_ONLY" id="OFAC_ONLY" tabindex="4" value="1"<TMPL_IF NAME=OFAC_ONLY> checked</TMPL_IF>></td>
            <td class="nsinputs" align="left">
      	      <select name="THRESHOLD" id="THRESHOLD" tabindex="5">
      	        <option value="1">100%</option>
                <option value="0.98">98%</option>
                <option value="0.96">96%</option>
                <option value="0.94">94%</option>
                <option value="0.92">92%</option>
                <option value="0.90">90%</option>
                <option value="0.88">88%</option>
                <option value="0.86">86%</option>
                <option value="0.84" selected>84%</option>
                <option value="0.82">82%</option>
                <option value="0.80">80%</option>
      	      </select>
          <TMPL_IF NAME="THRESHOLD">
            <script>
              document.forms[0].THRESHOLD.value = '<TMPL_VAR NAME="THRESHOLD">';
            </script>
          </TMPL_IF>
	          </td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/patriotact_search.tpl -->
