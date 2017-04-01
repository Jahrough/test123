<!-- BEGIN start.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

        <br>
        <div align="center">
          <table border="0" cellpadding="2" cellspacing="0" width="600" class="myaccountborder">
            <tr>
              <td valign="top">
              <table border="0" cellpadding="5" cellspacing="0" width="100%" class="reportselectbody">
                <tr>
                  <td class="smallfont1">
                  <TMPL_IF COL>
                  <span class="reportselectorinfo"><b>PLEASE NOTE:</b></span><br>
                  In an effort to provide the best services available to our clients, we will be deactivating this Batch Wizard the evening of July 30th.&nbsp; Please contact your Account Manager or <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_CONSULTANT_EMAIL','ContactUs',450,500);"><b>Click here</b></a> to contact a Batch Consultant to discuss your product options.&nbsp; We apologize any inconvenience this move may cause and for the short notice.
                  <TMPL_ELSE>
		  <span class="reportselectorinfo"><b>HELPFUL TIP:</b></span><br>
		  Accurint&reg; offers multiple batch processes to help increase right-party contact.&nbsp; A dedicated Batch Consultant is available to  help you customize your requirements from data needs, to input and output delivery methods so you're assured of a solution best suited to the way you do business.&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_CONSULTANT_EMAIL','ContactUs',450,500);"><b>Click here</b></a> here to contact your Batch Consultant today!
                  </TMPL_IF>
		  </td>
                </tr>
              </table>
              </td>
            </tr>
          </table>
        </div>

	<!--
        <br>
        <div align="center">
          <table border="0" cellpadding="2" cellspacing="0" width="600" class="myaccountborder">
            <tr>
              <td valign="top">
              <table border="0" cellpadding="5" cellspacing="0" width="100%" class="reportselectbody">
                <tr>
                  <td class="smallfont1">
		  <TMPL_IF IRS><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
		  <TMPL_IF GOV><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
		  <TMPL_IF LE><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
                  <div align=center><span class="reportselectorinfo"><b>NOTICE:</span>&nbsp; Effective <TMPL_IF IS_BUS_BATCH>May 1st<TMPL_ELSE><TMPL_IF IS_BUS_BATCH_DUEX>March 27th<TMPL_ELSE>October 16th</TMPL_IF></TMPL_IF>, this product will no longer be available via the Batch Wizard</b></div>
                  <div>&nbsp;</div>
                  In an effort to streamline processes and deliver the very best information LexisNexis® has to offer, access to this product via the Batch Wizard will be deactivated on <TMPL_IF IS_BUS_BATCH>May 1st<TMPL_ELSE><TMPL_IF IS_BUS_BATCH_DUEX>March 27th<TMPL_ELSE>October 16th</TMPL_IF></TMPL_IF>.
		  </TMPL_IF>
		  </TMPL_IF>
		  </TMPL_IF>
		  Accurint® offers flexible batch processes to help increase right-party contact.&nbsp;A dedicated Batch Consultant is available to help you customize your requirements from data needs, to input and output delivery methods, so you're assured of a solution best suited to the way you do business.&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_CONSULTANT_EMAIL','ContactUs',450,500);"><b>Click here</b></a> to contact your Batch Consultant today!</td>
                </tr>
              </table>
              </td>
            </tr>
          </table>
        </div>
	-->

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_START">

<div align="center">

<table border="0" width="600">

  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Welcome to the Accurint<small><sup>&reg;</sup></small> <TMPL_IF IS_BUS_BATCH>Business <TMPL_ELSE><TMPL_IF IS_BUS_BATCH_DUEX>Business </TMPL_IF></TMPL_IF>Batch Submission Wizard</b></td>
  </tr>
  
  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>
  
  <tr>
    <td align="center" class="unifont2"><br><b>Enter a name for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>"></td>
  </tr>

  <tr>
    <td align="center" class="smallfont1"><br>Note: This name will be used on all correspondence related to this batch job and will become the name of your output file.</td>
  </tr>
  
  <TMPL_IF IS_BATCH_ADMIN>
  <tr>
    <td align="left" class="unifont2"><br>&nbsp;&nbsp;<b>Enter the Company ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_COMPANY_ID" value="<TMPL_VAR BATCH_COMPANY_ID>"></td>
  </tr>
  <tr>
    <td align="left" class="unifont2"><br>&nbsp;&nbsp;<b>Enter the Login ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_LOGIN_ID" value="<TMPL_VAR BATCH_LOGIN_ID>"></td>
  </tr>
  <tr>
  <tr>
    <td align="center" class="unifont2"><br></td>
  </tr>
  <TMPL_IF IS_BUS_BATCH>
  	<INPUT TYPE="HIDDEN" NAME="BATCH_TYPE" VALUE="ONLINE">
  <TMPL_ELSE>
  <TMPL_IF IS_BUS_BATCH_DUEX>
	<INPUT TYPE="HIDDEN" NAME="BATCH_TYPE" VALUE="ONLINE">
  <TMPL_ELSE>
  <tr>
    <td align="left" class="unifont2">



<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="624">
<tr>
    <td align="center" valign="top">

	<table border="0" cellpadding="0" cellspacing="0" width="600">
	    <tr height="12">
		<td height="12" width="600" class="unifont1">&nbsp;</td>
	    </tr>
	</table>
	<table border="0" cellpadding="5" cellspacing="0" width="600" class="myaccountbody">
	<tr>
	    <td align="center">
	   Batch Options: 
	    </td>
	</tr>
	</table>


	<table border="0" cellpadding="0" cellspacing="0" width="600">
	    <tr height="12">
		<td height="12" width="600" class="unifont1">&nbsp;</td>
	    </tr>
	</table>


    
	<table border="0" cellpadding="0" cellspacing="0" width="600" class="myaccountbody">
		<tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="ONLINE"<TMPL_UNLESS FTP_CHECKED> CHECKED</TMPL_UNLESS>><b>Online Batch Job</b></td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="FTP"<TMPL_IF FTP_CHECKED> CHECKED</TMPL_IF>><b>FTP Batch Job</b></td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="EDIT_FTP"<TMPL_IF EDIT_FTP_CHECKED> CHECKED</TMPL_IF>><b>Edit Existing FTP Batch Job</b></td></tr>
		<tr><td>&nbsp;</td></tr>
		<tr><td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;<input type=radio name="BATCH_TYPE" value="EDIT_XML"<TMPL_IF EDIT_XML_CHECKED> CHECKED</TMPL_IF>><b>Edit XML</b></td></tr>
		<tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('BATCHMANAGE/SHOW_ACTIVE_FTPJOBS','Jobs',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>Check Job Status / Suspend Jobs</b></a></td></tr>
		<tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('BATCH/BUS_DUEX_START_BATCH','BatchBusCol',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>Business Collectors Batching</b></a></td></tr>
		<tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('SURECONTACTBATCH/START_BATCH','BatchSureContact',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>SureContact Batch</b></a></td></tr>
		<tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('SUREPLACEMENTBATCH/START_BATCH','BatchSurePlacement',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>SurePlacement Batch</b></a></td></tr>
		<tr><td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:show_post_popup('RECOVERSCOREBATCH/START_BATCH','BatchRecoverscore',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><b>RecoverScore Batch</b></a></td></tr>

	</table>


	<table border="0" cellpadding="0" cellspacing="0" width="600">
	<tr>
	    <td width="12"><img height="12" width="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/rndcorner3.gif"></td>
	    <td width="600" class="myaccountborder"><img height="12" width="600" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
	    <td width="12"><img height="12" width="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/rndcorner4.gif"></td>
	</tr>
	</table>


    </td>
</tr>
</table>


	
	</td>
  </tr>
  </TMPL_IF>
  </TMPL_IF>
  <tr>
    <td align="center" class="unifont2"><br><b></b></td>
  </tr>
  <tr>
    <td align="left" class="unifont2"><br></td>
  </tr>
  </TMPL_IF>

  <tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="<TMPL_IF IS_BATCH_ADMIN>100<TMPL_ELSE>180</TMPL_IF>" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/SAVE_START')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<script>
document.BATCH.BATCH_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="batch_footer.tpl">

<!-- END start.tpl --> &nbsp; 

