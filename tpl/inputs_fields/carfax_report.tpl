<!-- begin inputs_fields/carfax_report.tpl -->
      <input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
      <tr>
        <td class="inputlabel"><b>Order your CARFAX Vehicle History Report Now!</b></td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td class="inputlabel">Please enter the VIN you want a CARFAX<span class=smalllabel>&reg;</span> Report for, so it can be validated before your order is processed.</td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel"><b>VIN</b>&nbsp;<span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="VIN" tabindex="1" size="30" value="<TMPL_VAR NAME=VIN>" maxlength=17 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td class="inputlabel"><span class=unifont1boldred>*</span><b>&nbsp;NOTE:</b> A VIN must be exactly 17 characters long; the letters "I", "O" or "Q" never appear</td>
      </tr>
      <tr>
        <td class="inputlabel">The CARFAX database contains information for cars manufactured from 1981 through the present.</td>
      </tr>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td class="inputlabel"><a class="inputlinklabelCarFax" href="javascript:general_win('<TMPL_VAR NAME=PDFPATH>/carfax/sample_carfax_report.pdf','CarfaxReport','','',1,1,1,1,1,0);void(0);" title="Carfax Sample Report">Sample Report</a></td>
      </tr>
      <TMPL_UNLESS HIDE_PRICES>
      <TMPL_UNLESS HIDE_CARFAX_PRICE>
      <tr>
        <td class="inputlabel">&nbsp;</td>
      </tr>
      <tr>
        <td class="inputlabel">Cost for a full CARFAX<span class=smalllabel>&reg;</span> Vehicle History Report is $15.99.</td>
      </tr>
      </TMPL_UNLESS>
      </TMPL_UNLESS>
<!-- end inputs_fields/carfax_report.tpl -->
