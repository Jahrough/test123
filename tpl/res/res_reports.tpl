  <html>
    <head>
    <title>Insurance Rate Evasion Evaluation Report</title>
    <style>
    body {
        margin: 0 10 10 10;
        background-color: #ebebeb;
        font-family: verdana, sans-serif;
        font-size: .8em;
        padding: 0px 20px 20px 20px;
    }
    
    body.default {
        background: #ebebeb;
        color: #000000;
    }
 	/* CSS for the box starts here */
	.box {
		padding:20px 20px 20px 20px;
		background:#fff;
	}
	.bi {
		padding:30px 30px 30px 30px;
		background:#fff;
	}
	.bb {
		height:17px;
		margin:0 -12px;
		background:url(box.gif) 100% 100% no-repeat;
	}
	.bb div {
		width:18px;
		height:17px;
		background:url(box.gif) 0 100% no-repeat;
	}
	.box h1 {
		margin:0;
		padding:0.3em 10px;
		background:#efece6;
		font:bold 1.2em/1 Arial, Helvetica, sans-serif;
	}
	.box p, .box ul {
		margin:0;
		padding:4px 10px;
		background:#fff;
	}
	.box li {
		margin:0 0 0 2em;
		padding:0;
	}   
	.car_fax_box {
                border-style: none
	}
    </style>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
</TMPL_IF>
    </head>
    <body>
<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>
    <table width="100%" cellpadding="0" cellspacing="0">
      <TMPL_UNLESS ENABLE_V2>
      <tr>
        <td valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccccc">
            <tr>
              <td><img src="<TMPL_VAR NAME=IMGPATH>/res/batch22_ree.gif" width="680" height="66" border="0"></td>
            </tr>
          </table>
        </td>
      </tr>
      </TMPL_UNLESS>
      <tr>
        <td  class="unifont1">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top" class="unifont1">Insurance Rate Evasion Evaluation Report</td>
      </tr>
      <tr>
        <td valign="top" class="unifont1">Customer Support</td>
      </tr>
      <tr>
        <td valign="top" class="unifont1">Hours: 8am-8pm Eastern Time</td>
      </tr>
      <tr>
        <td valign="top" class="unifont1">1-866-277-8407</td>
      </tr>
      <tr>
        <td valign="top" class="unifont1">custsup@accurint.com</td>
      </tr>
      <tr>
        <td  class="unifont1">&nbsp;</td>
      </tr>
    </table>
        <TMPL_LOOP RES_LOOP>
        <TMPL_VAR NAME="RPT">   
        </TMPL_LOOP>
        <br />
    <table width="100%" cellpadding="0" cellspacing="0">
      <tr>
        <td valign="top" class="unifont1">* Important: The Public Records and commercially available data sources used on reports have errors. Data is sometimes entered poorly, processed incorrectly and is generally not free from defect. This system should not be relied upon as definitively accurate. Before relying on any data this system supplies, it should be independently verified. For Secretary of State documents, the following data is for information purposes only and is not an official record. Certified copies may be obtained from that individual state's Department of State.&nbsp; The criminal record data in this product or service may include records that have been expunged, sealed, or otherwise have become inaccessible to the public since the date on which the data was last updated or collected.<br><br>&nbsp; <TMPL_UNLESS IRB>Accurint<TMPL_ELSE>IRBSearch, LLC</TMPL_UNLESS> does not constitute a "consumer report" as that term is defined in the federal Fair Credit Reporting Act, 15 USC 1681 et seq. (FCRA). Accordingly, <TMPL_UNLESS IRB>Accurint<TMPL_ELSE>IRBSearch, LLC</TMPL_UNLESS> may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another permissible purpose under the FCRA.<br></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1">* Information from this file may not be used for a Permissible Purpose as defined by the Fair Credit Reporting Act (15 U.S.C. Sec. 1681) to determine a customer's eligibility for credit, insurance or employment.</td>
      </tr>
    </table>
    </body>
</html>
