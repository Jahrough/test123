<!-- Begin docket_report.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>Docket Report</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/docket_report.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
</head>

<body style="background-color:white;" ONLOAD="window.focus();opener.closewaitwin();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="DOCKET" action="<TMPL_VAR ACTION_DOCKET>" method="POST">
    <div align="left">
        <img src="<TMPL_VAR NAME='IMGPATH'>/LogoCore.gif" width="126" height="25" border="0" alt="LexisNexis" />
    </div>
    <div  class="noprint" align="right">
        <TMPL_VAR NAME="REPORT_DATE">
    </div>
    <div align="center"> 
          <div class="pgtitle"><h2>Docket Report</h2>
              <div  class="noprint" align="right">
                  <img src="<TMPL_VAR NAME='IMGPATH'>/ico_print.gif" alt="Print Page" /><a href="Javascript:window.print();">Print</a>
              </div>
          </div>
          <br />
          <blockquote>
              SOURCE: PACER Docket
          </blockquote>
          <blockquote>
              <span class="discalimertitlebig">Important:&nbsp; The Public Records and commercially available data sources used on reports have errors.&nbsp; Data is sometimes entered poorly, processed incorrectly and is generally not free from defect.&nbsp; This system should not be relied upon as definitively accurate.&nbsp; Before relying on any data this system supplies, it should be independently verified.&nbsp; For Secretary of State documents, the following data is for information purposes only and is not an official record.&nbsp; Certified copies may be obtained from that individual state's Department of State.</span><br>
          </blockquote>
          <div align="right">
              <TMPL_IF NAME = "addtl_case_info">
                  <span class="myaccountlabel"><TMPL_VAR NAME="addtl_case_info"></span><br />
              </TMPL_IF>
          </div>
          <div align="center">
                <span class="myaccountlabel"><TMPL_VAR NAME="bky_divsion"></span><br />
                <span class="myaccountlabel"><TMPL_VAR NAME="DIS_COURT_NAME"></span> <br />
                <span class="myaccountlabel"><TMPL_IF DISPLAY_FULL_CASE>Abbreviated </TMPL_IF>Bankruptcy Petition #: <TMPL_VAR NAME="dash_case_number"></span> <br />
                <TMPL_IF DISPLAY_FULL_CASE><span class="myaccountlabel">Full Bankruptcy Petition #: <TMPL_VAR NAME="full_case_number"></span> <br /></TMPL_IF>
                
          </div>
    </div>
    <FONT SIZE="+0">
    <table width="100%" cellspacing="1" class="maintblborders_small" id="main_small">
      <tr>
        <TD VALIGN=top  WIDTH="50%"><BR>
          <i>Assigned to:</i>&nbsp;<TMPL_VAR NAME="judge_name"><br />
          <TMPL_IF NAME = "hearing_loc">
              <i>Hearing Location:</i>&nbsp;<TMPL_VAR NAME="hearing_loc"><br />
          </TMPL_IF>
          Chapter <TMPL_VAR NAME="chapter"><br />
          <TMPL_IF NAME = "prev_chapter">
              Previous chapter <TMPL_VAR NAME="prev_chapter"><br />
          </TMPL_IF>
          <TMPL_IF NAME = "orig_chapter">
              Original chapter <TMPL_VAR NAME="orig_chapter"><br />
          </TMPL_IF>
          <TMPL_IF NAME = "voluntary">
              Voluntary
          <TMPL_ELSE>
              Involuntary
          </TMPL_IF>
          <br />
          <TMPL_IF NAME = "asset">
              Asset
          <TMPL_ELSE>
              No Asset
          </TMPL_IF>
          <TMPL_IF NAME = "num_creditors">
              <br /><i>Creditors:</i>&nbsp;<TMPL_VAR NAME="num_creditors">
          </TMPL_IF>
          <TMPL_IF NAME = "claims_reg">
          <TMPL_IF NAME="ALLOW_CR_LINK">
              <br />
                <a href="javascript:report_win('<TMPL_VAR NAME="ACTION_DOCKET">?EVENT=DOCKET/CLAIMS_REGISTER&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&CSRF_TOKEN=<TMPL_VAR NAME="CSRF_TOKEN">&TMSID=<TMPL_VAR NAME="TMSID">&UNIQUE_ID=<TMPL_VAR NAME="UNIQUE_ID">&CASE_NUMBER=<TMPL_VAR ESCAPE="URL" NAME="CASE_NUMBER">&CASE_INTERNAL_ID=<TMPL_VAR NAME="claims_reg">&IS_CACHED=0&IMAGE_TYPE=pdf&COURT_CODE=<TMPL_VAR ESCAPE="URL" NAME="MOXIE_COURT_CODE">&COURT_LOC=<TMPL_VAR NAME="COURT_LOCATION">&COURT=<TMPL_VAR ESCAPE="URL" NAME="COURT">&CASE_DATA=<TMPL_VAR NAME="CASE_DATA">&FULL_CASE_NUMBER=<TMPL_VAR ESCAPE="URL" NAME="FULL_CASE_NUMBER">', 'PACERClaimsRegisterWin')">Claims Register</a>
          <TMPL_ELSE>
            <br />
            Claims Register
          </TMPL_IF>
          </TMPL_IF>
          <br />
        </TD>
        <td VALIGN=top  WIDTH="50%" ALIGN=right><BR>
          <TABLE border=0 cellspacing=0 cellpadding=0 align=center>
            <TMPL_IF NAME = "case_manager">
                <TR>
                  <td align="right" valign="top"><i>Case Manager:</i></td>
                  <td align="left" valign="top">&nbsp;<b><TMPL_VAR NAME="case_manager"></b></td>
                </tr>
            </TMPL_IF>
                <TR>
                  <td align="right" valign="top"><i>Date filed:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME = "file_date"></td>
                </TR>
            <TMPL_IF NAME = "date_converted">
                <TR>
                  <td align="right" valign="top"><i>Date converted:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="date_converted"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "date_intradistrict">
                <TR>
                  <td align="right" valign="top"><i>Date of Intradistrict transfer:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="date_intradistrict"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "terminated_date">
                <TR>
                  <td align="right" valign="top"><i>Date terminated:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="terminated_date"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "plan_confirmed">
                <TR>
                  <td align="right" valign="top"><i>Plan confirmed:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="plan_confirmed"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "date_confirmed">
                <TR>
                  <td align="right" valign="top"><i>Date plan confirmed:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="date_confirmed"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "discharge_date">
                <TR>
                  <td align="right" valign="top"><i>Debtor discharged:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="discharge_date"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "joint_discharge_date">
                <TR>
                  <td align="right" valign="top"><i>Joint Debtor discharged:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="joint_discharge_date"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "dismiss_date">
                <TR>
                  <td align="right" valign="top"><i>Date dismissed:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="dismiss_date"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "debtor_dismiss_date">
                <TR>
                  <td align="right" valign="top"><i>Debtor dismissed:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="debtor_dismiss_date"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "joint_dismiss_date">
                <TR>
                  <td align="right" valign="top"><i>Joint Debtor dismissed:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="joint_dismiss_date"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "reopen_date">
                <TR>
                  <td align="right" valign="top"><i>Case reinstated:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="reopen_date"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "date_341">
                <TR>
                  <td align="right" valign="top"><i>341 Meeting:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="date_341"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "deadline_discharge">
                <TR>
                  <td align="right" valign="top"><i>Deadline for objecting to discharge:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="deadline_discharge"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "deadline_mgmt">
                <TR>
                  <td align="right" valign="top"><i>Deadline for financial mgmt. course:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="deadline_mgmt"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "deadline_mgmt_db">
                <TR>
                  <td align="right" valign="top"><i>Deadline for financial mgmt. course (db):</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="deadline_mgmt_db"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "deadline_mgmt_jdb">
                <TR>
                  <td align="right" valign="top"><i>Deadline for financial mgmt. course (jdb):</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="deadline_mgmt_jdb"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "deadline_filing">
                <TR>
                  <td align="right" valign="top"><i>Deadline for filing claims:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="deadline_filing"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "deadline_govt">
                <TR>
                  <td align="right" valign="top"><i>Deadline for filing claims (govt):</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="deadline_govt"></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "case_admin_email">
                <TR>
                  <td align="right" valign="top"><br /><i>Case Administrator:</i></td>
                  <td align="left" valign="top">&nbsp;<a href=mailto:<TMPL_VAR NAME="case_admin_email">><TMPL_IF NAME = "case_admin_email_name"><TMPL_VAR NAME="case_admin_email_name"><TMPL_ELSE><TMPL_VAR NAME="case_admin_email"></TMPL_IF></a></td>
                </TR>
            </TMPL_IF>
            <TMPL_IF NAME = "case_admin_phone">
                <TR>
                  <td align="right" valign="top"><br /><i>Team Phone:</i></td>
                  <td align="left" valign="top">&nbsp;<TMPL_VAR NAME="case_admin_phone"></td>
                </TR>
            </TMPL_IF>
              </table>
              <br />
          </td>
      </tr>
      <tr>
          <TD VALIGN=top  WIDTH="50%">
              <TMPL_IF NAME="disposition">        
                  <br />
                  <i>Debtor disposition:</i>&nbsp;<TMPL_VAR NAME="disposition"><br />
                      <TMPL_IF NAME="joint_disposition">
                      <i>Joint Debtor disposition:</i>&nbsp;<TMPL_VAR NAME="joint_disposition"><br />
                      </TMPL_IF>
              </TMPL_IF>
          </td>
      </tr>
    </table>
    </FONT>
    <br />
    <span class="unifont1" style="font-weight:normal; display:block;">
        <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
            <tr>
                <TD VALIGN=top  WIDTH="50%">
                    <TMPL_IF NAME="debtor_name">
                        <i><b>Debtor</b></i>
                        <br />
                        <b><TMPL_VAR NAME="debtor_name">
                        <TMPL_IF NAME="debtor_fact">
                            <b><i><TMPL_VAR NAME="debtor_fact"></i></b>
                        </TMPL_IF>
                        </b>
                        <TMPL_IF NAME = "debtor_line1">
                                <br /><TMPL_VAR NAME="debtor_line1">
                        </TMPL_IF>
                        <TMPL_IF NAME = "debtor_line2">
                                <br /><TMPL_VAR NAME="debtor_line2">
                        </TMPL_IF>
                        <TMPL_IF NAME = "debtor_line3">
                                <br /><TMPL_VAR NAME="debtor_line3">
                        </TMPL_IF>
                        <TMPL_IF NAME = "debtor_line4">
                                <br /><TMPL_VAR NAME="debtor_line4">
                        </TMPL_IF>
                        <TMPL_IF NAME = "debtor_line5">
                                <br /><TMPL_VAR NAME="debtor_line5">
                        </TMPL_IF>
                        <TMPL_IF NAME = "debtor_line6">
                                <br /><TMPL_VAR NAME="debtor_line6">
                        </TMPL_IF>
                        <TMPL_IF NAME = "debtor_line7">
                               <br /><TMPL_VAR NAME="debtor_line7">
                        </TMPL_IF>
                        <TMPL_IF NAME = "debtor_line8">
                                <br /><TMPL_VAR NAME="debtor_line8">
                        </TMPL_IF>
                        <TMPL_LOOP NAME="debtor_aka_info">
                            <TMPL_IF NAME = "debtor_aka">
                                <br /><B><I><TMPL_VAR NAME="debtor_type_aka"></I> <TMPL_VAR NAME="debtor_aka"></B>
                            </TMPL_IF>
                        </TMPL_LOOP NAME="debtor_aka_info">
                    </TMPL_IF>
                    <br />
                </td>
                <TMPL_IF NAME="att_info">
                    <TD VALIGN=top  ALIGN=right>
                        <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
                            <TMPL_LOOP NAME="att_info">
                                <TMPL_IF NAME = "attorney_name">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>represented by&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="attorney_name"></b></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "attorney_firm">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="attorney_firm"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_line1">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="att_line1"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_line2">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="att_line2"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_line3">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="att_line3"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_line4">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="att_line4"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_line5">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="att_line5"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_line6">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="att_line6"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_line7">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><TMPL_VAR NAME="att_line7"></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_email">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="att_email">><TMPL_VAR NAME="att_email"></a></td>
                                    </tr>
                                </TMPL_IF>
                                <TMPL_IF NAME = "att_terminated">
                                    <tr>
                                        <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                        <TD valign="top" ALIGN=left ><i>TERMINATED: <TMPL_VAR NAME="att_terminated"></i></td>
                                    </tr>
                                </TMPL_IF>
                                <tr><td><br /></td></tr>
                            </TMPL_LOOP NAME="att_info">
                        </table>
                    </td>
                </TMPL_IF>
            </tr>
        </table>
        <TMPL_IF NAME="codebtor_name">
            <br />
            <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
                <tr>
                    <TD VALIGN=top  WIDTH="50%">
                        <i><b><TMPL_VAR NAME="codebtor_type"></b></i>
                        <br />
                        <b><TMPL_VAR NAME="codebtor_name"></b>
                        <TMPL_IF NAME="codebtor_fact">
                            <b><i><TMPL_VAR NAME="codebtor_fact"></i></b>
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line1">
                            <br /><TMPL_VAR NAME="codebtor_line1">
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line2">
                            <br /><TMPL_VAR NAME="codebtor_line2">
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line3">
                            <br /><TMPL_VAR NAME="codebtor_line3">
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line4">
                            <br /><TMPL_VAR NAME="codebtor_line4">
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line5">
                            <br /><TMPL_VAR NAME="codebtor_line5">
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line6">
                            <br /><TMPL_VAR NAME="codebtor_line6">
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line7">
                            <br /><TMPL_VAR NAME="codebtor_line7">
                        </TMPL_IF>
                        <TMPL_IF NAME = "codebtor_line8">
                            <br /><TMPL_VAR NAME="codebtor_line8">
                        </TMPL_IF>
                        <TMPL_LOOP NAME="codebtor_aka_info">
                            <TMPL_IF NAME = "codebtor_aka">
                              <br /><B><I><TMPL_VAR NAME="codebtor_type_aka"></I> <TMPL_VAR NAME="codebtor_aka"></B>
                            </TMPL_IF>
                        </TMPL_LOOP NAME="codebtor_aka_info">
                    </td>
                    <TMPL_IF NAME="co_att_exist">
                        <TD VALIGN=top  ALIGN=right>
                          <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
                              <TMPL_LOOP NAME="co_att_info">
                                  <TMPL_IF NAME= "co_attorney_name">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>represented by&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="co_attorney_name"></b></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_attorney_firm">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="co_attorney_firm"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_line1">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="co_att_line1"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_line2">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="co_att_line2"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_line3">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="co_att_line3"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_line4">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="co_att_line4"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_line5">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="co_att_line5"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_line6">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="co_att_line6"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_line_email">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="co_att_line_email">><TMPL_VAR NAME="co_att_line_email"></a></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "co_att_terminated">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><i><TMPL_VAR NAME="co_att_terminated"></i></td>
                                      </tr>
                                  </TMPL_IF>
                                  <tr><td><br /></td></tr>
                              </TMPL_LOOP NAME="co_att_info">
                          </table>
                        </td>
                    </TMPL_IF>
                </tr> 
            </table>                   
        </TMPL_IF>
        <TMPL_IF NAME="bankruptcy_admin_info">
            <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
                <tr>
                    <TD VALIGN=top  WIDTH="50%">
                        <TMPL_LOOP NAME="bankruptcy_admin_info">
                            <TMPL_IF NAME="field1">
                                <br /><i><b><TMPL_VAR NAME="field1"></b></i>
                                <br />
                                <b><TMPL_VAR NAME="field2"></b>
                                <TMPL_IF NAME = "field3">
                                    <br /><TMPL_VAR NAME="field3">
                                </TMPL_IF>
                                <TMPL_IF NAME = "field4">
                                    <br /><TMPL_VAR NAME="field4">
                                </TMPL_IF>
                                <TMPL_IF NAME = "field5">
                                    <br /><TMPL_VAR NAME="field5">
                                </TMPL_IF>
                                <TMPL_IF NAME = "field6">
                                    <br /><TMPL_VAR NAME="field6">
                                </TMPL_IF>
                                <TMPL_IF NAME = "field7">
                                    <br /><TMPL_VAR NAME="field7">
                                </TMPL_IF>
                                <TMPL_IF NAME = "field8">
                                    <br /><TMPL_VAR NAME="field8">
                                </TMPL_IF>
                                <TMPL_IF NAME = "field9">
                                    <br /><TMPL_VAR NAME="field9">
                                </TMPL_IF>
                                <TMPL_IF NAME = "field10">
                                    <br /><TMPL_VAR NAME="field10">
                                </TMPL_IF>
                                <TMPL_IF NAME = "email">
                                    <br />Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a>
                                </TMPL_IF>
                                <TMPL_IF NAME = "email_nonaref">
                                    <br />Email: <TMPL_VAR NAME="email_nonaref">
                                </TMPL_IF>
                                <TMPL_IF NAME = "terminated">
                                    <br /><i>TERMINATED: <TMPL_VAR NAME="terminated"></i>
                                </TMPL_IF>
                            </TMPL_IF>
                            <br /><br />
                        </TMPL_LOOP NAME="bankruptcy_admin_info">
                    </td>
                    <TMPL_IF NAME="bankruptcy_admin_rep_info_exist">
                        <TD VALIGN=top  ALIGN=right>
                            <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
                                <TMPL_LOOP NAME="bankruptcy_admin_rep_info">
                                    <TMPL_IF NAME= "field1">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right><TMPL_VAR NAME="field1">&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                        </tr>
                                    <TMPL_ELSE>
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field3">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field3"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field4">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field4"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field5">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field5"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field6">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field6"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field7">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field7"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field8">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field8"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field9">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field9"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "field10">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field10"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "email">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "email_nonaref">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left >Email: <TMPL_VAR NAME="email_nonaref"></td>
                                        </tr>
                                    </TMPL_IF>
                                    <TMPL_IF NAME = "terminated">
                                        <tr>
                                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                            <TD valign="top" ALIGN=left ><i>TERMINATED: <TMPL_VAR NAME="terminated"></i></td>
                                        </tr>
                                    </TMPL_IF>
                                    <tr><td><br /></td></tr>
                                </TMPL_LOOP NAME="bankruptcy_admin_rep_info">
                            </table>
                        </td>
                    </TMPL_IF>
                </tr>
            </table>
        </TMPL_IF>
        <TMPL_IF NAME="trustee_info">
          <br />
          <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
						  <tr>
						    <TD VALIGN=top  WIDTH="50%">
						        <TMPL_LOOP NAME="trustee_info">
						            <TMPL_IF NAME="field1">
						                <i><b>Trustee</b></i>
						                <br />
						                <b><TMPL_VAR NAME="field2"></b>
						                <TMPL_IF NAME = "field3">
						                    <br /><TMPL_VAR NAME="field3">
						                </TMPL_IF>
						                <TMPL_IF NAME = "field4">
						                    <br /><TMPL_VAR NAME="field4">
						                </TMPL_IF>
						                <TMPL_IF NAME = "field5">
						                    <br /><TMPL_VAR NAME="field5">
						                </TMPL_IF>
						                <TMPL_IF NAME = "field6">
						                    <br /><TMPL_VAR NAME="field6">
						                </TMPL_IF>
						                <TMPL_IF NAME = "field7">
						                    <br /><TMPL_VAR NAME="field7">
						                </TMPL_IF>
						                <TMPL_IF NAME = "field8">
						                    <br /><TMPL_VAR NAME="field8">
						                </TMPL_IF>
						                <TMPL_IF NAME = "field9">
						                    <br /><TMPL_VAR NAME="field9">
						                </TMPL_IF>
						                <TMPL_IF NAME = "field10">
						                    <br /><TMPL_VAR NAME="field10">
						                </TMPL_IF>
						                <TMPL_IF NAME = "email">
						                    <br />Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a>
						                </TMPL_IF>
						                <TMPL_IF NAME = "email_nonaref">
						                    <br />Email: <TMPL_VAR NAME="email_nonaref">
						                </TMPL_IF>
						                <TMPL_IF NAME = "terminated">
						                    <br /><i>TERMINATED: <TMPL_VAR NAME="terminated"></i>
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank1">
						                    <br /><TMPL_VAR NAME="blank1">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank2">
						                    <br /><TMPL_VAR NAME="blank2">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank3">
						                    <br /><TMPL_VAR NAME="blank3">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank4">
						                    <br /><TMPL_VAR NAME="blank4">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank5">
						                    <br /><TMPL_VAR NAME="blank5">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank6">
						                    <br /><TMPL_VAR NAME="blank6">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank7">
						                    <br /><TMPL_VAR NAME="blank7">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank8">
						                    <br /><TMPL_VAR NAME="blank8">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank9">
						                    <br /><TMPL_VAR NAME="blank9">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank10">
						                    <br /><TMPL_VAR NAME="blank10">
						                </TMPL_IF>
						            </TMPL_IF>
						            <br /><br />
						        </TMPL_LOOP NAME="trustee_info">
						    </td>
						    <TMPL_IF NAME="trustee_rep_exist">
						        <TD VALIGN=top  ALIGN=right>
						            <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
						                <TMPL_LOOP NAME="trustee_rep_info">
						                    <TMPL_IF NAME= "field1">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right><TMPL_VAR NAME="field1">&nbsp;</td>
						                            <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
						                        </tr>
						                    <TMPL_ELSE>
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top" ALIGN=left><b><TMPL_VAR NAME="field2"></b></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field3">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field3"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field4">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><TMPL_VAR NAME="field4"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field5">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><TMPL_VAR NAME="field5"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field6">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><TMPL_VAR NAME="field6"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field7">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><TMPL_VAR NAME="field7"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field8">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><TMPL_VAR NAME="field8"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field9">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><TMPL_VAR NAME="field9"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "field10">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><TMPL_VAR NAME="field10"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "email">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left>Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "email_nonaref">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left>Email: <TMPL_VAR NAME="email_nonaref"></td>
						                        </tr>
						                    </TMPL_IF>
						                    <TMPL_IF NAME = "terminated">
						                        <tr>
						                            <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                            <TD valign="top"  ALIGN=left><i>TERMINATED: <TMPL_VAR NAME="terminated"></i></td>
						                        </tr>
						                    </TMPL_IF>
						                    <tr><td>&nbsp;</td></tr>
						                </TMPL_LOOP NAME="trustee_rep_info">
						            </table>
						        </td>
						    </TMPL_IF>
						  </tr>
          </table>
        </TMPL_IF>
        <TMPL_IF NAME="former_trustee_info">
          <br />
          <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
						  <tr>
						      <TD VALIGN=top  WIDTH="50%">
						          <TMPL_LOOP NAME="former_trustee_info">
						              <TMPL_IF NAME="field1">
						                  <i><b><TMPL_VAR NAME="field1"></b></i>
						                  <br />
						                  <b><TMPL_VAR NAME="field2"></b>
						              </TMPL_IF>
						              <TMPL_IF NAME = "field3">
						                  <br /><TMPL_VAR NAME="field3">
						              </TMPL_IF>
						              <TMPL_IF NAME = "field4">
						                  <br /><TMPL_VAR NAME="field4">
						              </TMPL_IF>
						              <TMPL_IF NAME = "field5">
						                  <br /><TMPL_VAR NAME="field5">
						              </TMPL_IF>
						              <TMPL_IF NAME = "field6">
						                  <br /><TMPL_VAR NAME="field6">
						              </TMPL_IF>
						              <TMPL_IF NAME = "field7">
						                  <br /><TMPL_VAR NAME="field7">
						              </TMPL_IF>
						              <TMPL_IF NAME = "field8">
						                  <br /><TMPL_VAR NAME="field8">
						              </TMPL_IF>
						              <TMPL_IF NAME = "field9">
						                  <br /><TMPL_VAR NAME="field9">
						              </TMPL_IF>
						              <TMPL_IF NAME = "field10">
						                  <br /><TMPL_VAR NAME="field10">
						              </TMPL_IF>
						              <TMPL_IF NAME = "email">
						                  <br />Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a>
						              </TMPL_IF>
						              <TMPL_IF NAME = "email_nonaref">
						                  <br />Email: <TMPL_VAR NAME="email_nonaref">
						              </TMPL_IF>
						              <TMPL_IF NAME = "terminated">
						                  <br /><i>TERMINATED: <TMPL_VAR NAME="terminated"></i>
						              </TMPL_IF>
						                <TMPL_IF NAME = "blank1">
						                    <br /><TMPL_VAR NAME="blank1">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank2">
						                    <br /><TMPL_VAR NAME="blank2">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank3">
						                    <br /><TMPL_VAR NAME="blank3">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank4">
						                    <br /><TMPL_VAR NAME="blank4">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank5">
						                    <br /><TMPL_VAR NAME="blank5">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank6">
						                    <br /><TMPL_VAR NAME="blank6">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank7">
						                    <br /><TMPL_VAR NAME="blank7">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank8">
						                    <br /><TMPL_VAR NAME="blank8">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank9">
						                    <br /><TMPL_VAR NAME="blank9">
						                </TMPL_IF>
						                <TMPL_IF NAME = "blank10">
						                    <br /><TMPL_VAR NAME="blank10">
						                </TMPL_IF>
						              <br /><br />
						          </TMPL_LOOP NAME="former_trustee_info">
						          <br />
						      </td>
						      <TMPL_IF NAME="former_trustee_rep_exist">
						          <TD VALIGN=top  ALIGN=right>
						              <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
						                  <TMPL_LOOP NAME="former_trustee_rep_info">
						                      <TMPL_IF NAME= "field1">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right><TMPL_VAR NAME="field1">&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
						                          </tr>
						                      <TMPL_ELSE>
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field3">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field3"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field4">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field4"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field5">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field5"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field6">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field6"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field7">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field7"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field8">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field8"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field9">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field9"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "field10">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field10"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "email">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "email_nonaref">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left >Email: <TMPL_VAR NAME="email_nonaref"></td>
						                          </tr>
						                      </TMPL_IF>
						                      <TMPL_IF NAME = "terminated">
						                          <tr>
						                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
						                              <TD valign="top" ALIGN=left ><i>TERMINATED: <TMPL_VAR NAME="terminated"></i></td>
						                          </tr>
						                      </TMPL_IF>
                                  <tr><td><br /></td></tr>
                              </TMPL_LOOP NAME="former_trustee_rep_info">
                          </table>
                      </td>
                  </TMPL_IF>
              </tr>
            </table>
        </TMPL_IF>
        <TMPL_IF NAME="asst_us_trustee_info">
        <br />
            <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
              <tr>
                  <TD VALIGN=top  WIDTH="50%">
                      <TMPL_LOOP NAME="asst_us_trustee_info">
                          <TMPL_IF NAME="field1">
                              <i><b><TMPL_VAR NAME="field1"></b></i>
                              <br />
                          </TMPL_IF>
                          <TMPL_IF NAME="field2">
                              <b><TMPL_VAR NAME="field2"></b>
                          </TMPL_IF>
                          <TMPL_IF NAME = "field3">
                              <br /><TMPL_VAR NAME="field3">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field4">
                              <br /><TMPL_VAR NAME="field4">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field5">
                              <br /><TMPL_VAR NAME="field5">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field6">
                              <br /><TMPL_VAR NAME="field6">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field7">
                              <br /><TMPL_VAR NAME="field7">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field8">
                              <br /><TMPL_VAR NAME="field8">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field9">
                              <br /><TMPL_VAR NAME="field9">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field10">
                              <br /><TMPL_VAR NAME="field10">
                          </TMPL_IF>
                          <TMPL_IF NAME = "email">
                              <br />Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a>
                          </TMPL_IF>
                          <TMPL_IF NAME = "email_nonaref">
                              <br />Email: <TMPL_VAR NAME="email_nonaref">
                          </TMPL_IF>
                          <TMPL_IF NAME = "terminated">
                              <br /><i>TERMINATED: <TMPL_VAR NAME="terminated"></i>
                          </TMPL_IF>
						  <TMPL_IF NAME = "blank1">
						      <br /><TMPL_VAR NAME="blank1">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank2">
						      <br /><TMPL_VAR NAME="blank2">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank3">
						      <br /><TMPL_VAR NAME="blank3">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank4">
						      <br /><TMPL_VAR NAME="blank4">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank5">
						      <br /><TMPL_VAR NAME="blank5">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank6">
						      <br /><TMPL_VAR NAME="blank6">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank7">
						      <br /><TMPL_VAR NAME="blank7">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank8">
						      <br /><TMPL_VAR NAME="blank8">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank9">
						      <br /><TMPL_VAR NAME="blank9">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank10">
						      <br /><TMPL_VAR NAME="blank10">
						  </TMPL_IF>
                          <br /><br />
                      </TMPL_LOOP NAME="asst_us_trustee_info">
                  </td>
                  <TMPL_IF NAME="asst_us_trustee_rep_exist">
                      <TD VALIGN=top  ALIGN=right>
                          <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
                              <TMPL_LOOP NAME="asst_us_trustee_rep_info">
                                  <TMPL_IF NAME= "field1">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right><TMPL_VAR NAME="field1">&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                      </tr>
                                  <TMPL_ELSE>
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field3">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field3"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field4">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field4"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field5">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field5"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field6">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field6"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field7">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field7"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field8">
                                          <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field8"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field9">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field9"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field10">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field10"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email_nonaref">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <TMPL_VAR NAME="email_nonaref"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "terminated">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><i>TERMINATED: <TMPL_VAR NAME="terminated"></i></td>
                                      </tr>
                                  </TMPL_IF>
                                  <tr><td><br /></td></tr>
                              </TMPL_LOOP NAME="asst_us_trustee_rep_info">
                          </table>
                      </td>
                  </TMPL_IF>
              </tr>
            </table>
        </TMPL_IF>
        <TMPL_IF NAME="us_trustee_info">
        <br />
            <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
              <tr>
                  <TD VALIGN=top  WIDTH="50%">
                      <TMPL_LOOP NAME="us_trustee_info">
                          <TMPL_IF NAME="field1">
                              <i><b><TMPL_VAR NAME="field1"></b></i><br />
                          </TMPL_IF>
                          <TMPL_IF NAME = "field2">
                              <b><TMPL_VAR NAME="field2"></b>
                          </TMPL_IF>
                          <TMPL_IF NAME = "field3">
                              <br /><TMPL_VAR NAME="field3">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field4">
                              <br /><TMPL_VAR NAME="field4">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field5">
                              <br /><TMPL_VAR NAME="field5">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field6">
                              <br /><TMPL_VAR NAME="field6">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field7">
                              <br /><TMPL_VAR NAME="field7">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field8">
                              <br /><TMPL_VAR NAME="field8">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field9">
                              <br /><TMPL_VAR NAME="field9">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field10">
                              <br /><TMPL_VAR NAME="field10">
                          </TMPL_IF>
                          <TMPL_IF NAME = "email">
                              <br />Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a>
                          </TMPL_IF>
                          <TMPL_IF NAME = "email_nonaref">
                              <br />Email: <TMPL_VAR NAME="email_nonaref">
                          </TMPL_IF>
                          <TMPL_IF NAME = "terminated">
                              <br /><i>TERMINATED: <TMPL_VAR NAME="terminated"></i>
                          </TMPL_IF>
						  <TMPL_IF NAME = "blank1">
						      <br /><TMPL_VAR NAME="blank1">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank2">
						      <br /><TMPL_VAR NAME="blank2">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank3">
						      <br /><TMPL_VAR NAME="blank3">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank4">
						      <br /><TMPL_VAR NAME="blank4">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank5">
						      <br /><TMPL_VAR NAME="blank5">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank6">
						      <br /><TMPL_VAR NAME="blank6">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank7">
						      <br /><TMPL_VAR NAME="blank7">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank8">
						      <br /><TMPL_VAR NAME="blank8">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank9">
						      <br /><TMPL_VAR NAME="blank9">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank10">
						      <br /><TMPL_VAR NAME="blank10">
						  </TMPL_IF>
                          <br /><br />
                      </TMPL_LOOP NAME="us_trustee_info">
                  </td>
                  <TMPL_IF NAME="us_trustee_rep_exist">
                      <TD VALIGN=top  ALIGN=right>
                          <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
                              <TMPL_LOOP NAME="us_trustee_rep_info">
                                  <TMPL_IF NAME= "field1">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right><TMPL_VAR NAME="field1">&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                      </tr>
                                  <TMPL_ELSE>
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field3">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field3"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field4">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field4"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field5">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field5"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field6">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field6"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field7">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field7"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field8">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field8"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field9">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field9"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field10">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field10"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email_nonaref">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <TMPL_VAR NAME="email_nonaref"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "terminated">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><i>TERMINATED: <TMPL_VAR NAME="terminated"></i></td>
                                      </tr>
                                  </TMPL_IF>
                                  <tr><td><br /></td></tr>
                              </TMPL_LOOP NAME="us_trustee_rep_info">
                          </table>
                      </td>
                  </TMPL_IF>
              </tr>
            </table>
        </TMPL_IF>
        <TMPL_IF NAME="creditor_info">
            <br />
            <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
              <tr>
                  <TD VALIGN=top  WIDTH="50%">
                      <TMPL_LOOP NAME="creditor_info">
                          <TMPL_IF NAME="field1">
                              <i><b><TMPL_VAR NAME="field1"></b></i><br />
                          </TMPL_IF>
                          <TMPL_IF NAME="field2">
                              <b><TMPL_VAR NAME="field2"></b>
                          </TMPL_IF>
                          <TMPL_IF NAME = "field3">
                              <br /><TMPL_VAR NAME="field3">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field4">
                              <br /><TMPL_VAR NAME="field4">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field5">
                              <br /><TMPL_VAR NAME="field5">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field6">
                              <br /><TMPL_VAR NAME="field6">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field7">
                              <br /><TMPL_VAR NAME="field7">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field8">
                              <br /><TMPL_VAR NAME="field8">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field9">
                              <br /><TMPL_VAR NAME="field9">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field10">
                              <br /><TMPL_VAR NAME="field10">
                          </TMPL_IF>
                          <TMPL_IF NAME = "email">
                              <br />Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a>
                          </TMPL_IF>
                          <TMPL_IF NAME = "email_nonaref">
                              <br />Email: <TMPL_VAR NAME="email_nonaref">
                          </TMPL_IF>
                          <TMPL_IF NAME = "terminated">
                              <br /><i>TERMINATED: <TMPL_VAR NAME="terminated"></i>
                          </TMPL_IF>
						  <TMPL_IF NAME = "blank1">
						      <br /><TMPL_VAR NAME="blank1">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank2">
						      <br /><TMPL_VAR NAME="blank2">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank3">
						      <br /><TMPL_VAR NAME="blank3">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank4">
						      <br /><TMPL_VAR NAME="blank4">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank5">
						      <br /><TMPL_VAR NAME="blank5">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank6">
						      <br /><TMPL_VAR NAME="blank6">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank7">
						      <br /><TMPL_VAR NAME="blank7">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank8">
						      <br /><TMPL_VAR NAME="blank8">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank9">
						      <br /><TMPL_VAR NAME="blank9">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank10">
						      <br /><TMPL_VAR NAME="blank10">
						  </TMPL_IF>
                          <br /><br />
                      </TMPL_LOOP NAME="creditor_info">
                  </td>
                  <TMPL_IF NAME="creditor_rep_exist">
                      <TD VALIGN=top  ALIGN=right WIDTH="50%">
                          <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
                              <TMPL_LOOP NAME="creditor_rep_info">
                                  <TMPL_IF NAME= "creditor_rep_by">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right><TMPL_VAR NAME="field1">&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                      </tr>
                                  <TMPL_ELSE>
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD VALIGN=top  ALIGN=left><b><TMPL_VAR NAME="field1"></b></td>
                                      </tr>
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field2"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field3">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field3"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field4">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field4"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field5">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field5"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field6">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field6"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field7">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field7"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field8">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field8"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field9">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field9"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field10">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field10"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email_nonaref">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <TMPL_VAR NAME="email_nonaref"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "terminated">
                                      <tr>
                                              <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                              <TD valign="top" ALIGN=left ><i>TERMINATED: <TMPL_VAR NAME="terminated"></i></td>
                                      </tr>
                                  </TMPL_IF>
                                  <tr><td><br /></td></tr>
                              </TMPL_LOOP NAME="creditor_rep_info">
                          </table>
                      </td>
                  </TMPL_IF>
              </tr>
            </table>
        </TMPL_IF>
        <TMPL_IF NAME="interested_info">
            <br />
            <TABLE width="100%" cellspacing="0" class="maintblborders_small" id="main_small">
              <tr>
                  <TD VALIGN=top  WIDTH="50%">
                      <TMPL_LOOP NAME="interested_info">
                          <TMPL_IF NAME="field1">
                              <i><b><TMPL_VAR NAME="field1"></b></i><br />
                          </TMPL_IF>
                          <TMPL_IF NAME = "field2">
                              <b><TMPL_VAR NAME="field2"></b>
                          </TMPL_IF>
                          <TMPL_IF NAME = "field3">
                              <br /><TMPL_VAR NAME="field3">
                          </TMPL_IF>
                          <TMPL_IF NAME = "title">
                              &nbsp;<i><b><TMPL_VAR NAME="title"></b></i>
                          </TMPL_IF>
                          <TMPL_IF NAME = "field4">
                              <br /><TMPL_VAR NAME="field4">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field5">
                              <br /><TMPL_VAR NAME="field5">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field6">
                              <br /><TMPL_VAR NAME="field6">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field7">
                              <br /><TMPL_VAR NAME="field7">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field8">
                              <br /><TMPL_VAR NAME="field8">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field9">
                              <br /><TMPL_VAR NAME="field9">
                          </TMPL_IF>
                          <TMPL_IF NAME = "field10">
                              <br /><TMPL_VAR NAME="field10">
                          </TMPL_IF>
                          <TMPL_IF NAME = "email">
                              <br />Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a>
                          </TMPL_IF>
                          <TMPL_IF NAME = "email_nonaref">
                              <br />Email: <TMPL_VAR NAME="email_nonaref">
                          </TMPL_IF>
                          <TMPL_IF NAME = "terminated">
                              <br /><i>TERMINATED: <TMPL_VAR NAME="terminated"></i>
                          </TMPL_IF>
						  <TMPL_IF NAME = "blank1">
						      <br /><TMPL_VAR NAME="blank1">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank2">
						      <br /><TMPL_VAR NAME="blank2">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank3">
						      <br /><TMPL_VAR NAME="blank3">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank4">
						      <br /><TMPL_VAR NAME="blank4">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank5">
						      <br /><TMPL_VAR NAME="blank5">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank6">
						      <br /><TMPL_VAR NAME="blank6">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank7">
						      <br /><TMPL_VAR NAME="blank7">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank8">
						      <br /><TMPL_VAR NAME="blank8">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank9">
						      <br /><TMPL_VAR NAME="blank9">
						  </TMPL_IF>
						  <TMPL_IF NAME = "blank10">
						      <br /><TMPL_VAR NAME="blank10">
						  </TMPL_IF>
                          <br /><br />
                      </TMPL_LOOP NAME="interested_info">
                      <br />
                  </td>
                  <TMPL_IF NAME="interested_rep_exist">
                      <TD VALIGN=top  ALIGN=right>
                          <table width="100%" cellspacing="0" class="maintblborders_small" id="main_small" align="right">
                              <TMPL_LOOP NAME="interested_rep_info">
                                  <TMPL_IF NAME= "field1">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right><TMPL_VAR NAME="field1">&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                      </tr>
                                  <TMPL_ELSE>
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><b><TMPL_VAR NAME="field2"></b></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field3">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field3"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field4">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field4"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field5">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field5"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field6">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field6"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field7">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field7"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field8">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field8"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field9">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field9"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "field10">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><TMPL_VAR NAME="field10"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <a href=mailto:<TMPL_VAR NAME="email">><TMPL_VAR NAME="email"></a></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "email_nonaref">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left >Email: <TMPL_VAR NAME="email_nonaref"></td>
                                      </tr>
                                  </TMPL_IF>
                                  <TMPL_IF NAME = "terminated">
                                      <tr>
                                          <TD VALIGN=top  ALIGN=right>&nbsp;</td>
                                          <TD valign="top" ALIGN=left ><i>TERMINATED: <TMPL_VAR NAME="terminated"></i></td>
                                      </tr>
                                  </TMPL_IF>
                                  <tr><td><br /></td></tr>
                              </TMPL_LOOP NAME="interested_rep_info">
                          </table>
                      </td>
                  </TMPL_IF>
              </tr>
            </table>
          </span>
        </TMPL_IF>
<br /><br /><br />
    <div align="center" id="docket_entries_asc">
        <table width="1000" border="solid" bordercolor="#336699" class="maintblborders_small" id="main_small" >
            <tr>
                <td align="center" width="90">
                    <span class="unifont1" style="font-weight: normal;">
                        <a href="javascript:change_docket_date_order();">
                            <b>Filing Date</b>
                        </a>
                    </span>
                </td>
                <td align="center" width="101">
                    <span class="unifont1" style="font-weight: normal;">
                        <b>#</b>
                    </span>
                </td>
                <td align="center" width="60">
                    <span class="unifont1" style="font-weight: normal;">
                       <b>Price Rate</b>
                    </span>
                </td>
                <td align="center">
                    <span class="unifont1" style="font-weight: normal;">
                        <b>Docket Text</b>
                    </span>
                </td>
            </tr>
            <TMPL_LOOP NAME="DOCKET_LOOP">
                <TMPL_IF NAME="FILING_ORDER">
                    <tr>
                        <td align="center">
                            <span class="unifont1" style="font-weight: normal;">
                                <TMPL_VAR NAME="FILING_DATE">&nbsp;
                            </span>
                        </td>
                        <td align="center">
                            <span class="normal_link" style="font-weight: normal;">                    
                                    <TMPL_IF NAME="IMAGE_AVAILABLE">
                                        <TMPL_IF NAME = "ALLOW_LINK">
                                        <a href="javascript:report_win('<TMPL_VAR NAME="ACTION_DOCKET">?EVENT=DOCKET/DOCKET_IMAGE_REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID">&moxie_court_code=<TMPL_VAR NAME="MOXIE_COURT_CODE">&court_code=<TMPL_VAR NAME="COURT_CODE">&case_number=<TMPL_VAR NAME="CASE_NUMBER">&case_internal_id=<TMPL_VAR NAME="CASE_INTERNAL_ID">&internal_case_id=<TMPL_VAR NAME="CASE_INTERNAL_ID">&docket_num=<TMPL_VAR NAME="DOCKET_NUM">&case_data=<TMPL_VAR ESCAPE="URL" NAME="CASE_DATA">&image_type=pdf&CASE_NUMBER=<TMPL_VAR NAME="CASE_NUMBER">&CASE_INTERNAL_ID=<TMPL_VAR NAME="CASE_INTERNAL_ID">&DOCKET_NUM=<TMPL_VAR NAME="DOCKET_NUM">&FILING_DATE=<TMPL_VAR ESCAPE="URL" NAME="FILING_DATE">&CASE_DATA=<TMPL_VAR ESCAPE="URL" NAME="CASE_DATA">&SSN=<TMPL_VAR ESCAPE="URL" NAME="SSN">&REFERENCE_CODE=<TMPL_VAR ESCAPE="URL" NAME="REFERENCE_CODE">&TMSID=<TMPL_VAR ESCAPE="URL" NAME="TMSID">&CSRF_TOKEN=<TMPL_VAR ESCAPE="URL" NAME="CSRF_TOKEN">&full_case_number=<TMPL_VAR NAME="FULL_CASE_NUMBER">&FULL_CASE_NUMBER=<TMPL_VAR NAME="FULL_CASE_NUMBER">', 'PACERDocumentReportWin')"><TMPL_VAR NAME="DOCKET_NUM"></a>
                                    <TMPL_ELSE>  
                                        <TMPL_VAR NAME="DOCKET_NUM">
                                        </TMPL_IF>
                                <TMPL_ELSE>  
                                    <TMPL_VAR NAME="DOCKET_NUM">
                                    </TMPL_IF>
                                    <TMPL_IF NAME="NUM_PGS_DOCS">
                                    <br /> <TMPL_VAR NAME="NUM_PGS_DOCS">
                                    </TMPL_IF>
                            </span>
                        </td>
                        <td align="center">
                            <span class="unifont1" style="font-weight: normal;">
                                <TMPL_IF NAME = "ALLOW_LINK">
                                        <TMPL_IF NAME=DOC_RATE>
                                            <b><TMPL_VAR NAME="DOC_RATE"></b>
                                        <TMPL_ELSE>
                                            -N/A-
                                        </TMPL_IF>  
                                <TMPL_ELSE> 
                                    -N/A-
                                </TMPL_IF> 
                            </span>
                        </td>
                        <td>
                            <span class="unifont1" style="font-weight: normal;">
                                <TMPL_VAR NAME="DOCKET_TEXT">&nbsp;
                            </span>
                        </td>
                    </tr>
                </TMPL_IF>                    
            </TMPL_LOOP>
        </table>
    </div>
    <div align="center" id="docket_entries_desc"  style="display:none;">
        <table width="1000" border="solid" bordercolor="#336699" class="maintblborders_small" id="main_small" >
            <tr>
                <td align="center" width="90">
                    <span class="unifont1" style="font-weight: normal;">
                        <a href="javascript:change_docket_date_order();">
                            <b>Filing Date</b>
                        </a>
                    </span>
                </td>
                <td align="center" width="101">
                    <span class="unifont1" style="font-weight: normal;">
                        <b>#</b>
                    </span>
                </td>
                <td align="center" width="60">
                    <span class="unifont1" style="font-weight: normal;">
                        <b>Price Rate</b>
                    </span>
                </td>
                <td align="center">
                    <span class="unifont1" style="font-weight: normal;">
                        <b>Docket Text</b>
                    </span>
                </td>
            </tr>
            <TMPL_LOOP NAME="DOCKET_LOOP">
                <TMPL_UNLESS NAME="FILING_ORDER">
                    <tr>
                        <td align="center">
                            <span class="unifont1" style="font-weight: normal;">
                                <TMPL_VAR NAME="FILING_DATE">&nbsp;
                            </span>
                        </td>
                        <td align="center">
                            <span class="normal_link" style="font-weight: normal;">                    
                                    <TMPL_IF NAME="IMAGE_AVAILABLE">
                                        <TMPL_IF NAME = "ALLOW_LINK">
                                        <a href="javascript:report_win('<TMPL_VAR NAME="ACTION_DOCKET">?EVENT=DOCKET/DOCKET_IMAGE_REPORT&SESSION_ID=<TMPL_VAR NAME="SESSION_ID"><TMPL_IF NAME="QRY_STRING">&<TMPL_VAR NAME="QRY_STRING"></TMPL_IF>&CASE_NUMBER=<TMPL_VAR NAME="CASE_NUMBER">&CASE_INTERNAL_ID=<TMPL_VAR NAME="CASE_INTERNAL_ID">&DOCKET_NUM=<TMPL_VAR NAME="DOCKET_NUM">&FILING_DATE=<TMPL_VAR ESCAPE="URL" NAME="FILING_DATE">&CASE_DATA=<TMPL_VAR ESCAPE="URL" NAME="CASE_DATA">&SSN=<TMPL_VAR ESCAPE="URL" NAME="SSN">&REFERENCE_CODE=<TMPL_VAR ESCAPE="URL" NAME="REFERENCE_CODE">&TMSID=<TMPL_VAR ESCAPE="URL" NAME="TMSID">&CSRF_TOKEN=<TMPL_VAR ESCAPE="URL" NAME="CSRF_TOKEN">&FULL_CASE_NUMBER=<TMPL_VAR NAME="FULL_CASE_NUMBER">', 'PACERDocumentReportWin')"><TMPL_VAR NAME="DOCKET_NUM"></a>
                                    <TMPL_ELSE>  
                                        <TMPL_VAR NAME="DOCKET_NUM">
                                        </TMPL_IF>
                                <TMPL_ELSE>  
                                    <TMPL_VAR NAME="DOCKET_NUM">
                                    </TMPL_IF>
                                    <TMPL_IF NAME="NUM_PGS_DOCS">
                                    <br /> <TMPL_VAR NAME="NUM_PGS_DOCS">
                                    </TMPL_IF>
                            </span>
                        </td>
                        <td align="center">
                            <span class="unifont1" style="font-weight: normal;">
                                <TMPL_IF NAME = "ALLOW_LINK">
                                        <TMPL_IF NAME=DOC_RATE>
                                            <b><TMPL_VAR NAME="DOC_RATE"></b>
                                        <TMPL_ELSE>
                                            -N/A-
                                        </TMPL_IF>  
                                <TMPL_ELSE> 
                                    -N/A-
                                </TMPL_IF> 
                            </span>
                        </td>
                        <td>
                            <span class="unifont1" style="font-weight: normal;">
                                <TMPL_VAR NAME="DOCKET_TEXT">&nbsp;
                            </span>
                        </td>
                    </tr>
                </TMPL_UNLESS>
            </TMPL_LOOP>
        </table>
    </div>

   
    <TMPL_IF NAME=end_case_number>
        <table width="95%" cellspacing="0" class="maintblborders_small" id="main_small">
            <tr>
                <td>&nbsp;</td>
                <td align="left">
                    <span class="unifont1" style="font-weight: normal;">
                        <b><TMPL_VAR NAME=end_case_number></b>
                    </span>
                </td>
            </tr>
        </table>
    </TMPL_IF>

    <br /><br /><br />
    
    <INPUT type=HIDDEN NAME="EVENT" VALUE="">
    <INPUT TYPE=HIDDEN NAME=IM_A_REPORT VALUE="1">
    <INPUT TYPE=HIDDEN NAME=REFERENCE_CODE VALUE="<TMPL_VAR REFERENCE_CODE>">
    <INPUT TYPE=HIDDEN NAME=TMSID VALUE="<TMPL_VAR TMSID>">
    <INPUT TYPE=HIDDEN NAME=DOL_DATE VALUE="<TMPL_VAR NAME=DOL_DATE>">
</form>

<font class="unifont1">
    <a href="javascript:window.close()"><u>Close Window</u></a>
</font>

</body>
</html>
<!-- End docket_report.tpl -->
