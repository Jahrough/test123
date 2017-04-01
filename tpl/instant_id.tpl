<!-- BEGIN instant_id.tpl -->
<TMPL_UNLESS ENABLE_MYACC_V3>
<script>
function setIIDelements(att, val, name){
  var elements = document.getElementsByClassName(name);
  for(var i=0;i<elements.length;i++) {
    var iid_option = elements[i].id;
    document.getElementById(iid_option).style[att]=val;
  }
}
function checkIIDelements(name,setvalue){
  var elements = document.getElementsByClassName(name);
  for(var i=0;i<elements.length;i++) {
    elements[i].checked=true;
    if (setvalue) {
      elements[i].value=setvalue;
    }
  }
}
function showhideIID(att,val){
  setIIDelements(att, val, 'instantIDgroup');
  showhideIIDwatchlists('display','none');
  if (val != 'none') {  // showing elements
    document.getElementById('iiddownicon').style.display='none';
    document.getElementById('iidupicon').style.display='';
    checkIIDelements('checkIIDcollapse',1);
    if (document.forms[0].IID_LATEST_VERSION.value == 1) {
      setIIDelements('display','none','instantIDversions');
    }
    if (document.forms[0].IID_EXACT_MATCH.value == 0) {
      setIIDelements('display','none','instantIDexactmatch');
    }
    if (document.forms[0].IID_DOB_MATCH.value == 0) {
      setIIDelements('display','none','instantIDdobmatch');
    }
    else {
      checkDOBMatchType(att,val);
    }
  }
  else { // not showing
    document.getElementById('iiddownicon').style.display='';
    document.getElementById('iidupicon').style.display='none';
    checkIIDelements('uncheckIIDcollapse',1);
  }
}
function showhideIIDcollapse(att,val){
  if (val == 'none') {
    showhideIID(att,val);
  }
  checkIIDelements('uncheckIIDcollapse');
  setIIDelements(att, val, 'instantIDcollapse');
}
function checkDOBMatchType(att,val){
  if (val != 'none') { // display the section
    setIIDelements('display','','instantIDdobmatch');
    if (document.forms[0].IID_DOB_MATCHTYPE.value != 'RadiusCCYY') {
      document.getElementById('iiddobmatchradius').style.display='none';
    }
  }
  else { // no display section
    setIIDelements('display','none','instantIDdobmatch');
  }
}
function showhideIIDDOB(att,val){setIIDelements(att,val,'instantIDdobmatch');checkDOBMatchType(att,val);}
function showhideIIDexact(att,val){setIIDelements(att,val,'instantIDexactmatch');}
function showhideIIDversions(att,val){setIIDelements(att,val,'instantIDversions');}
function showhideIIDwatchlists(att,val){setIIDelements(att,val,'instantIDwatchlists');}
function checkOtherWatchs(){checkIIDelements('checkIIDwatchlists',0);}
function uncheckOtherWatchs(){checkIIDelements('uncheckIIDwatchlists',1);}
function uncheckAllWatchButton(){checkIIDelements('uncheckIIDAllButton',1);}
</script>
</TMPL_UNLESS>
<TMPL_UNLESS HIDE_INSTANTID>
  <TMPL_IF COMPANY_DISABLE_INSTANT_ID>
  <INPUT TYPE=HIDDEN NAME="DISABLE_INSTANT_ID" VALUE="<TMPL_IF DISABLE_INSTANT_ID>1<TMPL_ELSE>0</TMPL_IF>">
  <TMPL_ELSE>
    <tr>
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;Instant ID:<TMPL_IF NAME=SECURITY_COMPANY>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a style="cursor:help;" href="javascript:general_win('<TMPL_VAR NAME=HLPPATH>/instantid_admin_help.html','PeopleInstantID',780,490,1,1,1,1,1,0);void(0);">Help</a></TMPL_IF></td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><INPUT TYPE=RADIO NAME="DISABLE_INSTANT_ID" onclick="showhideIIDcollapse('display','')" VALUE='0' <TMPL_UNLESS NAME=DISABLE_INSTANT_ID>CHECKED</TMPL_UNLESS>></td>
            <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
            <td><INPUT TYPE=RADIO NAME="DISABLE_INSTANT_ID" onclick="showhideIIDcollapse('display','none')" VALUE='1' <TMPL_IF NAME=DISABLE_INSTANT_ID>CHECKED</TMPL_IF>></td>
            <td class="unifont1">No</td>
          </tr>
        </table>
      </td>
    </tr>
  </TMPL_IF>
</TMPL_UNLESS>

<TMPL_IF NAME=SECURITY_COMPANY>
<INPUT type=hidden NAME="IID_DOB_MATCH" VALUE="<TMPL_VAR NAME=IID_DOB_MATCH>">
<INPUT type=hidden NAME="IID_EXACT_MATCH" VALUE="<TMPL_VAR NAME=IID_EXACT_MATCH>">
<INPUT type=hidden NAME="IID_LATEST_VERSION" VALUE="<TMPL_VAR NAME=IID_LATEST_VERSION>">

<TMPL_UNLESS HIDE_INSTANTID>
  <TMPL_UNLESS COMPANY_DISABLE_INSTANT_ID>
    <tr id="iidcollapse" class="instantIDcollapse" <TMPL_IF NAME=DISABLE_INSTANT_ID>style="display:none;"</TMPL_IF> >
      <td id="iidshowmainoptions" width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Show Instant ID Options:
        <a id="iiddownicon" href="javascript:showhideIID('display','')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_down.gif" hspace="4"/></a>
        <a id="iidupicon" style="display:none;" href="javascript:showhideIID('display','none')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_up.gif" hspace="4"/></a>
      </td>
      <td width="25%" align="left">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_SHOW_OPTIONS" class="checkIIDcollapse"   onclick="showhideIID('display','')" VALUE='0' ></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_SHOW_OPTIONS" class="uncheckIIDcollapse" onclick="showhideIID('display','none')" VALUE='1' CHECKED ></td>
          <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </tr>
    <TMPL_IF IID_VERSION_OVERRIDE>
    <tr class="instantIDgroup" id="iidversion" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Send Latest Version:</td>
      <td width="25%" align="left">
      <table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_LATEST_VERSION" onclick="showhideIIDversions('display','none')" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_LATEST_VERSION>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_LATEST_VERSION" onclick="showhideIIDversions('display','')" VALUE='1' <TMPL_IF NAME=DISABLE_IID_LATEST_VERSION>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </tr>
      </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDversions" id="iidversionselect" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;InstantID Version:</td>
      <td width="25%" align="left" style="padding-top:2px;">
        <select name="IID_SELECT_VERSION" id="IID_SELECT_VERSION" style="z-index:1000" align="center">
          <TMPL_LOOP NAME="IID_VERSION_LOOP">
            <option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>SELECTED</TMPL_IF>> <TMPL_VAR VALUE> </option>
          </TMPL_LOOP>
        </select>
      </td>
    </tr>
    <TMPL_UNLESS ENABLE_MYACC_V3>
    <TMPL_IF NAME="IID_SELECT_VERSION">
      <script>
        document.forms[0].IID_SELECT_VERSION.value = '<TMPL_VAR NAME="IID_SELECT_VERSION">';
      </script>
    </TMPL_IF>
    </TMPL_UNLESS>
    </TMPL_IF>
    <tr class="instantIDgroup" id="iidcloverride" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Include CL Override:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_CLOVERRIDE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_CLOVERRIDE>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_CLOVERRIDE" VALUE='1' <TMPL_IF NAME=DISABLE_IID_CLOVERRIDE>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidmsoverride" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Include MS Override:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_MSOVERRIDE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_MSOVERRIDE>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_MSOVERRIDE" VALUE='1' <TMPL_IF NAME=DISABLE_IID_MSOVERRIDE>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidmioverride" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Include MI Override:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_MIOVERRIDE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_MIOVERRIDE>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_MIOVERRIDE" VALUE='1' <TMPL_IF NAME=DISABLE_IID_MIOVERRIDE>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iiddlverification" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Include DL Verification:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DLVERIFY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_DLVERIFY>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DLVERIFY" VALUE='1' <TMPL_IF NAME=DISABLE_IID_DLVERIFY>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidpoboxcomply" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;PO Box Compliance:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_POBOX_COMPLY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_POBOX_COMPLY>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_POBOX_COMPLY" VALUE='1' <TMPL_IF NAME=DISABLE_IID_POBOX_COMPLY>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidlastseenthreshold" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;Last Seen Threshold:</td>
      <td width="25%" align="left" style="padding-top:2px;">
        <select name="IID_LAST_SEEN_THRESHOLD" class="medblack" id="IID_LAST_SEEN_THRESHOLD" align="center">
          <option value="12">12</option>
          <option value="18">18</option>
          <option value="24">24</option>
          <option value="30">30</option>
          <option value="36">36</option>
        </select>
      </td>
    </tr>
    <TMPL_UNLESS ENABLE_MYACC_V3>
    <TMPL_IF NAME="IID_LAST_SEEN_THRESHOLD">
      <script>
        document.forms[0].IID_LAST_SEEN_THRESHOLD.value = '<TMPL_VAR NAME="IID_LAST_SEEN_THRESHOLD">';
      </script>
    </TMPL_IF>
    </TMPL_UNLESS>
    <tr class="instantIDgroup" id="iiddobmatch" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Enable DOB Match:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO name="DISABLE_IID_DOB_MATCH" onclick="showhideIIDDOB('display','')" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_DOB_MATCH>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO name="DISABLE_IID_DOB_MATCH" onclick="showhideIIDDOB('display','none')" VALUE='1' <TMPL_IF NAME=DISABLE_IID_DOB_MATCH>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDdobmatch" id="iiddobmatchtype" style="display:none;" >
      <td colspan="2" nowrap class="unifont1" align="left" >
      <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
	  <td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MatchType:</td>
	  <td align="right" style="padding-top:2px;">
	  <select name="IID_DOB_MATCHTYPE" class="medblack" align="right" onChange="checkDOBMatchType()">
          <option value="FuzzyCCYYMMDD"  >FuzzyCCYYMMDD</option>
          <option value="FuzzyCCYYMM"    >FuzzyCCYYMM  </option>
          <option value="ExactCCYYMMDD"  >ExactCCYYMMDD</option>
          <option value="ExactCCYYMM"    >ExactCCYYMM  </option>
          <option value="RadiusCCYY"     >RadiusCCYY   </option>
	  </select>
	  </td>
         </tr>
      </table>
      </td>
    </tr>
    <TMPL_UNLESS ENABLE_MYACC_V3>
    <TMPL_IF NAME="IID_DOB_MATCHTYPE">
      <script>
        document.forms[0].IID_DOB_MATCHTYPE.value = '<TMPL_VAR NAME="IID_DOB_MATCHTYPE">';
      </script>
    </TMPL_IF>
    </TMPL_UNLESS>
    <tr class="instantIDgroup instantIDdobmatch instantIDdobradius" id="iiddobmatchradius" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;MatchYearRadius:</td>
      <td width="25%" align="left" style="padding-top:2px;">
        <select name="IID_DOB_MATCHRADIUS" class="medblack" id="IID_DOB_MATCHRADIUS" align="center">
          <option value="0">0</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
        </select>
      </td>
    </tr>
    <TMPL_UNLESS ENABLE_MYACC_V3>
    <TMPL_IF NAME="IID_DOB_MATCHRADIUS">
      <script>
        document.forms[0].IID_DOB_MATCHRADIUS.value = '<TMPL_VAR NAME="IID_DOB_MATCHRADIUS">';
      </script>
    </TMPL_IF>
    </TMPL_UNLESS>
    <tr class="instantIDgroup" id="iidexactmatch" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Require Exact Match:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_MATCH" onclick="showhideIIDexact('display','')" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_EXACT_MATCH>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_MATCH" onclick="showhideIIDexact('display','none')" VALUE='1' <TMPL_IF NAME=DISABLE_IID_EXACT_MATCH>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDexactmatch" id="iidexactlastname" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last Name:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_LASTNAME" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_EXACT_LASTNAME>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_LASTNAME" VALUE='1' <TMPL_IF NAME=DISABLE_IID_EXACT_LASTNAME>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDexactmatch" id="iidexactfirstname" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_FIRSTNAME" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_EXACT_FIRSTNAME>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_FIRSTNAME" VALUE='1' <TMPL_IF NAME=DISABLE_IID_EXACT_FIRSTNAME>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDexactmatch" id="iidexactnickname" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;First Name Allow Nickname:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_NICKNAME" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_EXACT_NICKNAME>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_NICKNAME" VALUE='1' <TMPL_IF NAME=DISABLE_IID_EXACT_NICKNAME>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDexactmatch" id="iidexacthomephone" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home Phone:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_PHONE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_EXACT_PHONE>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_PHONE" VALUE='1' <TMPL_IF NAME=DISABLE_IID_EXACT_PHONE>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDexactmatch" id="iidexactssn" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SSN:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_SSN" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_EXACT_SSN>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_EXACT_SSN" VALUE='1' <TMPL_IF NAME=DISABLE_IID_EXACT_SSN>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidincludedobscore" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Include DOB Score:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DOB_SCORE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_DOB_SCORE>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DOB_SCORE" VALUE='1' <TMPL_IF NAME=DISABLE_IID_DOB_SCORE>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidincludedlscore" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Include DL Score:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DL_SCORE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_DL_SCORE>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DL_SCORE" VALUE='1' <TMPL_IF NAME=DISABLE_IID_DL_SCORE>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iiddisableinquiries" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Disable Customer Network:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DISAB_INQUIRY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_DISAB_INQUIRY>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_DISAB_INQUIRY" VALUE='1' <TMPL_IF NAME=DISABLE_IID_DISAB_INQUIRY>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidglobalthreshold" style="display:none;" >
      <td width="75%" nowrap class="unifont1" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;Global WatchList Threshold:</td>
      <td width="15%" class="unifont1" align="left" style="padding-top:2px;">
        <select name="IID_GLOBAL_WATCH_THRESHOLD" class="medblack" align="center">
          <option value="1">100%</option>
          <option value="0.98">98%</option>
          <option value="0.96">96%</option>
          <option value="0.94">94%</option>
          <option value="0.92">92%</option>
          <option value="0.90">90%</option>
          <option value="0.88">88%</option>
          <option value="0.86">86%</option>
          <option value="0.84" selected>84%</option>
          <option value="0.82">82%</option>
          <option value="0.80">80%</option>
        </select>
      </td>
    </tr>
    <TMPL_UNLESS ENABLE_MYACC_V3>
    <TMPL_IF NAME="IID_GLOBAL_WATCH_THRESHOLD">
      <script>
        document.forms[0].IID_GLOBAL_WATCH_THRESHOLD.value = '<TMPL_VAR NAME="IID_GLOBAL_WATCH_THRESHOLD">';
      </script>
    </TMPL_IF>
    </TMPL_UNLESS>
    <tr class="instantIDgroup" id="iidusedobfilter" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Watch DOB Filter:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHDOB_FILTER" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHDOB_FILTER>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHDOB_FILTER" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHDOB_FILTER>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup" id="iidwatchdocradius" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left" >&nbsp;&nbsp;&nbsp;&nbsp;Watch DOB Radius:</td>
      <td width="25%" align="left" style="padding-top:2px;">
        <select name="IID_WATCHDOB_RADIUS" class="medblack" id="IID_WATCHDOB_RADIUS" align="center">
          <option value="0">0</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
        </select>
      </td>
    </tr>
    <TMPL_UNLESS ENABLE_MYACC_V3>
    <TMPL_IF NAME="IID_WATCHDOB_RADIUS">
      <script>
        document.forms[0].IID_WATCHDOB_RADIUS.value = '<TMPL_VAR NAME="IID_WATCHDOB_RADIUS">';
      </script>
    </TMPL_IF>
    </TMPL_UNLESS>
    <tr class="instantIDgroup" id="showwatchlists" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Expand Watchlists:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHLISTS" onclick="showhideIIDwatchlists('display','')" VALUE='0' </td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHLISTS" class="uncheckIIDcollapse" onclick="showhideIIDwatchlists('display','none')" VALUE='1' CHECKED></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchall" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ENABLE ALL:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_ALL" onclick="checkOtherWatchs()" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_ALL>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_ALL" onclick="uncheckOtherWatchs()" id="DISABLE_IID_WATCHL_ALL" class="uncheckIIDAllButton" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_ALL>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchbes" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bank of England Sanctions:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_BES" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_BES>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_BES" id="DISABLE_IID_WATCHL_BES" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_BES>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchcftc" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Commodity Futures Trading:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_CFTC" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_CFTC>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_CFTC" id="DISABLE_IID_WATCHL_CFTC" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_CFTC>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchdtc" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Defense Trade Controls:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_DTC" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_DTC>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_DTC" id="DISABLE_IID_WATCHL_DTC" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_DTC>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatcheudt" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;EU Designated Terrorists:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_EUDT" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_EUDT>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_EUDT" id="DISABLE_IID_WATCHL_EUDT" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_EUDT>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchfbi" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FBI Fugitives:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_FBI" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_FBI>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_FBI" id="DISABLE_IID_WATCHL_FBI" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_FBI>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchfcen" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Financial Crimes Enforce:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_FCEN" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_FCEN>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_FCEN" id="DISABLE_IID_WATCHL_FCEN" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_FCEN>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchfar" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Foreign Agents Reg Act:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_FAR" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_FAR>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_FAR" id="DISABLE_IID_WATCHL_FAR" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_FAR>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchimw" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Interpol Most Wanted:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_IMW" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_IMW>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_IMW" id="DISABLE_IID_WATCHL_IMW" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_IMW>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchofac" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office Foreign Asset Control:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_OFAC" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_OFAC>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_OFAC" id="DISABLE_IID_WATCHL_OFAC" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_OFAC>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchocc" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Office Currency Comptroller:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_OCC" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_OCC>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_OCC" id="DISABLE_IID_WATCHL_OCC" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_OCC>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchosfi" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OSFI Canada Entities:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_OSFI" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_OSFI>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_OSFI" id="DISABLE_IID_WATCHL_OSFI" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_OSFI>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchpep" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Politically Exposed Persons:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_PEP" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_PEP>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_PEP" id="DISABLE_IID_WATCHL_PEP" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_PEP>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchsdt" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State Dept Terrorist Org:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_SDT" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_SDT>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_SDT" id="DISABLE_IID_WATCHL_SDT" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_SDT>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchbis" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;US Bureau of Industry:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_BIS" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_BIS>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_BIS" id="DISABLE_IID_WATCHL_BIS" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_BIS>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchunnt" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;United Nations Terrorists:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_UNNT" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_UNNT>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_UNNT" id="DISABLE_IID_WATCHL_UNNT" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_UNNT>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
    <tr class="instantIDgroup instantIDwatchlists" id="iidwatchwbif" style="display:none;">
      <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;World Bank Ineligible Firms:</td>
      <td width="25%" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_WBIF" class="checkIIDwatchlists" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IID_WATCHL_WBIF>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_IID_WATCHL_WBIF" id="DISABLE_IID_WATCHL_WBIF" onclick="uncheckAllWatchButton()" class="uncheckIIDwatchlists" VALUE='1' <TMPL_IF NAME=DISABLE_IID_WATCHL_WBIF>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
        </table>
      </td>
    </tr>
  </TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_IF>
