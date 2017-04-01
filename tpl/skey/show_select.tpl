      <script>
         function change_cat(){
           document.forms[0].CHANGE_CAT.value=1;
	   send_event('<TMPL_VAR NAME=CURRENT_EVENT>');
         }
      </script>
      <tr> <td align='center' colspan='2'><br>
      <table border="0" cellpadding="10" cellspacing="1" class="myaccountborder">
      <tr> <td align=center class="myaccountalert"><span class=unifont1><b>
      <!--<TMPL_UNLESS UPDATE>  Step 1 of 5 : </TMPL_UNLESS> -->Select your Secure Login Image <br></b></span>
      </td> </tr> </table>
      <br></td></tr>
      <tr>
	<td align="left" class="unifont1" colspan="2">
	<table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td class="unifont1" width=100>&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td class="unifont1">1. Select an Image category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td class="unifont1">
		<input type=hidden name=CHANGE_CAT value=0>
		<select class="unifont1" name="CATEGORY" onChange="change_cat()";">
		 <TMPL_LOOP NAME="CAT_OPTIONS">
		    <option value="<TMPL_VAR NAME=VAL>"<TMPL_IF NAME="SELECTED"> SELECTED</TMPL_IF> ><TMPL_VAR NAME></option> 
		 </TMPL_LOOP>
		</select>
		</td>
	      </tr>
	</table>
	</td>
      </tr>
      <tr> <td  colspan='2'>
      <table border="0" cellpadding="10" cellspacing="0">
      <tr><td width=70></td> <td  class="unifont1">
        2. Select a Secure Login Image by clicking on the image or the corresponding "SELECT" link below:
	   </td> </tr> </table>
      </td></tr>
      <tr>
        <td width="760" align="center">
        <br>
        <table border="0" cellpadding="2" cellspacing="0" width="600" align='center'>
	<TMPL_LOOP NAME="SITEKEY_OPTIONS">
	   <tr>
		<td align="center"><a href="<TMPL_VAR NAME=ACTION>?EVENT=MANAGE/SELECT_SITEKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&SKEY_SEL=<TMPL_VAR NAME=SITEKEY_IMG1>"><img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&IG=<TMPL_VAR NAME=SITEKEY_IMG1>" border="1" width="124" height="110" style="border-color:#000000"></a></td>
		<td width=20> &nbsp; &nbsp; &nbsp; </td>
		<td align="center"><a href="<TMPL_VAR NAME=ACTION>?EVENT=MANAGE/SELECT_SITEKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&SKEY_SEL=<TMPL_VAR NAME=SITEKEY_IMG2>"><img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&IG=<TMPL_VAR NAME=SITEKEY_IMG2>" border="1" width="124" height="110" style="border-color:#000000"></a></td>
		<td width=20> &nbsp; &nbsp; &nbsp; </td>
		<td align="center"><a href="<TMPL_VAR NAME=ACTION>?EVENT=MANAGE/SELECT_SITEKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&SKEY_SEL=<TMPL_VAR NAME=SITEKEY_IMG3>"><img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&IG=<TMPL_VAR NAME=SITEKEY_IMG3>" border="1" width="124" height="110" style="border-color:#000000"></a></td>
	   </tr>
	   <tr>
	     <td class="unifont1" align="center">
	     <a href="<TMPL_VAR NAME=ACTION>?EVENT=MANAGE/SELECT_SITEKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&SKEY_SEL=<TMPL_VAR NAME=SITEKEY_IMG1>"><b>SELECT</b></a>
	     </td>
	     <td width=20> &nbsp; &nbsp; &nbsp; </td>
	     <td class="unifont1" align="center">
	     <a href="<TMPL_VAR NAME=ACTION>?EVENT=MANAGE/SELECT_SITEKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&SKEY_SEL=<TMPL_VAR NAME=SITEKEY_IMG2>"><b>SELECT</b></a>
	     </td>
	     <td width=20> &nbsp; &nbsp; &nbsp; </td>
	     <td class="unifont1" align="center">
	     <a href="<TMPL_VAR NAME=ACTION>?EVENT=MANAGE/SELECT_SITEKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&SKEY_SEL=<TMPL_VAR NAME=SITEKEY_IMG3>"><b>SELECT</b></a>
	     </td>
	   </tr> 
	   <tr><td colspan=7 height=20> </tr>
	</TMPL_LOOP>
        </table>
	<br><br><br>
	</td>
      </tr>
