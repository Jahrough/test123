<!-- begin credit_pursuit_show.tpl -->
<!-- <TMPL_VAR SERVER_ID> -->
<html>
<head>

    <title >LexisNexis&reg; Credit Pursuit Report</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurintPrint.css" rel="stylesheet" type="text/css" media="print">
    <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR APPLICATION_TYPE>/diff.css" rel="stylesheet" type="text/css"/>
    <link href="<TMPL_VAR CSSPATH>/accurintSearch.css" rel="stylesheet" type="text/css"/>
    <link href="<TMPL_VAR CSSPATH>/accurint.css" rel="stylesheet" type="text/css"/>
    <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR APPLICATION_TYPE>/<TMPL_VAR USER_THEME>.css" rel="stylesheet" type="text/css"/>
    <link href="<TMPL_VAR CSSPATH>/creditpursuit.css" rel="stylesheet" type="text/css"/>
    
    <TMPL_UNLESS NAME="LITE_APP">
    <TMPL_INCLUDE NAME="search_header_preloads.tpl">
    <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
    </TMPL_UNLESS>

    <link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/search.js"></script>
    
      
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui-1.10.3.custom.min.js"></script>
    <script>var $j = jQuery.noConflict();</script>

    <script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
    <script src="<TMPL_VAR name='JSPATH'>/ln/server.js"></script>
    <script src="<TMPL_VAR name='JSPATH'>/ln/config.js"></script>
          
    <TMPL_IF NAME="VERIFY_PASSWORD">
        <script type="text/javascript">general_win('<TMPL_VAR ACTION>?SESSION_ID=<TMPL_VAR SESSION_ID>&CSRF_TOKEN=<TMPL_VAR CSRF_TOKEN>&EVENT=LOGIN/DO_VERIFY_PASSWORD','VerifyPassword','575','200');</script>
    </TMPL_IF>


  <script language="Javascript">
	var glb_purpose_value = get_glb(<TMPL_VAR NAME=GLB_PURPOSE_VALUE>);
	var dppa_value = get_dppa(<TMPL_VAR NAME=DPPA_VALUE>);
	var dmf_purpose_value = get_dmf('<TMPL_VAR NAME=DMF_PURPOSE_VALUE>');
    var help_html_file = '';
    var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
    var help_path = '<TMPL_VAR NAME=HLPPATH>';

    function open_help(help_html) {
        help_html_file = help_html;
        if (vertical != 'irs') {
            show_post_popup('LOGIN/SHOW_POPUP','HelpWindow',780,600,1,1,1,1,1,0,'','show_help_option');
        } else {
            general_win('<TMPL_VAR NAME=HLPPATH>/' + help_html,'HelpWindow',780,600,1,1,1,1,1,0);
        }
    }

    function conf(){
    	alert('Credit Report has been requested. Please check the report manager for results.');
    }
    
    function set_perm(perm){
        var fcra_descrip;
        
        document.forms[0].PERM_SET.value = perm;
        
        if ("PP1" == perm){
            fcra_descrip = 'Intends to use the information, as a potential investor or servicer, or current insurer, in connection with a valuation of, or an assessment of the credit or prepayment risks associated with, an existing credit obligation. Section 604(a)3(E)';
        } else if("PP2" == perm){
            fcra_descrip = 'In connection with a collection transaction involving the consumer for the collection of an account of the consumer.  Section 604(a)3(A)';
        } else if("PP3" == perm){
            fcra_descrip = 'In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer.';
        } else if("PP31" == perm){
            fcra_descrip = 'In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to an automobile or truck.';
        } else if("PP32" == perm){
            fcra_descrip = 'In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to a home equity loan line of credit.';
        } else if("PP33" == perm){
            fcra_descrip = 'In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to a personal loan.';
        } else if("PP34" == perm){
            fcra_descrip = 'In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to a credit card.';
        } else if("PP5" == perm){
            fcra_descrip = 'In connection with the underwriting of insurance. Section 604(a)3(B)';
        } else if("PP6" == perm){
            fcra_descrip = 'In connection with the review of existing policy holders for insurance underwriting purposes. Section 604(a)3(C)';
        } else if("PP7" == perm){
            fcra_descrip = 'A legitimate business need to review an account to determine whether the consumer continues to meet the terms of the account. Section 604(a)3(F)(ii).';
        }
        
        document.getElementById('fcra_text').innerHTML =  fcra_descrip;
    }

    function certify(){
        var df = document.forms[0];
        var perm = document.forms[0].PERM_SET.value;
       
        if( ("PP1" == perm)  || ("PP2" == perm)  ||
            ("PP3" == perm)  || ("PP31" == perm) ||
            ("PP32" == perm) || ("PP33" == perm) ||
            ("PP34" == perm) || ("PP7" == perm)  ||
            ("PP5" == perm)  || ("PP6" == perm) ){
                return 1;
       }
       return 0;
    }

    function fcra(option){
    	if(option == 9999){
            var fcra_msg_2 = '<div style="padding: 0px;"><p><h4><font color="#ed1c24">FCRA - LexisNexis&reg; Risk Solutions Bureau LLC FCRA Suite of Services</font></h4></p><br>';
                fcra_msg_2 += '<p>You are now requesting access to the LexisNexis&reg; Risk Solutions Bureau LLC FCRA Suite of Services.</p><br>';
                fcra_msg_2 += '<p>The LexisNexis&reg; Risk Solutions Bureau LLC FCRA Suite of Services provide a direct gateway access connection to information maintained by third-party credit bureaus.  The information provided through the gateway is a consumer report and may only be accessed in compliance with the Fair Credit Reporting Act (FCRA), 15 U.S.C. 1681 et seq.</p><br />';
                fcra_msg_2 += '<p>The federal Fair Credit Reporting Act imposes criminal penalties, including a fine, up to two years in prison or both against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting company under false pretenses and other penalties for anyone who obtains such consumer information without a permissible purpose.</p><br />';
                fcra_msg_2 += '<p><b>I certify on behalf of myself and my company that contracted for these consumer reports, that I have the following purpose under the Fair Credit Reporting Act for obtaining consumer reports and that such reports will not be used for any other purpose.</b></p><br>';
                fcra_msg_2 += '<p><b><font color="#ed1c24">PLEASE SELECT THE APPROPRIATE PURPOSE:</font></b></p><br>';
                fcra_msg_2 += '<table border="1" cellpadding="0" cellspacing="0" width="710" align="left"><tr><td class="unifont1" align="left"><input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP1" onClick="javascript:set_perm(\'PP1\');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Intends to use the information, as a potential investor or servicer, or current insurer, in connection with a valuation of, or an assessment of the credit or prepayment risks associated with, an existing credit obligation. Section 604(a)3(E)</td></tr>';
                fcra_msg_2 += '<tr><td class="unifont1" align="left"><input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP2" onClick="javascript:set_perm(\'PP2\');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In connection with a collection transaction involving the consumer for the collection of an account of the consumer.  Section 604(a)3(A)</td></tr>';
                fcra_msg_2 += '<tr><td class="unifont1" align="left"><input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP3" onClick="javascript:set_perm(\'PP3\');javascript:toggle_eq_span();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer.</td></tr>';
                fcra_msg_2 += '<tr><td class="unifont1" align="left"><span id="eq_span" style="display:none;"><table border="1" cellpadding="0" cellspacing="0" width="710" align="left"><tr><td class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP31" onClick="javascript:set_perm(\'PP31\');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to an automobile or truck.</td></tr><tr><td class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP32" onClick="javascript:set_perm(\'PP32\');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to a home equity loan line of credit.</td></tr><tr><td class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP33" onClick="javascript:set_perm(\'PP33\');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to a personal loan.</td></tr><tr><td class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP34" onClick="javascript:set_perm(\'PP34\');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer related to a credit card.</td></tr></table></span></td></tr>';
                fcra_msg_2 += '<tr><td class="unifont1" align="left"><input type="radio" id="PERM_PURP" name="PERM_PURP" value="PP7" onClick="javascript:set_perm(\'PP7\');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A legitimate business need to review an account to determine whether the consumer continues to meet the terms of the account. Section 604(a)3(F)(ii).</td></tr></table>';
                
                fcra_msg_2 += '<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><div align="center"><input  class="btn" id="fcra_ok" type="button" value="Certify" onclick="if(!certify()) return false;javascript:fcra(\'9\');" />&nbsp; &nbsp;<input  class="btn" id="fcra_cancel" type="button" value="Do Not Certify" onclick="javascript:window.close();"/></div></div>';

    			build_tip('Permitted Use Certification',fcra_msg_2,'',1,1,800);
		}else if(option == 9){
    		close_tip('info_rem');
    	}else if(option == '00'){
            var fcra_msg_exit = '<div style="padding:10px;"><p>You are now exiting the LexisNexis&reg; Risk Solutions Bureau LLC FCRA Suite of Services. The services you are now accessing do not constitute "consumer reports" as that term is defined in the federal Fair Credit Reporting Act, 15 USC 1681 et seq. (FCRA). Accordingly, these services may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another permissible purpose under the FCRA.<br><br><br></p>';
      			fcra_msg_exit += '<div align="center"><input class="btn" id="close_ok" type="button" value="Exit" onclick="javascript:window.close();"/>&nbsp; &nbsp; <input class="btn" id="close_cancel" type="button" value="Cancel" onclick="javascript:close_tip(\'info_rem\');"/></div></div>';

            build_tip('FCRA - LexisNexis&reg; Risk Solutions Bureau LLC FCRA Suite of Services',fcra_msg_exit,'',1,1,650);
    	}
    }

    function error(){
			var error_msg_1 = '<div style="padding:10px;"><div align="center"><p><br />	We are currently experiencing technical issues and are temporarily unable to process your request. <br/><br/>Please submit your request at a later time or contact our Technical Support team at 1-866-277-8407.<br /><br /><br /><br /></p><div align="center"><input  class="btn" id="error" type="button" value="Continue" onclick="javascript:close_tip(\'info_rem\');"/></div></div>';
            build_tip('LexisNexis&reg; Credit Pursuit Reports',error_msg_1,'',1,1,650);
    }

    function toggle_eq_span()
    {
        var span_id = document.getElementById('eq_span');

        if('' == span_id.style.display){ 
            span_id.style.display = 'none';
        }else{ 
            span_id.style.display = '';
        }
    }
    
    function toggle_spans()
    {   
        var myform       = document.forms[0];
        var data_type    = document.getElementById('DATA_TYPE').value;
        var span_id      = document.getElementById('tu_disc_span');
        var ssn_id       = document.getElementById('ssn_span');
        var none_ssn_id  = document.getElementById('none_ssn_span');
        var none_ssn_more_id  = document.getElementById('none_ssn_more_span');
                
        if('TCC' == data_type){
            span_id.style.display = '';
        }else if('TCF' == data_type){
            span_id.style.display = '';
        }else{
            span_id.style.display = 'none';
        }
        
        if('TCF' == data_type){
            myform.LAST_NAME.value = '';
            myform.FIRST_NAME.value = '';
            myform.MI.value = '';
            myform.SSN.value = '';
            myform.STREET_ADDRESS.value = '';
            myform.CITY.value = ''
            myform.STATE.value = '';
            myform.ZIP.value = '';
            ssn_id.style.display = '';
            none_ssn_id.style.display = 'none';
            none_ssn_more_id.style.display = 'none';
        }else{
            myform.SOCIAL.value = '';
            ssn_id.style.display = 'none';
            none_ssn_id.style.display = '';
            none_ssn_more_id.style.display = '';
        }
    }

  </script>

</head>
<body onLoad="setup_form();">
  <br>
  <div id="hd">
    <h2><span>LexisNexis&reg;</span><em>FCRA Gateway</em></h2>
    <p id="phone247">24/7 Search and Technical Assistance <strong>1-866-277-8407</strong></p>
    <a name="closeBtn" id="closeBtn" href="javascript:fcra(00);">Close Window</a>
  </div>
  <form name="CREDIT_PURSUIT" action="<TMPL_VAR NAME=ACTION_MISC>" method="post"  onSubmit="if(!validate()) return false;show_report_win('1');">
    <div id="content"><div id="frame">
      <input type="hidden" id="PERM_PURP" name="PERM_PURP" value="<TMPL_VAR PERM_PURP>"/>
      <input type="hidden" id="TM_ESP" name="TM_ESP" value="1"/>
      <div id="tabsBar">
        <ul>
          <li class="active"><a id="tmTab">LexisNexis&reg; Credit Pursuit Report</a></li>
        </ul>
      </div>
      <table id="formTable">
        <tbody>
        <TMPL_IF NAME="SEARCH_DISABLED">
        <tr>
          <td>
            <table>
              <tbody>
              <tr>
                <td valign="top" align="left">
                <table border="0" cellpadding="2" cellspacing="0">
                  <tr>
                    <td class="inputlabel">&nbsp;<b>Bureau Search: </b></td>
                  </tr>
                  <tr>
                    <td class="nsinputs">
                        <select disabled=true name="DATA_TYPE"> 
                            <TMPL_LOOP BUREAU_LOOP>
                                <option value="<TMPL_VAR NAME=B_VALUE>"><TMPL_VAR NAME=BURUEA></option>
                            </TMPL_LOOP>
                        </select>                
                    </td>
                  </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td valign="top" align="left">
                <table border="0" cellpadding="2" cellspacing="0">
                  <tr>
                    <td class="inputlabel"><label for="LAST_NAME">&nbsp;<b>Last Name</b></label></td>
                    <td class="inputlabel"><label for="FIRST_NAME">&nbsp;<b>First Name</b></label></td>
                    <td class="inputlabel"><label for="MI">&nbsp;<b>Middle Name</b></label></td>
                    <td class="inputlabel"><label for="SSN">&nbsp;<b>SSN</b></label></td>
                  </tr>
                  <tr>
                    <td class="nsinputs"><input disabled=true type="text" name="LAST_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input disabled=true type="text" name="FIRST_NAME" tabindex="2" size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input disabled=true type="text" name="MI" size="20" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input disabled=true type="text" name="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
                  </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td valign="top" align="left">
                <table border="0" cellpadding="2" cellspacing="0">
                  <tr>
                    <td class="inputlabel"><label for="STREET_ADDRESS">&nbsp;<b>Street Address</b></label></td>
                    <td class="inputlabel"><label for="CITY">&nbsp;<b>City</b></label></td>
                    <td class="unifont1"><label for="STATE">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></label></td>
                    <td class="inputlabel"><label for="ZIP">&nbsp;<b>Zip</b></label></td>
                  </tr>
                  <tr>
                    <td class="nsinputs"><input disabled=true type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input disabled=true type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input disabled=true type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
                    <td class="nsinputs"><input disabled=true type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
                  </tr>
                </table>
                </td>
              </tr>
              </tbody>
            </table>
          </td>
          <td id="btnTd">
            <div id="searchBlock">
            
              <input disabled=true name="BUTTON" tabindex="30" id="searchBtn" type="button" value="Report" onclick="if(!validate()) return false;show_report_win('1')" />
              
              <br/><br/><br/>
              <input disabled=true tabindex="31" id="clearSrch" type="button" value="Clear Form" onClick="this.form.reset()"/>
            </div>
          </td>
        </tr>
        <TMPL_ELSE>
        <tr>
          <td>
            <table>
              <tbody>
              <tr>
                <td valign="top" align="left">
                <table border="0" cellpadding="2" cellspacing="0">
                  <tr>
                    <td class="inputlabel"><label for="DATA_TYPE">&nbsp;<b>Bureau Search: </b></label></td>
                  </tr>
                  <tr>
                    <td class="nsinputs">
                        <select id="DATA_TYPE" name="DATA_TYPE" onchange="javascript:toggle_spans();"> 
                            <TMPL_LOOP BUREAU_LOOP>
                                <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=B_VALUE>"><TMPL_VAR NAME=BURUEA></option>
                            </TMPL_LOOP>
                        </select>                
                    </td>
                  </tr>
                </table>
                </td>
              </tr>
              
              
              <tr>
                <td valign="top" align="left">
                    <span id="none_ssn_span">
                        <table border="0" cellpadding="2" cellspacing="0">
                          <tr>
                            <td class="inputlabel"><label for="LAST_NAME">&nbsp;<b>Last Name</b></label></td>
                            <td class="inputlabel"><label for="FIRST_NAME">&nbsp;<b>First Name</b></label></td>
                            <td class="inputlabel"><label for="MI">&nbsp;<b>Middle Name</b></label></td>
                            <td class="inputlabel"><label for="SSN">&nbsp;<b>SSN</b></label></td>
                          </tr>
                          <tr>
                            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                            <td class="nsinputs"><input type="text" name="MI" id="MI" size="20" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
                            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
                          </tr>
                        </table>
                    </span>
                </td>
              </tr>
              <tr>
                <td valign="top" align="left">
                    <span id="none_ssn_more_span">
                        <table border="0" cellpadding="2" cellspacing="0">
                          <tr>
                            <td class="inputlabel"><label for="STREET_ADDRESS">&nbsp;<b>Street Address</b></label></td>
                            <td class="inputlabel"><label for="CITY">&nbsp;<b>City</b></label></td>
                            <td class="unifont1"><label for="STATE">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></label></td>
                            <td class="inputlabel"><label for="ZIP">&nbsp;<b>Zip</b></label></td>
                          </tr>
                          <tr>
                            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
                            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
                            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
                          </tr>
                        </table>
                    </span>
                </td>
              </tr>
              <tr>
                <td valign="top" align="left">
                    <span id="ssn_span" style="display:none;">
                        <table border="0" cellpadding="2" cellspacing="0">
                          <tr>
                            <td class="inputlabel"><label for="SOCIAL">&nbsp;<b>SSN</b></label></td>
                          </tr>
                          <tr>
                            <td class="nsinputs"><input type="text" name="SOCIAL" id="SOCIAL" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SOCIAL>"></td>
                          </tr>
                        </table>
                    </span>
                </td>
              </tr>
              </tbody>
            </table>
          </td>
          <td id="btnTd">
            <div id="searchBlock">
              <input name="BUTTON" tabindex="30" id="searchBtn" type="button" value="Report" onclick="if(!validate()) return false;show_report_win('1')" />
              <input tabindex="31" id="clearSrch" type="button" value="Clear Form" onClick="clearAll()"/>
              <br /><br />
              <a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','350',0,0,0,1,1,0,'','coverage/creditpursuit_coverage');">Coverage</a>
              |
              <a style="cursor: help;" href="javascript:void(0);" onClick="javascript:open_help('credit_pursuit_help.html');">Help?</a>
            </div>
          </td>
        </tr>
        </TMPL_IF>
        <tr>
          <td colspan="2">
            <p>
                The LexisNexis&reg; Risk Solutions Bureau LLC FCRA Suite of Services provide a direct gateway access connection to information maintained by third-party credit bureaus.  The information provided through the gateway is a consumer report and may only be accessed in compliance with the Fair Credit Reporting Act (FCRA), 15 U.S.C. 1681 et seq.
            </p>
            <p>
                The federal Fair Credit Reporting Act imposes criminal penalties, including a fine, up to two years in prison or both against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting company under false pretenses and other penalties for anyone who obtains such consumer information without a permissible purpose.
            </p>

            <span id="tu_disc_span" style="display:none;">
                <p>
                    Customer is prohibited from using High Risk Fraud Alerts information as a basis for "adverse action," as such term is defined in Section 603(k) of the Fair Credit Reporting Act, or any successor statute or applicable state statute.
                </p>
            </span>            
          </td>
        </tr>
        <tr>
          <td colspan="2"><div id="lineVertRedDot"></div></td>
        </tr>
        <tr>
          <td>
            <table>
              <tr>
                <td class="inputlabel"><label for="REFERENCE_CODE"><span id="ref_code"><strong>Reference:</strong></span>&nbsp;</label></td>
                <td class="nsinputs"><input type="text" tabindex="32" size="16" maxlength="30" name="REFERENCE_CODE"<TMPL_IF DISABLE_REF_CODE> DISABLED </TMPL_IF> id="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"/></td>
              </tr>
            </table>
          </td>
        </tr></tbody>
      </table>
      </div>
        <TMPL_IF NAME="SEARCH_DISABLED">
        <table cellpadding="5" cellspacing="0" border="1" width="450" align="center">
          <tr>
            <td>
            <table cellpadding="0" cellspacing="0" border="0" align="center">
              <tr>
                <td class="unifont1" align="center">
                <span class="searchmessageunavail">
                    This search is currently not available to you.  Please contact your administrator if this is in error or if you would like access.
                </span>
                </td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </TMPL_IF>

      <div id="glbdppaTbl">
        <p>
          <b>Your FCRA Permissible Use:</b>&nbsp;<span id="fcra_text"></span>
        </p>
      </div>
    </div><!-- END wrapper DIV -->
<div id="footer">
      <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.&nbsp; <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank">Privacy & Security</a>
</div>
    <div id="wrapperoverlay2"></div>
    <div id="systemWorking">
      <img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_processing.gif" alt="System Processing... Wait!" />
    </div>

	<TMPL_INCLUDE NAME=common_hidden_input.tpl>
	<INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
	<INPUT type=hidden NAME="EVENT" VALUE="REPORT/TRIMERGE_ESP_REPORT">
	<INPUT type=hidden NAME="RECID" VALUE="">
    <INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_MISC>">
	<INPUT type=hidden NAME="FULL_NAME" VALUE="">
	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
	<INPUT type=hidden NAME="REQUIRE_REF_CODE" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE>">
	<INPUT type=hidden NAME="REQUIRE_REF_CODE_EXTRA" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_EXTRA>">
	<INPUT type=hidden NAME="REQUIRE_REF_CODE_ALERT_TEXT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_ALERT_TEXT>">
	<INPUT type=hidden NAME="REQUIRE_REF_CODE_FORMAT" VALUE="<TMPL_VAR NAME=REQUIRE_REF_CODE_FORMAT>">
    <INPUT type=hidden NAME="KEY1" VALUE="ITEM_NUMBER">
    <INPUT type=hidden NAME="KEY2" VALUE="CASE_TYPE">
    <INPUT type=hidden NAME="KEY3" VALUE="CASE_NUMBER">
    <INPUT type=hidden NAME="PRIMARY_SUBJECT" VALUE="PRIMARY_SUBJECT">
    <INPUT type=hidden NAME="SECONDARY_SUBJECT" VALUE="SECONDARY_SUBJECT">
    <input type=hidden NAME="ADDR_TYPE" value="Current">
    <input type=hidden NAME="REQUEST_TIME" value="">
    <input type=hidden NAME="DOB_ALT" value="">
    <INPUT type=hidden NAME="PERM_SET" VALUE="">
    <INPUT type=hidden NAME="PERM_PURP" VALUE="">
    <INPUT type=hidden NAME="CP_FCRA_EQ_PP" VALUE="<TMPL_VAR NAME=CP_FCRA_EQ_PP>">
  </form>

    <script type="text/javascript">fcra(9999);</script>
	

	<TMPL_IF NAME="CONFIRMATION">
		<script type="text/javascript">conf();</script>
	</TMPL_IF>

	<TMPL_IF NAME="ERROR_MESSAGE">
		<script type="text/javascript">error();</script>
	</TMPL_IF>

</body>
</html>
<!-- end credit_pursuit_show.tpl -->
