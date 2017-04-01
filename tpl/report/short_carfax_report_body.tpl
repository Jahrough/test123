<!-- Begin short_carfax_report_body.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620">
<TMPL_IF NAME="ERROR_MESSAGE">
  <tr>
    <td align="inputlabelcarfax"><b><TMPL_VAR NAME="ERROR_MESSAGE"></b></td>
  </tr>
  <tr>
    <td class="inputlabelcarfax">&nbsp;</td>
  </tr>
</TMPL_IF>
  <tr>
    <td class="inputlabelcarfax"><b>CARFAX Vehicle History Report Order Form</b></td>
  </tr>
  <tr>
    <td class="inputlabel">&nbsp;</td>
  </tr>
  <tr>
    <td class="inputlabelcarfax"><b>Good News!</b> CARFAX has information on the vehicle you requested and will instantly produce a report on vehicle identification number <TMPL_VAR VIN>,<TMPL_IF NAME=VEHICLE_DESC> <TMPL_VAR VEHICLE_DESC>,</TMPL_IF> after you have acknowledged the Terms and Conditions below. If this is not the VIN you want a CARFAX report for, please enter a new VIN for validation before you continue.</td>
  </tr>
  <TMPL_UNLESS HIDE_PRICES>
  <TMPL_UNLESS HIDE_CARFAX_PRICE>
  <tr>
    <td class="inputlabelcarfax">&nbsp;</td>
  </tr>
  <tr>
    <td class="inputlabelcarfax">&nbsp;You will be charged <span class="reportprices">$15.99</span> for the full CARFAX<span class=smalllabelcarfax>&reg;</span> Vehicle History Report.</td>
  </tr>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
  <tr>
    <td class="inputlabelcarfax">&nbsp;</td>
  </tr>
  <tr>
    <td class="inputlabelcarfax"><textarea cols=75 rows=10 onfocus="this.blur()"><tmpl_include name="carfax_disclaimer.tpl"></textarea></td>
  </tr>
  <tr>
    <td valign="top" align="left">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td class="inputlabelcarfax"><input type="radio" name="CARFAX_AGREE" tabindex="1" value="1"> I Agree</td>
        <td class="inputlabelcarfax">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td class="inputlabelcarfax"><input type="radio" name="CARFAX_AGREE" tabindex="2" value="2"> I Do Not Agree</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="inputlabelcarfax">&nbsp;</td>
  </tr>
  <tr>
    <td valign="top" align="left">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
        <td>
          <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
            <tr>
            <TMPL_IF DEMO>
	            <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="if(!validate()) {return false;};parent.location='<TMPL_VAR NAME=PDFPATH>/carfax/sample_carfax_report.pdf'" onMouseOut="flip_style(this,'rb');"></td>
            <TMPL_ELSE>
              <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="if(!validate()) {return false;};showpw();send_event('REPORT/CARFAX_REPORT');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
            </TMPL_IF>
            </tr>
          </table>
        </td>
        <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td>
          <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
            <tr>
              <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Exit" onMouseDown="flip_style(this,'rbd');" onClick="self.onerror = function() {window.close(); return true;}; if (opener) {if (!opener.closed){opener.focus()}}; window.close();" onMouseOut="flip_style(this,'rb');"></td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- End short_carfax_report_body.tpl-->
