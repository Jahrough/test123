<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- Begin short_flat_rate_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Comprehensive Report Options</title>
<!--<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css"> -->
<!--<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">  -->
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

<body id="hdNoLogo">
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
      <INPUT type=hidden NAME="SAVE_PREFS" VALUE="SAVE_PREFS">
      <INPUT type=hidden NAME="XID" VALUE="<TMPL_VAR NAME="XID">">
      <INPUT type=hidden NAME="CC_XID" VALUE="<TMPL_VAR NAME="CC_XID">">
      <INPUT type=hidden NAME="SHORT_REPORT" VALUE="1">
      <input type="hidden" name="CC_OPT_IN" value="<TMPL_VAR CC_OPT_IN>"/>
      <input type="hidden" name="PERM" value="<TMPL_VAR PERM>"/>
      <INPUT type=hidden NAME="COLCOMP_FLAT_RATE" VALUE="1">


<div align="center" id="mainbody">
   <table style="PADDING-BOTTOM: 0px; PADDING-TOP: 0px; WIDTH: 738px; " >
      <div align="left">
      <tr>
         <td style=" FONT: 20px Arial, Helvetica, sans-serif; COLOR: #ff0000; ">
            <b>Comprehensive Report Order Form</b>
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
         <TMPL_IF SUPPRESS_DATA>
            <td width="84px" class="shorttable_body" >&nbsp;</td>
            <td width="68px" class="shorttable_body" >&nbsp;</td>
            <td width="32px" class="shorttable_body" >&nbsp;</td>
         <TMPL_ELSE>
            <td width="84px" class="shorttable_body" ><TMPL_VAR NAME=SSN></td>
            <td width="68px" class="shorttable_body" ><TMPL_VAR NAME=DOB></td>
            <td width="32px" class="shorttable_body" ><TMPL_VAR NAME=AGE></td>
         </TMPL_IF>
         <td width="90px" class="shorttable_body" ><TMPL_VAR NAME=UNIQUEID></td>
      </tr>
   </table>

<!-- price, purchase, cancel -->
   <table style="PADDING-BOTTOM: 5px; PADDING-TOP: 0px; WIDTH: 738px; " >
      <tr>
         <td>
            <table align="right" style="PADDING-BOTTOM: 20px; PADDING-TOP: 20px; WIDTH: 600px;" border="0" >
               <tr>
<TMPL_UNLESS LINKED_COMP>               
<TMPL_UNLESS NAME="HIDE_PRICES">

                  <td style="text-align: right;  FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000;" width="70%" >
                     <b>Select Any or All Options for ONLY&nbsp;</b>
                  </td>
                  <td style="text-align: left;  padding:0px 20px 0px 0px; FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000;" width="10%" >
                     <b>$<TMPL_VAR NAME=ALL_FOR_TOTAL></b>&nbsp;
                  </td>
</TMPL_UNLESS>
<TMPL_IF NAME="HIDE_PRICES">
                  <td style="text-align: right; FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; " width="40%" >
                     &nbsp;
                  </td>
                  <td style="text-align: left; FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; " width="40%" >
                     &nbsp;
                  </td>
</TMPL_IF>
</TMPL_UNLESS>                  
<TMPL_IF LINKED_COMP>
                  <td style="text-align: right; FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; " width="40%" >
                     &nbsp;
                  </td>
                  <td style="text-align: left; FONT: 15px Arial, Helvetica, sans-serif; COLOR: #000000; " width="40%" >
                     &nbsp;
                  </td>
</TMPL_IF>

                  
                  <td style="text-align: right; padding:0px 20px 0px 0px;" width="10%" >
                     <input name="BUTTON" tabindex="1"   
                        type="image" onclick="showpw();send_event('REPORT/COMPREHENSIVE');disable_buttons('BUTTON');"
                        src="<TMPL_VAR NAME=IMGPATH>/col_comp/purchase.png" >
                     </input>
                  </td>

                  <td style="text-align: right; padding:0px 20px 0px 0px;" width="10%" >
                     <input name="BUTTON" tabindex="2"   
                        type="image" onclick="javascript:window.close();"
                        src="<TMPL_VAR NAME=IMGPATH>/col_comp/cancel.png" >
                     </input>
                  </td>
               </tr>
            </table>
         </td>
      </tr>
   </table>



<TMPL_IF NAME=NAT_COMP_REPORT>
<TMPL_INCLUDE NAME="short_nat_comprehensive_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=LNP>
<TMPL_INCLUDE NAME="../lnp/report/short_comprehensive_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=TCOL>
<TMPL_INCLUDE NAME="../tcol/report/short_colcomp_flat_rate_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=FCOL>
<TMPL_INCLUDE NAME="../fcol/report/short_colcomp_flat_rate_report_body.tpl">
<TMPL_ELSE>
<TMPL_IF NAME=GCOL>
<TMPL_INCLUDE NAME="../gcol/report/short_comprehensive_report_body.tpl">
<TMPL_ELSE>
<TMPL_INCLUDE NAME="short_comprehensive_report_body.tpl">
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>

</div>
</form>

<TMPL_INCLUDE NAME="ln_general_footer.tpl">

</body>
</html>
<!-- End short_col_comp_flat_rate_report.tpl -->
