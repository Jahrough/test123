<!-- begin inputs_fields/da_reverse_search.tpl -->
      <tr>
        <td align="left" valign="top">
	<table border="0" cellpadding="2" cellspacing="0">
	  <tr>
	    <td class="inputlabel">&nbsp;<b>Phone Number</b></td>
	    <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
	  </tr>
	  <tr>
	    <td class="nsinputs"><input type="text" name="PHONE" tabindex="1" size="14" value="<TMPL_VAR NAME=PHONE>" maxlength=14 onBlur="this.value=this.value.toUpperCase()"></td>
	    <td class="nsinputs"><input type="text" name="STATE" tabindex="3" size="4" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
	  </tr>
	</table>
	</td>
      </tr>
      <tr>
        <td align="left" valign="top">
	<table border="0" cellpadding="2" cellspacing="0">
	  <tr>
	    <td class="smalllabel" valign="top"><br>&nbsp;<b>Enter either:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td class="smalllabel"><br>&#8226;&nbsp; 7-digit phone number (with or without state)<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>OR</b><br><br>&#8226;&nbsp; 10-digit phone number</td>
	  </tr>
	</table>
        </td>	
      </tr>
<!-- end inputs_fields/da_reverse_search.tpl -->
