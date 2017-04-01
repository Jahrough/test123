<!-- Begin claims_discovery_report_body.tpl-->
<script>
    window.resizeTo(780,680);
</script>

<table width="720" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">

  <tr>
    <td align="left" colspan="3"class="medblack"><b>Select Add-On Report Types:&nbsp;&nbsp;</b></td>
  </tr>
   <tr>
      <td width="56%" valign="top">
          <table border="0" cellpadding="0" cellspacing="5" width="100%">
	      <tr>
		  <tr>
		    <td width="1%"><input type="checkbox" id="hov" name="hov" value="1" <TMPL_VAR NAME="hov">></td>
		    <td align="left" class="medblack2"><label for="hov">&nbsp;HOV (Home Ownership Verification) - verifies if subject is the listed owner of the address.&nbsp;&nbsp;</label></td>
		  </tr>
		  <tr>
		    <td width="1%"><input type="checkbox" id="add-driver" name="add-driver" value="1" <TMPL_VAR NAME="add-driver">></td>
		    <td align="left" class="medblack2"><label for="add-driver">&nbsp;Additional Driver Discovery (Auto Only) - returns additional drivers in a household.&nbsp;&nbsp;</label></td>
		  </tr>
		  <tr>
		    <td width="1%"><input type="checkbox" id="real-property" name="real-property" value="1" <TMPL_VAR NAME="real-property">></td>
		    <td align="left" class="medblack2"><label for="real-property">&nbsp;Real Property (Property Only) - provides information regarding financial transactions and physical characteristics for &nbsp;the address in question.&nbsp;&nbsp;If ordering Real Property, House # is required.</label></td>
		  </tr>
	      </tr>
	  </table>
      </td>
      </tr>
</table>
<!-- End claims_discovery_report_body.tpl-->
