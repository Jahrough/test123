<!-- Begin credit_card.tpl -->
<TMPL_INCLUDE NAME="court_header.tpl">

<div align="center">

<table border="0" cellpadding="0" cellspacing="0" width="765">
<tr>
<td width="15"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="15" height="1"></td>
<td width="750" valign="top">


<table border="0" cellpadding="2" cellspacing="0" width="100%" class="courttableborder">
<tr>
<td valign="top">

<table border="0" cellpadding="5" cellspacing="0" width="100%" class="courttablebody">
<tr>
<td valign="top">

<TMPL_IF IS_EXEMPT>
<TMPL_INCLUDE NAME="exempt_user_msg.tpl">
</TMPL_IF>
<P>
<TMPL_INCLUDE NAME="credit_card_form.tpl">

</td>
</tr>
</table>

</td>
</tr>
</table>

</td>
</tr>
</table>

</div>


<TMPL_INCLUDE NAME="court_footer.tpl">
<!-- End credit_card.tpl -->
