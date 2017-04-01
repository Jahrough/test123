<!-- begin myaccount_init_checks_err.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="880">

<tr height="20">
  <td align="center" class="myaccountborder" height="20" class="unifont2">&nbsp;</td>
</tr>

<tr>
  <td align="center" class="myaccountborder">
    <table cellpadding="0" cellspacing="1" width="860" bgcolor="#FFFFCC">
	  <tr>
	  <td valign="top" width="60" align="middle"> <img alt="" src="<TMPL_VAR NAME=IMGPATH>/warn.gif">  </td>
	    <td class="unifont1" align="left" >
	    <TMPL_IF INIT_CHECK_ERR_MSG>
		<TMPL_VAR NAME=INIT_CHECK_ERR_MSG>
	    </TMPL_IF>
	    </td> 
	  </tr>
    </table>
  </td>
</tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>
<!-- end myaccount_init_checks_err.tpl -->
