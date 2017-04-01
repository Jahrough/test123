<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Begin short_colcomp_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title><TMPL_IF NAME="NAT_COMP_PLUS_REPORT">Nation Comprehensive plus Associates Report Options<TMPL_ELSE>Search -- Custom Comprehensive Report Options</TMPL_IF></title>
<!--<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">-->
<!--<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">-->
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/colcomp_styles.css" rel="stylesheet" type="text/css" />

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/ccomp.js"></script>
</head>

<body id="hdNoLogo" onLoad="window.focus();">
<div id="pleasewait" style="position:absolute; top:250px;left:300px; visibility:hidden; z-index:1000;">
<img src="<TMPL_VAR NAME=IMGPATH>/bg_searching_report.gif" id="pw" name="pw" width="300" height="65" border="0">
</div>


<form name="SHORT_REPORT" action="<TMPL_VAR NAME=ACTION_REPORT>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="REPORT/SAVE_PREFS">
      <INPUT type=hidden NAME="RECID_REPORT" VALUE="<TMPL_VAR NAME="RECID_REPORT">">
      <INPUT type=hidden NAME="UNIQUEID" VALUE="<TMPL_VAR NAME="UNIQUEID">">
      <INPUT type=hidden NAME="FIRST_NAME" VALUE="<TMPL_VAR NAME="FIRST_NAME">">
      <INPUT type=hidden NAME="LAST_NAME" VALUE="<TMPL_VAR NAME="LAST_NAME">">
      <INPUT type=hidden NAME="MIDDLE_NAME" VALUE="<TMPL_VAR NAME="MIDDLE_NAME">">
      <INPUT type=hidden NAME="SUFFIX" VALUE="<TMPL_VAR NAME="SUFFIX">">
      <INPUT type=hidden NAME="DOB" VALUE="<TMPL_VAR NAME="DOB">">
      <INPUT type=hidden NAME="AGE" VALUE="<TMPL_VAR NAME="AGE">">
      <INPUT type=hidden NAME="ADDRESS" VALUE="<TMPL_VAR NAME="ADDRESS">">
      <INPUT type=hidden NAME="CSZ" VALUE="<TMPL_VAR NAME="CSZ">">
      <INPUT type=hidden NAME="PHONE" VALUE="<TMPL_VAR NAME="PHONE">">
      <INPUT type=hidden NAME="CC_XID" VALUE="<TMPL_VAR NAME="CC_XID">">
      <input type="hidden" name="CC_OPT_IN" value="<TMPL_VAR CC_OPT_IN>"/>
      <input type="hidden" name="PERM" value="<TMPL_VAR PERM>"/>
      <TMPL_IF NAME="NAT_COMP_PLUS_REPORT">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
      </TMPL_IF>

<div align="center" id="mainbody">
   <table style="PADDING-BOTTOM: 0px; PADDING-TOP: 0px; WIDTH: 738px; " >
      <div align="left">
      <tr>
         <td style=" FONT: 20px Arial, Helvetica, sans-serif; COLOR: #ff0000; ">
            <b>Custom Comprehensive Report Order Form</b>
         </td>
      </tr>
      <tr>
         <td >
            &nbsp;
         </td>
      </tr>
      <tr>
         <td style=" FONT: 18px Arial, Helvetica, sans-serif; COLOR: #000000; ">
            <b>Subject Information</b>
         </td>
      </tr>
      </div>
   </table>

   <table style="PADDING-BOTTOM: 0px; PADDING-TOP: 0px; WIDTH: 738px; BACKGROUND-COLOR: #939598; border-top-left-radius:6px;border-top-right-radius:6px;border-bottom-right-radius:0px;border-bottom-left-radius:0px;" >
      <tr>
         <td width="150px" class="shorttable_head" >&nbsp;Name</td>
         <td width="210px" class="shorttable_head" >&nbsp;Address</td>
         <td width="90px"  class="shorttable_head" >&nbsp;Phone</td>
         <td width="84px"  class="shorttable_head" >&nbsp;SSN</td>
         <td width="68px"  class="shorttable_head" >&nbsp;DOB</td>
         <td width="32px"  class="shorttable_head" >&nbsp;Age</td>
         <td width="90px"  class="shorttable_head_last" >&nbsp;LexID</td>
      <tr>
   </table>
   <table style="PADDING-BOTTOM: 5px; PADDING-TOP: 0px; WIDTH: 738px; BACKGROUND-COLOR: #2a373f; border-top-left-radius:0px; border-top-right-radius:0px; border-bottom-right-radius:6px; border-bottom-left-radius:6px;" >
      <tr>
         <td width="150px" class="shorttable_body" ><TMPL_VAR NAME=FULL_NAME></td>
         <td width="210px" class="shorttable_body" ><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CSZ></td>
         <td width="90px" class="shorttable_body" ><TMPL_VAR NAME=PHONE></td>
         <td width="84px" class="shorttable_body" ><TMPL_VAR NAME=SSN></td>
         <td width="68px" class="shorttable_body" ><TMPL_VAR NAME=DOB></td>
         <td width="32px" class="shorttable_body" ><TMPL_VAR NAME=AGE></td>
         <td width="90px" class="shorttable_body" ><TMPL_VAR NAME=UNIQUEID></td>
      </tr>
   </table>

<!-- price, purchase, cancel -->
   <table border="0" style="PADDING-BOTTOM: 5px; PADDING-TOP: 0px; WIDTH: 738px; " >
      <tr>
         <td>
         
<TMPL_UNLESS NAME="HIDE_PRICES">
            <table border="0" align="right" style="PADDING-BOTTOM: 20px; PADDING-TOP: 20px; WIDTH: 600px; " >
<TMPL_ELSE>
            <table border="0" align="right" style="PADDING-BOTTOM: 20px; PADDING-TOP: 20px; WIDTH: 200px; " >
</TMPL_UNLESS>            
            
               <tr>
               
<TMPL_UNLESS NAME="HIDE_PRICES">
                  <td style="text-align: center; FONT: 14px Arial, Helvetica, sans-serif; font-weight: bold; COLOR: #000000; ">
                     <b>You can get ALL of the information<br>on this subject for only $<TMPL_VAR NAME=ALL_FOR_TOTAL>!</b>
                  </td>
                  <td style="PADDING-LEFT: 15px;  PADDING-RIGHT: 15px; FONT: 14px Arial, Helvetica, sans-serif; font-weight: bold;  COLOR: #000000;" >
                     <b>
                     <input style="FONT: 13px Arial, Helvetica, sans-serif; color: #ffffff; font-weight: bold;  " name="BUTTON" class="all_for_button"  tabindex="1" class="rb" type="button" 
                     value="ALL for $<TMPL_VAR NAME=ALL_FOR_TOTAL>" 
                     onClick="showpw();
                     send_event('REPORT/COMPREHENSIVE');
                     disable_buttons('BUTTON');" >
                     </b>
                  </td>
                  <td style="style="text-align: center; FONT: 18px Arial, Helvetica, sans-serif; COLOR: #000000; ">
                     or
                  </td>
<TMPL_ELSE>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
</TMPL_UNLESS>



                  <td style="PADDING-LEFT: 15px;PADDING-RIGHT: 15px; " >
                     <input name="BUTTON" tabindex="1"   
                        type="image" onclick="showpw();send_event('REPORT/SAVE_PREFS');disable_buttons('BUTTON');"
                        src="<TMPL_VAR NAME=IMGPATH>/col_comp/purchase.png" >
                     </input>
                  </td>
                  <td>
                     <input name="BUTTON" tabindex="1"   
                        type="image" onclick="javascript:window.close();"
                        src="<TMPL_VAR NAME=IMGPATH>/col_comp/cancel.png" >
                     </input>
                  </td>
               </tr>
            </table>
         </td>
      </tr>
   </table>















<TMPL_IF NAME="xxx">
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<!--<table border="0" cellpadding="0" cellspacing="0" width="620">
  <tr>
    <TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
    <TMPL_UNLESS NAME="HIDE_PRICES">
    <td class="smallfont1reporttype" width="250" valign="top">You can get ALL of the information<br>on this subject for only $<TMPL_VAR NAME=ALL_FOR_TOTAL>!</td>
    <td align="left" width="115" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
	<TMPL_IF NAME="COMPREHENSIVE_REPORT_DISABLED">
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Click for Details" onMouseDown="flip_style(this,'rbd');" onClick="report_ad(<TMPL_IF NAME=IRB>1</TMPL_IF>);" onMouseOut="flip_style(this,'rb');"></td>
	<TMPL_ELSE>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="ALL for $<TMPL_VAR NAME=ALL_FOR_TOTAL>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/COMPREHENSIVE');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
	</TMPL_IF>
      </tr>
    </table>
    </td>
    <td class="smallfont1reporttype" width="50" valign="middle" align="center"><b>OR</b></td>
    </TMPL_UNLESS>
    </TMPL_UNLESS>
    <td align="<TMPL_IF HIDE_PRICES>center<TMPL_ELSE>left</TMPL_IF>" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000">
      <tr>
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onMouseDown="flip_style(this,'rbd');" onClick="showpw();send_event('REPORT/SAVE_PREFS');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>-->


<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
</table>

<table border="1" align="center" cellpadding="0" cellspacing="0" width="740" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <table width="100%" border="0" cellpadding="2" cellspacing="0">
      <tr class="medblack">
        <td valign="top" align="left"><b>Name</b></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><b>Address</b></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><b>Phone</b></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><b>SSN</b></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><b>DOB</b></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><b>Age</b></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><b>LexID</b></td>
      </tr>
      <tr class="medblack">
        <td valign="top" align="left"><TMPL_VAR NAME=FULL_NAME></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=ADDRESS><br><TMPL_VAR NAME=CSZ></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=PHONE></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=SSN></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=DOB></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=AGE></td>
        <td valign="top" align="left">&nbsp;</td>
        <td valign="top" align="left"><TMPL_VAR NAME=UNIQUEID></td>
      </tr>
    </table>
    </div>  
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10">&nbsp;</td>
  </tr>
</table>

  <table width="740" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
    <TMPL_UNLESS NAME=NAT_COMP_REPORT>
    <TMPL_UNLESS DELETE_COMPREHENSIVE_REPORT>
    <TMPL_UNLESS NAME="HIDE_PRICES">
        <td align="center" class="medblack"><b>You can get ALL of the information<br>on this subject for only $<TMPL_VAR NAME=ALL_FOR_TOTAL>!</b></td>
        <TMPL_IF NAME="COMPREHENSIVE_REPORT_DISABLED">
        <td><input name="BUTTON" tabindex="1" class="rb" type="button" value="Click for Details" onMouseDown="flip_style(this,'rbd');" onClick="report_ad(<TMPL_IF NAME=IRB>1</TMPL_IF>);" onMouseOut="flip_style(this,'rb');"></td>
        <TMPL_ELSE>
        <td><input name="BUTTON" tabindex="1" type="button" value="ALL for $<TMPL_VAR NAME=ALL_FOR_TOTAL>" onclick="send_event('REPORT/COMPREHENSIVE');disable_buttons('BUTTON');" /></td>
        </TMPL_IF>
	<td class="medblack" width="50" valign="middle" align="center"><b>OR</b></td>
    </TMPL_UNLESS>
    </TMPL_UNLESS>
    </TMPL_UNLESS>

      <td align="center">
          <input name="BUTTON" tabindex="1" type="button" value="<TMPL_IF REPORT_BUTTON><TMPL_VAR NAME=REPORT_BUTTON><TMPL_ELSE>Request Report</TMPL_IF>" onClick="showpw();send_event('REPORT/SAVE_PREFS');disable_buttons('BUTTON');" />
      </td>
    </tr>
  </table>

<table border="0" cellpadding="0" cellspacing="0" width="100%" height="10">
  <tr height="10">
    <td height="10">&nbsp;</td>
  </tr>
</table>
</TMPL_IF>


<TMPL_IF NAME=TCOL>
<TMPL_INCLUDE NAME="../tcol/report/short_colcomp_report_body.tpl">
<TMPL_ELSE>

<TMPL_IF NAME=FCOL>
<TMPL_INCLUDE NAME="../fcol/report/short_colcomp_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=GCOL>
<TMPL_INCLUDE NAME="../tcol/report/short_colcomp_report_body.tpl">
<TMPL_ELSE>
  <TMPL_INCLUDE NAME="short_report_body.tpl">
</TMPL_IF>
</TMPL_IF>

</TMPL_IF>

<TMPL_IF NAME="XXX" >
<!-- GCOL might need to point to /gcol/report -->
</TMPL_IF>




</div>

</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">
</body>
</html>
<!-- End short_colcomp_report.tpl -->
