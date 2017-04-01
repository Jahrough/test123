<!-- begin inputs_fields/phone_identifier_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
	<table border="0" cellpadding="2" cellspacing="0">
	  <tr>
	    <td>&nbsp;<b><label for="PHONE">Phone Number</label></b><a href="javascript:void(0);" onClick="phone_tip_7_or_10_alt();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	  </tr>
	  <tr>
	    <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="1" size="14" value="<TMPL_VAR NAME=PHONE>" maxlength=14 ></td> 
	  </tr>
	</table>
	</td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
	  <tr>
	    <td class="smalllabel" valign="top"><br>&nbsp;<b>Enter either:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td class="smalllabel"><br>&#8226;&nbsp; 7-digit phone number (without area code)<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>OR</b><br><br>&#8226;&nbsp; 10-digit phone number</td>
	  </tr>
	</table>
        </td>	
      </tr>
<!-- end inputs_fields/phone_identifier_search.tpl -->
