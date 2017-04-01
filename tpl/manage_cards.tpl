<!-- begin manage_cards.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr>
        <td align="center"><img alt="" width="856" height="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td align="center" class="unifont1">
	<TMPL_IF NAME="BILLING_NO_CARD">
	<br> <br>
<b>No credit card on file.  Please contact customer service.</b>
	<br> <br>
	<TMPL_ELSE>
		<TMPL_INCLUDE NAME="credit_card_form.tpl">
	</TMPL_IF>
        </td>
      </tr>
    </table>
    </td>
  </tr>  
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<!-- end manage_cards.tpl -->
