<!--b-03--><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><TMPL_VAR REPORT_TITLE></title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
    <TMPL_IF ENABLE_V2>
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
    <link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
    <link href="<tmpl_var csspath>/print.css" rel="stylesheet" type="text/css">
    </TMPL_IF>
    <link href="<tmpl_var csspath>/<tmpl_var application_type>/<tmpl_var user_theme>.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js" type="text/javascript"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/report.js" type="text/javascript"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js" type="text/javascript"></script>
</head>
<body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<div id="hd" style="margin-left:-10px;"><div>
 <div>
    <ul>
      <TMPL_IF IRB>
      <!--<li class="first"><a trackid="hdr_contact_us" href="https://secure.irbsearch.com/elearning/index.html" target="_blank">Help</a></li>-->
      <li class="first"><a trackid="hdr_my_account" href="javascript:opener.show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','500',0,0,0,0,0,0,'','customer_support');">Product Support</a></li>
      <TMPL_ELSE>
      <TMPL_IF IRS>
        <li class="first"><a trackid="hdr_contact_us" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
        <li><a trackid="hdr_my_account" href="javascript:opener.show_post_popup('LOGIN/SHOW_POPUP','AdminContactUsWin','450','400',0,0,0,1,1,0,'','irs/customer_support');">Customer Support</a></li>
	<li><a trackid="hdr_my_account" href="javascript:do_print_report();">Print Report</a></li>
      <TMPL_ELSE>
	  <li class="first"><a trackid="hdr_contact_us" href="https://learn.lexisnexis.com/lexisnexis/user_home.aspx" target="_blank">Help</a></li>
	   <li><a trackid="hdr_my_account" href="javascript:do_print_report();">Print Report</a></li>
	   <br> 
<p>24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>
      </TMPL_IF>
      </TMPL_IF>
    </ul>
  </div>
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
      <br>
    </span>
    <span class="disclaimerbody">
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
<form name="REPORT">

    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="IM_A_REPORT" VALUE="1">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT">

    <div><span><h2><TMPL_VAR REPORT_TITLE></h2></span></div><p>
    <!--<div align="right"><a href="javascript:parent.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a></div>-->
<table width="45%" border="0" cellpadding="0" cellspacing="3">
  <tr>
    <td class="unifont2" nowrap valign="right"><b>Date:</b> <span name="smallfont1"><TMPL_VAR REPORT_DATE></span></td>
  </tr>
  <TMPL_UNLESS HIDE_EMAILS>
  <TMPL_IF EMAIL_ECHO>
  <tr>
    <td class="unifont2" nowrap valign="right"><b>Email Address:</b> <span name="smallfont1"><TMPL_VAR EMAIL_ECHO></span></td>
  </tr>
  </TMPL_IF>
  </TMPL_UNLESS>
</table>
<br>

<table id="searchResultsTblHeader" border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr>
        <td id="HdrResultL" width="1%"></td>
        <td id="tblHdr" width="22%">Name</td>
        <td id="tblHdr" width="24%">Email</td>
        <td id="tblHdr" width="18%">SSN</td>
        <td id="tblHdr" width="34%">Address</td>
        <td id="HdrResultR" width="1%">&#160;</td>
    </tr>
</table>
<table id="searchResultsTblAlt" border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-bottom:15px">
    <tr valign="top" class="searchresultsrowodd">
        <td align="center" width="1%" style="padding-top: 5px;"></td>
        <td class="smallfont2" width="22%" style="padding-top: 5px;">
        <TMPL_LOOP NAMES>
        <b><A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|FIRST_NAME|<TMPL_VAR NAME="FIRST_NAME">|LAST_NAME|<TMPL_VAR NAME="LAST_NAME">|MI|<TMPL_VAR NAME="MIDDLE_NAME">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/NAME');"><TMPL_VAR NAME="FIRST_NAME">&#160;<TMPL_IF MIDDLE_NAME><TMPL_VAR NAME="MIDDLE_NAME">&#160;</TMPL_IF><TMPL_VAR NAME="LAST_NAME"></A></b><br>
        </TMPL_LOOP>
        <b>DOB:</b>&#160;<TMPL_VAR NAME="DOB">
        </td>
        <td class="smallfont2" width="24%" style="padding-top: 5px;">
        <TMPL_LOOP EMAIL_IDS>
            <b><TMPL_VAR EMAIL></b>&#160;
            <br>
        </TMPL_LOOP>
        </td>
        <td class="smallfont2" width="18%" style="padding-top: 5px;">
            <b><a class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|RECID|<TMPL_VAR NAME="RECID">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/SSN');"><b><TMPL_VAR NAME="SSN"></b></a></b>
            &#160;



               <TMPL_IF NAME="SHOW_LINKID">
               <br>
   
               LexID :&#160;<b><A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|UNIQUEID|<TMPL_VAR NAME="LINK_ID">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/DID');"><TMPL_VAR NAME="LINK_ID"></A></b><br>
               
               </TMPL_IF>
            <TMPL_UNLESS NAME=IRS>
            </TMPL_UNLESS>
        </td>
        <td class="smallfont2" width="34%" style="padding-top: 5px;">
        <TMPL_IF ADDRESSES>
            <TMPL_LOOP ADDRESSES>
            <A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|STREET_ADDRESS|<TMPL_VAR NAME="STREET_ADDRESS">|CITY|<TMPL_VAR NAME="CITY">|STATE|<TMPL_VAR NAME="STATE">|ZIP|<TMPL_VAR NAME="ZIP">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/ADDR&CAN_MAP=<TMPL_VAR NAME="CAN_MAP">');"><TMPL_VAR STREET_ADDRESS></A>
            <br>
            <A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|STREET_ADDRESS|<TMPL_VAR NAME="STREET_ADDRESS">|CITY|<TMPL_VAR NAME="CITY">|STATE|<TMPL_VAR NAME="STATE">|ZIP|<TMPL_VAR NAME="ZIP">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/ADDR&CAN_MAP=<TMPL_VAR NAME="CAN_MAP">');"><TMPL_VAR CSZ></A>
            <br><br>
            </TMPL_LOOP>
        </TMPL_IF>
        </td>
        <td colspan="1"></td>
    </tr>
</table>


<TMPL_IF HIDE_EMAILS>
<TMPL_IF NO_RESULTS>
<div class="unifont2" align="center"><b>No Information Found</b></div><p>
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
		  <td class="smallfont1" nowrap valign="right"><b>Name:</b></td>
		  <td class="smallfont1" nowrap valign="left"><TMPL_VAR NAME="SUBJECT"></td>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
		  <td class="smallfont1" nowrap valign="right"><b>Gender:</b></td>
		  <td class="smallfont1" nowrap valign="left"><TMPL_VAR NAME="GENDER"></td>
		</tr>
		<tr>
		  <td class="smallfont1" nowrap valign="right"><b>Age:</b></td>
		  <td class="smallfont1" nowrap valign="left"><TMPL_VAR NAME="AGE"></td>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
      <td class="smallfont1" nowrap valign="middle" colspan="2">&nbsp;</td>
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
		  <td class="smallfont1" nowrap valign="middle"><img src="<TMPL_VAR url>" border="1" /></td>
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
		  <td class="smallfont1" nowrap valign="middle"><b>Company:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="company"></td>
		  <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
		  <td class="smallfont1" nowrap valign="middle"><b>Title:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="title"></td>
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
		  <td class="smallfont1" nowrap valign="middle"><a href="<TMPL_VAR url>" target="_blank"><TMPL_VAR url></a></td>
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

<TMPL_UNLESS NO_RESULTS>
<div class="searchresultsrowtitleeven">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr>
    <td>
        <div id="bingSearchResults">
            <h2>Web Results - Possible Associations</h2>
        </div>
    </td>
    <td align="right" valign="middle">
        <img src="<TMPL_VAR NAME=IMGPATH>/bing/bing-logo-small.gif"/>
    </td>
    </tr>
    </table>
</div>
<div id="reportResultsTbl">
<TMPL_LOOP BING_DATA>
    <br>
    <a class="searchresultslink" href="<TMPL_VAR Url>" target="_blank"><TMPL_VAR NAME="Title"></a><br>
    <TMPL_VAR NAME="Description"><br>
    <a class="searchresultslink" href="<TMPL_VAR Url>" target="_blank"><TMPL_VAR NAME="DisplayUrl"></a><br>
</TMPL_LOOP>
<br>
<TMPL_IF MORE_BING_RESULTS>
    <div id="more-bing-results" style="font-size: 12px; font-weight: bold; text-align: right; margin-right:10px;"><a class="searchresultslink" href="<TMPL_VAR MORE_BING_RESULTS>" target="_blank">View All Web Results&nbsp;&#62;&#62;</a></div>
    </div>
</TMPL_IF>
</TMPL_UNLESS>
</form>

<!--<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td class="smallfont1" align="center" valign="middle">
NOTE: Any kind of disclaimer would go here
</td>
</tr>
</table>-->
  </body>
</html>
