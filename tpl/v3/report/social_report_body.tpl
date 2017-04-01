<style>
    tr.searchresultsrowodd td {
        padding-left: 10px;
    }
</style>

  
  <span id="permissible-use">
    <span class="disclaimerbody">
      <br>
      <br>
      <b>Your DPPA Permissible Use  : </b>&#160;
      <span name="dppa_reason" id="dppa_reason"><TMPL_VAR DPPA_DESC></span>
    </span>
    <span class="disclaimerbody">
      <br>
      <b>Your GLBA Permissible Use  : </b>&#160;
      <span name="glb_reason" id="glb_reason"><TMPL_VAR GLB_DESC></span>
      <br>
    </span>
    <span class="disclaimerbody">
      <b>Your DMF Permissible Use  : </b>&#160;
      <span name="dmf_reason" id="dmf_reason"><TMPL_VAR DMF_DESC></span>
      <br>
      <br>
    </span>
  </span>


<table width="50%" border="0" cellpadding="0" cellspacing="3">
  <tr>
    <td><b>Report processed by:</b></td>
  </tr>
  <tr>
    <td><TMPL_VAR COMPANY_NAME></td>
  </tr>
  <tr>
    <td><TMPL_VAR COMPANY_ADDRESS1></td>
  </tr>
  <tr>
    <td><TMPL_VAR COMPANY_ADDRESS2></td>
  </tr>
  <TMPL_IF COMPANY_PHONE>
  <tr>
    <td><TMPL_VAR COMPANY_PHONE></td>
  </tr>
  </TMPL_IF>
  <TMPL_IF COMPANY_FAX>
  <tr>
    <td><TMPL_VAR COMPANY_FAX></td>
  </tr>
  </TMPL_IF>
</table>

<br/>

<div class="rep-title mgr15">
    <h2><TMPL_VAR REPORT_TITLE></h2>
</div>
<table width="45%" border="0" cellpadding="0" cellspacing="3">
  <tr>
    <td><b>Date:</b> <span name="smallfont1"><TMPL_VAR REPORT_DATE></span></td>
  </tr>
  <TMPL_UNLESS HIDE_EMAILS>
  <TMPL_IF EMAIL_ECHO>
  <tr>
    <td><b>Email Address:</b> <span name="smallfont1"><TMPL_VAR EMAIL_ECHO></span></td>
  </tr>
  </TMPL_IF>
  </TMPL_UNLESS>
</table>

<br/>

<TMPL_IF HIDE_EMAILS>
    <TMPL_IF NO_RESULTS>
        <div class="message warningmessage" align="center"><b>No Information Found</b></div>
        <br/>
    </TMPL_IF>
</TMPL_IF>


<TMPL_LOOP RESULTS_LOOP>
  <TMPL_UNLESS HIDE_EMAILS>
  <TMPL_IF OTHER_EMAIL>
  <br>
  <table width="45%" border="0" cellpadding="0" cellspacing="3">
    <tr>
      <td class="unifont2" nowrap valign="right"><b>Emails Searched:</b> <span name="smallfont1"><TMPL_VAR OTHER_EMAIL></span></td>
    </tr>
  </table>
  <br>
  </TMPL_IF>
    <TMPL_IF NO_INFO_FOUND>
    <div class="unifont2" align="center"><b>No Information Found</b></div><p>
    </TMPL_IF>
    </TMPL_UNLESS>
    <TMPL_UNLESS NO_INFO_FOUND>
<table width="100%" border="0" cellpadding="0" cellspacing="3">
<tr>
<td width="5%">&nbsp;</td>
<td width="95%">
    <TMPL_IF BIO_INFO>

    <div><span class="unifont2"><b>Subject Information:</b></span></div><p>
    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="45%" border="0" cellpadding="0" cellspacing="3">
		<tr>
		  <td valign="right"><b>Name:</b></td>
		  <td valign="left"><TMPL_VAR NAME="SUBJECT"></td>
		  <td valign="middle" width="50">&nbsp;</td>
		  <td valign="right"><TMPL_IF ALLOW_DATA_SUPPRESSION>&nbsp;<TMPL_ELSE><b>Gender:</b></TMPL_IF></td>
		  <td valign="left"><TMPL_IF ALLOW_DATA_SUPPRESSION>&nbsp;<TMPL_ELSE><TMPL_VAR NAME="GENDER"></TMPL_IF></td>
		</tr>
		<tr>
		  <td valign="right"><TMPL_IF ALLOW_DATA_SUPPRESSION>&nbsp;<TMPL_ELSE><b>Age:</b></TMPL_IF></td>
		  <td valign="left"><TMPL_IF ALLOW_DATA_SUPPRESSION>&nbsp;<TMPL_ELSE><TMPL_VAR NAME="AGE"></TMPL_IF></td>
		  <td valign="middle" width="50">&nbsp;</td>
      <td valign="middle" colspan="2">&nbsp;</td>
    </tr>
	    </table>
	  </td>
	</tr>
    </table>
    <p>
    </TMPL_IF>
    
    <TMPL_IF IMAGES_EXIST>
    <div><span class="unifont2"><b>Images:</b></span></div><p>

    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="95%" border="0" cellpadding="0" cellspacing="3">
      <TMPL_LOOP IMAGE_LOOP>
		<tr>
		  <td valign="middle"><img src="<TMPL_VAR url>" border="1" /></td>
		</tr>
    </TMPL_LOOP>
	    </table>
	  </td>
	</tr>
    </table>
    <p>
    </TMPL_IF>

    <TMPL_IF WORK_EXIST>
    <div><span class="unifont2"><b>Work Information:</b></span></div><p>

    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="45%" border="0" cellpadding="0" cellspacing="3">
      <TMPL_LOOP WORK_LOOP>
		<tr>
		  <td valign="middle"><b>Company:</b></td>
		  <td valign="middle"><TMPL_VAR NAME="company"></td>
		  <td valign="middle" width="50">&nbsp;</td>
                  <TMPL_UNLESS WATER_DOWN_NON_FCRA>
		  <td valign="middle"><b>Title:</b></td>
		  <td valign="middle"><TMPL_VAR NAME="title"></td>
                  </TMPL_UNLESS>
		</tr>
    </TMPL_LOOP>
	    </table>
	  </td>
	</tr>
    </table>
    <p>
    </TMPL_IF>

    <TMPL_IF PLACES_EXIST>
    <div><span class="unifont2"><b>Relevant Links to Subject:</b></span></div><p>

    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="95%" border="0" cellpadding="0" cellspacing="3">
      <TMPL_LOOP PLACE_LOOP>
		<tr>
		  <td valign="middle"><a href="<TMPL_VAR url>" target="_blank"><TMPL_VAR url></a></td>
		</tr>
    </TMPL_LOOP>
	    </table>
	  </td>
	</tr>
    </table>
    </TMPL_IF>
    <br><br>
    
</td>
</tr>
</table>
</TMPL_UNLESS>
</TMPL_LOOP>