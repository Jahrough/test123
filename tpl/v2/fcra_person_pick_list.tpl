<!-- begin fcra_person_pick_list.tpl -->
<TMPL_IF NAME="PICK_LIST_LOOP">
<table id="searchResultsTblHeader" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<th id="HdrResultL" width="1%">&nbsp;</th>
<th id="tblHdr" width="4%"></th>
<th id="tblHdr" width="20%">Full Name</th>
<th id="tblHdr" width="20%">SSN</th>
<th id="tblHdr" width="20%">City/State</th>
<th id="tblHdr" width="20%">Next Steps</th>
<th id="HdrResultR" width="1%">&nbsp;</th>
</tr>
</table>                 

<script language="JavaScript">
function fcra_send_event(evt, did) {
    validate();
    try {
    var my_form = document.forms[0];
    my_form.UNIQUEID.value = did;
    create_input(my_form, 'hidden', 'VALID_UNIQUEID', 1);
    $('wrapper').scrollTo();
    showwaitnew();
    flip_ids();
    disable_buttons('BUTTON');
    send_event(evt);
    } catch (exp) {
        alert('exp: \n'+exp+'\n It appears UNIQUEID is not available');
    }
    var picklist_rows = document.getElementsByClassName('picklist-row');
    for (var i=0; i < picklist_rows.length; i++) {
        picklist_rows[i].onclick=null;
    }
}
</script>

<!-- begin pick list table -->

<TMPL_LOOP PICK_LIST_LOOP>
<table id="searchResultsTblAlt" border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-bottom:15px">
    <tr valign="top" class="picklist-row <TMPL_IF NAME="ODD_ROW">searchresultsrowodd<TMPL_ELSE>searchresultsroweven</TMPL_IF>" onclick="javascript:fcra_send_event('<TMPL_VAR NAME=SEARCH_EVENT>', '<TMPL_VAR NAME="LINK_ID">');" style="cursor:pointer;">
    <!--
    <tr valign="top" class="<TMPL_IF NAME="ODD_ROW">searchresultsrowodd<TMPL_ELSE>searchresultsroweven</TMPL_IF>" style="cursor:pointer;" ondragstart="return false;" onselectstart="return false;" onmousedown="return false;" >
    -->
<td width="1%"></td>
<td width="4%"><TMPL_VAR NAME="COUNTER">.</td>
<td width="20%">
    <TMPL_IF NAME="NAMES">
        <TMPL_LOOP NAMES>
<strong><TMPL_VAR NAME="LAST_NAME">, <TMPL_VAR NAME="FIRST_NAME"> <TMPL_VAR NAME="MIDDLE_NAME"></strong><br />
        </TMPL_LOOP>
    </TMPL_IF>
<br />
<TMPL_IF NAME="DOBS">
<TMPL_LOOP DOBS>
    DOB: <TMPL_VAR NAME="DOB"><br />
</TMPL_LOOP>
</TMPL_IF>
</td>
<td width="20%">
<TMPL_IF NAME="SSNS">
<TMPL_LOOP SSNS>
<strong><TMPL_VAR NAME="SSN"></strong><br/>
</TMPL_LOOP>
</TMPL_IF>
<br />LexID: <TMPL_VAR NAME="LINK_ID">
</td>
<td width="20%">
<TMPL_IF NAME="ADDRESSES">
        <TMPL_LOOP ADDRESSES>
<TMPL_VAR NAME="CITY">, <TMPL_VAR NAME="STATE"> <br />
        </TMPL_LOOP>
</TMPL_IF>
</td>
<td width="20%" valign="middle">
<span style="color: #0066CC;">Run Search &raquo;</span>
<!--
<a class="fcra_subject_pick" href="javascript:fcra_send_event('<TMPL_VAR NAME=SEARCH_EVENT>', '<TMPL_VAR NAME="LINK_ID">');">Run Search &raquo;</a>
-->
</td>
<td width="1%">&nbsp;</td>
</tr>
</table>
</TMPL_LOOP>
</TMPL_IF>

<!-- end pick list table -->

<span class="grey"></span>

<div id="clear"></div>
<!-- end fcra_person_pick_list.tpl -->

