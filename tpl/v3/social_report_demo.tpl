<!--b-03--><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ASCII">
<title><TMPL_VAR REPORT_TITLE></title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/report.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
    <TMPL_IF ENABLE_V2>
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
    <link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
    <link href="<tmpl_var csspath>/accurintSearch.css" rel="stylesheet" type="text/css">
    </TMPL_IF>
    <link href="<tmpl_var csspath>/<tmpl_var application_type>/<tmpl_var user_theme>.css" rel="stylesheet" type="text/css">
</head>
<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<div id="hd" style="margin-left:-10px;"><div>
<p>24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>
</div></div>
<div id="searchResults" style="float:left; width:100%;">
<div class="smallgray">
<p>
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
    </span>
    <span class="disclaimerbody">
      <br>
      <b>Your DMF Permissible Use  : </b>&#160;
      <span name="dmf_reason" id="dmf_reason"><TMPL_VAR DMF_DESC></span>
      <br>
      <br>
    </span>
  </span>
</p>
</div>
<table width="45%" border="0" cellpadding="0" cellspacing="3">
  <tr>
    <td class="unifont2" nowrap valign="right"><b>Report processed by:</b></td>
  </tr>
  <tr>
    <td class="smallfont1" nowrap valign="right"><TMPL_VAR COMPANY_NAME></td>
  </tr>
  <tr>
    <td class="smallfont1" nowrap valign="right"><TMPL_VAR COMPANY_ADDRESS1></td>
  </tr>
  <tr>
    <td class="smallfont1" nowrap valign="right"><TMPL_VAR COMPANY_ADDRESS2></td>
  </tr>
  <TMPL_IF COMPANY_PHONE>
  <tr>
    <td class="smallfont1" nowrap valign="right"><TMPL_VAR COMPANY_PHONE></td>
  </tr>
  </TMPL_IF>
  <TMPL_IF COMPANY_FAX>
  <tr>
    <td class="smallfont1" nowrap valign="right"><TMPL_VAR COMPANY_FAX></td>
  </tr>
  </TMPL_IF>
</table>
<br>

    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT">

    <div><span class="report_subsection_title"><TMPL_VAR REPORT_TITLE></span></div><p>
    <!--<div align="right"><a href="javascript:parent.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a></div>-->
<table width="45%" border="0" cellpadding="0" cellspacing="3">
  <tr>
    <td class="unifont2" nowrap valign="right"><b>Date:</b> <span name="smallfont1"><TMPL_VAR REPORT_DATE></span></td>
  </tr>
  <tr>
    <td class="unifont2" nowrap valign="right"><b>Email Address:</b> <span name="smallfont1">EMAIL@ADDRESS.COM</span></td>
  </tr>
</table>
<br>
<table width="100%" border="0" cellpadding="0" cellspacing="3">
<tr>
<td width="5%">&nbsp;</td>
<td width="95%">
    <div><span class="unifont2"><b>Subject Information:</b></span></div><p>
    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="45%" border="0" cellpadding="0" cellspacing="3">
		<tr>
		  <td class="smallfont1" nowrap valign="right"><b>Name:</b></td>
		  <td class="smallfont1" nowrap valign="left">John Doe</td>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
		  <td class="smallfont1" nowrap valign="right"><b>Gender:</b></td>
		  <td class="smallfont1" nowrap valign="left">Male</td>
		</tr>
		<tr>
		  <td class="smallfont1" nowrap valign="right"><b>Age:</b></td>
		  <td class="smallfont1" nowrap valign="left">34</td>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
      <td class="smallfont1" nowrap valign="middle" colspan="2">&nbsp;</td>
    </tr>
	    </table>
	  </td>
	</tr>
    </table>
    <p>
    
    <div><span class="unifont2"><b>Images:</b></span></div><p>

    <table width="100%">
    	<tr>
    	  <td valign="top">
    	    <table width="95%" border="0" cellpadding="0" cellspacing="3">
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><img alt="" width="67" height="100" border="0" name="demo1" src="<TMPL_VAR NAME=IMGPATH>/social_report_demo1.jpg"></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><img alt="" width="68" height="76" border="0" name="demo2" src="<TMPL_VAR NAME=IMGPATH>/social_report_demo2.jpg"></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><img alt="" width="60" height="64" border="0" name="demo3" src="<TMPL_VAR NAME=IMGPATH>/social_report_demo3.jpg"></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><img alt="" width="86" height="97" border="0" name="demo4" src="<TMPL_VAR NAME=IMGPATH>/social_report_demo4.jpg"></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><img alt="" width="122" height="46" border="0" name="demo5" src="<TMPL_VAR NAME=IMGPATH>/social_report_demo5.jpg"></td>
        		</tr>
    	    </table>
    	  </td>
    	</tr>
    </table>
    <p>

    <div><span class="unifont2"><b>Work Information:</b></span></div><p>

    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="45%" border="0" cellpadding="0" cellspacing="3">
    		<tr>
    		  <td class="smallfont1" nowrap valign="middle"><b>Company:</b></td>
    		  <td class="smallfont1" nowrap valign="middle">ABC Company</td>
    		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
                  <TMPL_UNLESS WATER_DOWN_NON_FCRA>
    		  <td class="smallfont1" nowrap valign="middle"><b>Title:</b></td>
    		  <td class="smallfont1" nowrap valign="middle">Chief Information Architect</td>
                  </TMPL_UNLESS>
    		</tr>
    		<tr>
    		  <td class="smallfont1" nowrap valign="middle"><b>Company:</b></td>
    		  <td class="smallfont1" nowrap valign="middle">XYZ, LLP</td>
    		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
                  <TMPL_UNLESS WATER_DOWN_NON_FCRA>
    		  <td class="smallfont1" nowrap valign="middle"><b>Title:</b></td>
    		  <td class="smallfont1" nowrap valign="middle">Partner</td>
                  </TMPL_UNLESS>
    		</tr>
    		<tr>
    		  <td class="smallfont1" nowrap valign="middle"><b>Company:</b></td>
    		  <td class="smallfont1" nowrap valign="middle">DOE Brothers, LLP</td>
    		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
                  <TMPL_UNLESS WATER_DOWN_NON_FCRA>
    		  <td class="smallfont1" nowrap valign="middle"><b>Title:</b></td>
    		  <td class="smallfont1" nowrap valign="middle">Executive Producer</td>
                  </TMPL_UNLESS>
    		</tr>
	    </table>
	  </td>
	</tr>
    </table>
    <p>

    <div><span class="unifont2"><b>Relevant Links to Subject:</b></span></div><p>
    <table width="100%">
    	<tr>
    	  <td valign="top">
    	    <table width="95%" border="0" cellpadding="0" cellspacing="3">
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.facebook.com/profile.phpXYZ" target="_blank">http://www.facebook.com/profile.phpXYZ</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.hi5.com/profile.html" target="_blank">http://www.hi5.com/profile.html</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.hi5.com/profile.html2" target="_blank">http://www.hi5.com/profile.html2</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.linkedin.com/viewProfile" target="_blank">http://www.linkedin.com/viewProfile</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.linkedin.com/viewProfilexyz" target="_blank">http://www.linkedin.com/viewProfilexyz</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.myspace.com/profile" target="_blank">http://www.myspace.com/profile</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.flixster.com/user" target="_blank">http://www.flixster.com/user</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.playlist.com/user" target="_blank">http://www.playlist.com/user</a></td>
        		</tr>
        		<tr>
        		  <td class="smallfont1" nowrap valign="middle"><a href="http://www.ringo.com/profile" target="_blank">http://www.ringo.com/profile</a></td>
        		</tr>
    	    </table>
    	  </td>
    	</tr>
    </table>
    <br><br>
    
</td>
</tr>
</table>

  </body>
</html>
