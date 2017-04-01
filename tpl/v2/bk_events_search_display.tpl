<!-- begin bk_events_search_display.tpl -->
<TMPL_IF NAME="DISPLAY_RECS_LOOP">
<table id="searchResultsTblHeader" border="0" cellpadding="0" cellspacing="0" width="100%">
<tr>
<th id="HdrResultL" width="1%">&nbsp;</th>
<th id="tblHdr" width="15%"><select name="EVENT_SORT" id="EVENT_SORT" onChange=set_sort_rule()>
                        <TMPL_LOOP NAME=EVENT_SORT_LOOP>
                            <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME="VAL">"><TMPL_VAR NAME="NAME"></option>
                        </TMPL_LOOP>
                    </select></th>
<th id="tblHdr" width="25%">Case Information</th>
<th id="tblHdr" width="40%">Event Information</th>
<th id="tblHdr" width="15%">Get Detail</th>
<th id="HdrResultR" width="1%">&nbsp;</th>
</tr>
</table>                 


<!-- begin Display Event recs table -->
<TMPL_LOOP DISPLAY_RECS_LOOP>
<table id="searchResultsTbl" border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-bottom:15px">
<td width="1%"></td>
<td width="15%"><TMPL_VAR NAME="COUNTER">.</td>
<td width="25%">
    <INPUT type=hidden NAME="TMSID" VALUE="<TMPL_VAR NAME="TMSID">">
    <TMPL_IF NAME="IS_COMP">
        Company: <TMPL_VAR NAME = "NAME_FULL">
    <TMPL_ELSE>
        <TMPL_VAR NAME="NAME_FIRST"> <TMPL_VAR NAME="NAME_LAST">
    </TMPL_IF><br />
    Abbreviated Case Number: <TMPL_VAR NAME="CASE_NUMBER"><br />
    Full Case Number: <TMPL_VAR NAME="FULL_CASE_NUMBER"><br />
    Chapter: <TMPL_VAR NAME="CHAPTER"> <br />
    State: <TMPL_VAR NAME = "STATE"><br />
    Acct #: <TMPL_VAR NAME="CUSTACCT"> <br />
    Client Field: <TMPL_VAR NAME="client_field">
</td>
<td width="40%">
    Date: <TMPL_VAR NAME = "event_date"><br />
    Number: <TMPL_IF ln_docket><a href="<TMPL_VAR NAME=rec_docket>" alt="" title="LN Docket Report"><TMPL_VAR NAME = "EVENT_NUMBER"></a><TMPL_ELSE><TMPL_VAR NAME = "EVENT_NUMBER"></TMPL_IF><br />
    Category: <TMPL_IF NAME="IS_VIEWED">
                        <font color="green">
                    </TMPL_IF>
                    <TMPL_VAR NAME = "EVENT_CATEGORY">
                    <TMPL_IF NAME="IS_VIEWED">
                        </font>
                    </TMPL_IF>
	 		<br />
    Event Name: <TMPL_VAR NAME = "EVENT_DESCRIPTION"><br />
    Name Found? <TMPL_VAR NAME="name_found">
</td>
<td width="15%" valign="middle">
   <TMPL_IF NAME="date_viewed">
       Date Viewed: <TMPL_VAR NAME="date_viewed"><br />
    </TMPL_IF>
        <TMPL_IF NAME="IS_VIEWED">
            Viewed By: <TMPL_VAR NAME="WHO_VIEWED">
            <br />
            <br />
        </TMPL_IF>
        <TMPL_IF ln_docket>
            <span style="color: #0066CC;">
                <a href=<TMPL_VAR NAME = "full_lndocket">>LN Docket</a>
            </span>
        <TMPL_ELSE>
            LN Docket
        </TMPL_IF>
</td>
<td width="1%">&nbsp;</td>
</tr>
</table>
</TMPL_LOOP>

<TMPL_IF NAME="RECORD_COUNT">
    <span class="grey">
        Records: <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF>
    </span>
    <br />
</TMPL_IF>

<span class="grey">
    <TMPL_IF NAME="PAGES_EVENTS">Result Page:&nbsp;
        <TMPL_IF NAME=PREV_PAGE_EVENTS>
            <a href="javascript:showwaitnew();javascript:set_nextpage_search_events(0,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR NAME=PREV_PAGE_EVENTS>)"><img border="0"  width="6" height="8" src="<TMPL_VAR NAME=IMGPATH>/ico_left_arro.gif" alt="Previous"></a>
        </TMPL_IF>
        <TMPL_LOOP PAGING_EVENTS>
            <TMPL_IF NAME="NO_LINK">
				   <TMPL_VAR NAME = "OUTPUT">
            <TMPL_ELSE>
                <a href="javascript:showwaitnew();javascript:set_nextpage_search_events(0,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR NAME=OUTPUT>)"><TMPL_VAR NAME="OUTPUT"></a>
            </TMPL_IF>
        </TMPL_LOOP>
        <TMPL_IF NAME="SHOW_ALL">
            <TMPL_IF NAME=NEXT_PAGE_EVENTS>
                <a href="javascript:showwaitnew();javascript:set_nextpage_search_events(0,'<TMPL_VAR SEARCH_NAME>',<TMPL_VAR NAME=NEXT_PAGE_EVENTS>)"><img border="0" width="6" height="8" src="<TMPL_VAR NAME=IMGPATH>/ico_right_arro.gif" alt="Next"></a>
            </TMPL_IF>
        </TMPL_IF>
    </TMPL_IF> 
</span>

<table width="100%">
    <tr>
        <td align="right" width="85%" class="unifont1" >
            <a href="javascript:export_bk_events();"><img src="<TMPL_VAR IMGPATH>/ico_excel.gif" alt="" height="20" width="20"/>Export to Excel</a>
        </td>
    </tr>
</table>

</TMPL_IF>
<!-- end Display Event recs table -->


<span class="grey"></span>
    
<div id="clear"></div>
<!-- end bk_events_search_display.tpl -->
