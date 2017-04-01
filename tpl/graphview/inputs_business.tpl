    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
	<td valign="top" align="left" class="unifont1"><font color="#003399"><b>Company Name</b></font></td>
	<td class="unifont1">&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="unifont1"><font color="#003399"><b>Address</b></font></td>
	<td class="unifont1">&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="unifont1"><font color="#003399"><b>Phone</b></font></td>
      </tr>
      <tr>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=COMPANY></td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CITY> <TMPL_VAR STATE> <TMPL_VAR ZIP><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF></td>
	<td valign="top" align="left" class="unifont1">&nbsp;&nbsp;</td>
	<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME=PHONE></td>
      </tr>
    </table>
