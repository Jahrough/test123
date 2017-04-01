<!-- begin myaccount_disabled.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="880">

<tr height="20">
  <td align="center" class="myaccountborder" height="20" class="unifont2">&nbsp;</td>
</tr>

<tr>
  <td align="center" class="myaccountborder">
    <table border="1" cellpadding="5" cellspacing="1" width="860" bgcolor="#d0ccd0">
	  <tr height="50">
	    <TMPL_IF MFA_DISABLED>
	      <td class="smallfont1" nowrap align="center" valign="middle"><b><TMPL_VAR NAME=MFA_MESSAGE></b></td>
	    <TMPL_ELSE>
	    <TMPL_IF DISABLED_MSG>
	      <TMPL_IF IRB>
	        <td class="smallfont1" valign="middle"><br><br>
		Do you have an <a href="http://irbsearch.com/irbfocus.html" target="_blank"><b>IRBfocus</b></a> account? All of your billing and usage details are available to you in IRB's newest search platform, IRBfocus. If you have not activated your new IRBfocus account, request one online <a href="http://irbsearch.com/irbfocus-request.html" target="_blank"><b>here</b></a> or call our friendly Customer Care Team at 1.800.447.2112 to get started.
		<br><br><br>
	    </td>
	      <TMPL_ELSE>
		<td class="smallfont1" nowrap align="center" valign="middle"><b><TMPL_VAR NAME=DISABLED_MSG></b></td>
	      </TMPL_IF>
	    <TMPL_ELSE>
		<td class="smallfont1" nowrap align="center" valign="middle"><b>Currently Not Available</b></td>
	    </TMPL_IF>
	    </TMPL_IF>
	    <!-- <td class="smallfont1" nowrap align="center" valign="middle"><b>
We are currently not accepting online payments while we perform our end<br>
of month billing processes.  We apologize for the inconvenience, and we<br>
will be accepting payments again starting at 8:00AM Eastern.
	    </b></td> -->
	  </tr>
    </table>
  </td>
</tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<span class="smallfont1">&nbsp;<br></span>
<!-- end myaccount_disabled.tpl -->
