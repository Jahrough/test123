<!-- begin: sec_ques.tpl -->
<table border=0 class="unifont2">

<input type=hidden name="PROCESS" value="1">
<input type=hidden name="LOGINID" value="<TMPL_VAR LOGINID>">
<input type=hidden name="FPTINFO" value="<TMPL_VAR FPTINFO>">

<tr><td width='110'></td> <td> Please answer the below security question </td> </tr>
<tr><td height='25' colspan='2'></td></tr>

<tr> <td width='110'></td><td> <label for="ans"><TMPL_VAR SECQUES></label></td> </tr>
<tr><td height='5' colspan='2'></td></tr>

<tr> <td width='110'></td><td > <input id="ans" type="password" name="ANSWER" value="" size=25 maxlength=60 tabindex=3 AUTOCOMPLETE="off"></td> </tr>


</table>
<!-- end: sec_ques.tpl -->
