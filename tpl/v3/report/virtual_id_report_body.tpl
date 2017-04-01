<style>
    tr.searchresultsrowodd td {
        padding-left: 10px;
    }
</style>

  
  <span id="permissible-use">
    <span class="disclaimerbody">
      <br>
      <br>
      <strong>Your DPPA Permissible Use  : </strong>&#160;
      <span name="dppa_reason" id="dppa_reason"><TMPL_VAR DPPA_DESC></span>
    </span>
    <span class="disclaimerbody">
      <br>
      <strong>Your GLBA Permissible Use  : </strong>&#160;
      <span name="glb_reason" id="glb_reason"><TMPL_VAR GLB_DESC></span>
      <br>
    </span>
    <span class="disclaimerbody">
      <strong>Your DMF Permissible Use  : </strong>&#160;
      <span name="dmf_reason" id="dmf_reason"><TMPL_VAR DMF_DESC></span>
      <br>
      <br>
    </span>
  </span>


<table width="50%" border="0" cellpadding="0" cellspacing="3">
  <tr>
    <td><strong>Report processed by:</strong></td>
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
    <td><strong>Date:</strong> <span name="smallfont1"><TMPL_VAR REPORT_DATE></span></td>
  </tr>
  <TMPL_UNLESS HIDE_EMAILS>
  <TMPL_IF EMAIL_ECHO>
  <tr>
    <td><strong>Email Address:</strong> <span name="smallfont1"><TMPL_VAR EMAIL_ECHO></span></td>
  </tr>
  </TMPL_IF>
  </TMPL_UNLESS>
</table>

<br/>

<table id="searchResultsTblHeader" border="0" cellpadding="0" cellspacing="0" width="100%">
    <tr class="searchresultstop2">
        <th id="col_name" width="22%">Name</th>
        <th id="col_email" width="24%">Email</th>
        <th id="col_ssn" width="18%">SSN</th>
        <th id="col_adr" width="34%">Address</th>
    </tr>


    <tr valign="top" class="searchresultsrowodd">
        <td headers="col_name" class="smallfont2" width="22%" style="padding-top: 5px;">
        <TMPL_LOOP NAMES>
        <strong><A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|FIRST_NAME|<TMPL_VAR NAME="FIRST_NAME">|LAST_NAME|<TMPL_VAR NAME="LAST_NAME">|MI|<TMPL_VAR NAME="MIDDLE_NAME">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/NAME');"><TMPL_VAR NAME="FIRST_NAME">&#160;<TMPL_IF MIDDLE_NAME><TMPL_VAR NAME="MIDDLE_NAME">&#160;</TMPL_IF><TMPL_VAR NAME="LAST_NAME"></A></strong><br>
        </TMPL_LOOP>
        <strong>DOB:</strong>&#160;<TMPL_VAR NAME="DOB">
        </td>
        <td headers="col_email" class="smallfont2" width="24%" style="padding-top: 5px;">
        <TMPL_LOOP EMAIL_IDS>
            <strong><TMPL_VAR EMAIL></strong>&#160;
            <br>
        </TMPL_LOOP>
        </td>
        <td headers="col_ssn" class="smallfont2" width="18%" style="padding-top: 5px;">
            <strong><a class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|RECID|<TMPL_VAR NAME="RECID">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/SSN');"><strong><TMPL_VAR NAME="SSN"></strong></a></strong>
            &#160;
            <TMPL_UNLESS NAME=IRS>
               <TMPL_IF NAME="SHOW_LINKID">
                  <br>
                  LexID :&#160;<strong><A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|UNIQUEID|<TMPL_VAR NAME="LINK_ID">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/DID');"><TMPL_VAR NAME="LINK_ID"></A></strong><br>
               </TMPL_IF>
            </TMPL_UNLESS>
        </td>
        <td headers="col_adr" class="smallfont2" width="34%" style="padding-top: 5px;">
        <TMPL_IF ADDRESSES>
            <TMPL_LOOP ADDRESSES>
            <A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|STREET_ADDRESS|<TMPL_VAR NAME="STREET_ADDRESS">|CITY|<TMPL_VAR NAME="CITY">|STATE|<TMPL_VAR NAME="STATE">|ZIP|<TMPL_VAR NAME="ZIP">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/ADDR&CAN_MAP=<TMPL_VAR NAME="CAN_MAP">');"><TMPL_VAR STREET_ADDRESS></A>
            <br>
            <A class="searchresultslink" href="javascript:set_vars('REFERENCE_CODE|<TMPL_VAR NAME="REFERENCE_CODE">|DOL_DATE|<TMPL_VAR NAME="DOL_DATE">|STREET_ADDRESS|<TMPL_VAR NAME="STREET_ADDRESS">|CITY|<TMPL_VAR NAME="CITY">|STATE|<TMPL_VAR NAME="STATE">|ZIP|<TMPL_VAR NAME="ZIP">',1,0,1);decision_win('<TMPL_VAR NAME="ACTION">?EVENT=DECISION/ADDR&CAN_MAP=<TMPL_VAR NAME="CAN_MAP">');"><TMPL_VAR CSZ></A>
            <br><br>
            </TMPL_LOOP>
        </TMPL_IF>
        </td>
    </tr>

</table>

<br/>

<TMPL_IF HIDE_EMAILS>
    <TMPL_IF NO_RESULTS>
        <div class="message warningmessage" align="center"><strong>No Information Found</strong></div>
    </TMPL_IF>
</TMPL_IF>


<TMPL_LOOP RESULTS_LOOP>

  <TMPL_UNLESS HIDE_EMAILS>
    <TMPL_IF OTHER_EMAIL>
      <br>
      <table width="45%" border="0" cellpadding="0" cellspacing="3">
        <tr>
          <td nowrap valign="right"><strong>Emails Searched:</strong> <span name="smallfont1"><TMPL_VAR OTHER_EMAIL></span></td>
        </tr>
      </table>
      <br>
    </TMPL_IF>
    <TMPL_IF NO_INFO_FOUND>
        <div align="center"><strong>No Information Found</strong></div><p>
    </TMPL_IF>
  </TMPL_UNLESS>

    <TMPL_UNLESS NO_INFO_FOUND>
        <table width="100%" border="0" cellpadding="0" cellspacing="3">
        <tr>
        <td width="5%">&nbsp;</td>
        <td width="95%">
            <TMPL_IF BIO_INFO>
                <div><span class="unifont2"><strong>Subject Information:</strong></span></div><p>
                <table width="100%">
                <tr>
                  <td valign="top">
                    <table width="45%" border="0" cellpadding="0" cellspacing="3">
                    <tr>
                      <td class="smallfont1" nowrap valign="right"><strong>Name:</strong></td>
                      <td class="smallfont1" nowrap valign="left"><TMPL_VAR NAME="SUBJECT"></td>
                      <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
                      <td class="smallfont1" nowrap valign="right"><strong>Gender:</strong></td>
                      <td class="smallfont1" nowrap valign="left"><TMPL_VAR NAME="GENDER"></td>
                    </tr>
                    <tr>
                      <td class="smallfont1" nowrap valign="right"><strong>Age:</strong></td>
                      <td class="smallfont1" nowrap valign="left"><TMPL_VAR NAME="AGE"></td>
                      <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
                  <td class="smallfont1" nowrap valign="middle" colspan="2">&nbsp;</td>
                </tr>
                    </table>
                  </td>
                </tr>
                </table>
            </TMPL_IF>
    
            <TMPL_IF IMAGES_EXIST>
                <div><span class="unifont2"><strong>Images:</strong></span></div><p>

                <table width="100%">
                <tr>
                  <td valign="top">
                    <table width="95%" border="0" cellpadding="0" cellspacing="3">
                  <TMPL_LOOP IMAGE_LOOP>
                    <tr>
                      <td class="smallfont1" nowrap valign="middle"><img src="<TMPL_VAR url>" border="1" alt="" /></td>
                    </tr>
                </TMPL_LOOP>
                    </table>
                  </td>
                </tr>
                </table>
            </TMPL_IF>

            <TMPL_IF WORK_EXIST>
                <div><span class="unifont2"><strong>Work Information:</strong></span></div><p>
                <table width="100%">
                <tr>
                  <td valign="top">
                    <table width="45%" border="0" cellpadding="0" cellspacing="3">
                  <TMPL_LOOP WORK_LOOP>
                    <tr>
                      <td class="smallfont1" nowrap valign="middle"><strong>Company:</strong></td>
                      <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="company"></td>
                      <td class="smallfont1" nowrap valign="middle" width="50">&nbsp;</td>
                      <td class="smallfont1" nowrap valign="middle"><strong>Title:</strong></td>
                      <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="title"></td>
                    </tr>
                </TMPL_LOOP>
                    </table>
                  </td>
                </tr>
                </table>
            </TMPL_IF>

            <TMPL_IF PLACES_EXIST>
            <div><span class="unifont2"><strong>Relevant Links to Subject:</strong></span></div><p>

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
        <img src="<TMPL_VAR NAME=IMGPATH>/bing/bing-logo-small.gif" alt=""/>
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
<br><br>



