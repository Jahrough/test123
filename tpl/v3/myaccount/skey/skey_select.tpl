<!-- begin:skey_select.tpl -->

    <script>

    </script>
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="90%" class="unifont1">
    <center>
    <div class="infobox">
	<table border="0" width="100%">
	<tr>
	<td align="left" width="35%" nowrap="nowrap">
	<b>Company ID:</b> <tmpl_var name="COMPANY_ID">
	</td>
	<td align ="left" width="65%" nowrap="nowrap">
	<b>Company Name:</b> <tmpl_var name="COMPANYNAME">
	</td>
	</tr>
	</table><br>
    
    To ensure the security of your account, We have introduced a new feature. <br>
    To prevent acts of phising and other such malicious activities, please select one of the images below.<br>
    Along with the image, please enter any caption which you would like to associate with the image you have selected.<br>
    When you log in the next time the image which you have selected, along with the caption will be presented to you. You should login only if you recognize the image and your caption. <br>
    
    <br/><br/>
	
	<div class="genbox">
	    <center>
	    
	    <TMPL_LOOP NAME="SITEKEY_OPTIONS">
	    <form action="<TMPL_VAR NAME="ACTION_LOGIN">" method="post">
	    <table width="80%" cellspacing="2">
	    <tr>
	    <td align="left" width="25%" class="smallfont1">
	    &nbsp;<input type="hidden" name="SKEY" value="<TMPL_VAR NAME=SITEKEY_IMG>">
	    </td>
	    <td align="right" width="15%" class="smallfont1">
	    <b> <img src="<TMPL_VAR NAME=IMGPATH>/skeys/<TMPL_VAR NAME=SITEKEY_IMG>.jpg" border="0" width="247" height="221">  </b>
	    </td>
	    <td align="right" width="15%" class="smallfont1" nowrap="nowrap">
	    <b>  <input type=text name='CAPTION' size=256> </b>
	    </td>
	    <td align="right" width="10%" class="smallfont1">
	    <b> <input type='submit' > </b>
	    </td>
	    <td align="right" width="15%" class="smallfont1">
	    &nbsp;
	    </td>
	    </tr>
	    </table>
	    </form>
	    </TMPL_LOOP>

	    </center>
	</div>
        <br>
    </td>
    </tr>
    
    
    </table>
<!-- end :skey_select.tpl -->
