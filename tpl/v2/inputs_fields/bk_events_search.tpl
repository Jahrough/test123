<!DOCTYPE html>
<!-- begin inputs_fields/bk_events_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td>
            <input type="hidden" name=COURT_LINK_TYPE_<TMPL_VAR NAME="COURT_LINK_TYPE"> value=1 class="resettable">
            <input type="hidden" name=STREET_ADDRESS value="" class="resettable">
            <input type="hidden" name=CITY value="" class="resettable">
            <input type="hidden" name=PHONE value="" class="resettable">
            <input type="hidden" name=UNIQUEID value="" class="resettable">
            <input type="hidden" name="TOTAL_RECORDS" value="<TMPL_VAR NAME=TOTAL_RECORDS>" class="resettable">
            <input type="hidden" name="EVENT_SORT" value="<TMPL_VAR NAME=EVENT_SORT>" class="resettable">
            <input type="hidden" name="PAGE_EVENTS" value="<TMPL_VAR NAME="PAGE_EVENTS">"  class="resettable">
            <input type="hidden" name="START_RECORD" value="<TMPL_VAR NAME="START_RECORD">"  class="resettable">
            <input type="hidden" name="END_RECORD" value="<TMPL_VAR NAME="END_RECORD">"  class="resettable">
            <input type="hidden" name="PAGING" value="<TMPL_VAR NAME="PAGING">"  class="resettable">
            <input type="hidden" name="EVENT_SHOW_NEXT" value="<TMPL_VAR NAME="EVENT_SHOW_NEXT">" class="resettable">
            <input type="hidden" name="EVENT_SHOW_PREV" value="<TMPL_VAR NAME="EVENT_SHOW_PREV">" class="resettable">
            <input type="hidden" name="EVENT_MAX_ITEMS" value="<TMPL_VAR NAME="EVENT_MAX_ITEMS">" class="resettable">
            <input type="hidden" name="EXPORT_DATA" value="<TMPL_VAR NAME="EXPORT_DATA">"  class="resettable">
            
            <input type="hidden" name="SORT" value ="">
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="BATCH_FILENAME">Batch Area</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs" colspan="1">
                    <select name="BATCH_FILENAMES" tabindex="1">
                        <TMPL_LOOP NAME=BATCH_FILENAMES_LOOP>
                            <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME="filename">"><TMPL_VAR NAME="filename"></option>
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
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="2" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
     <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Business Name</label></b></td>
            <td>&nbsp;<b><label for="FEIN">Tax ID</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="6" size="25" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FEIN" id="FEIN" tabindex="7" size="20" maxlength="10" value="<TMPL_VAR NAME=FEIN>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="CASE_NUMBER">Abbreviated Case Number</label></b><a href="javascript:void(0);" onClick="abbrev_case_number_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="FULL_CASE_NUMBER">Full Case Number</label></b><a href="javascript:void(0);" onClick="full_case_number_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" id="CASE_NUMBER" tabindex="8" size="20" maxlength="11" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
            <td class="nsinputs"><input type="text" name="FULL_CASE_NUMBER" id="FULL_CASE_NUMBER" tabindex="8" size="20" maxlength="18" value="<TMPL_VAR NAME=FULL_CASE_NUMBER>"></td>
          </tr>
          <tr>
            <td>&nbsp;<b><label for="CHAPTER">Chapter</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs" colspan="1">
                    <select name="CHAPTER" id="CHAPTER" tabindex="9">
                        <TMPL_LOOP NAME=CHAPTER_LOOP>
                            <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME="VAL">"><TMPL_VAR NAME="NAME"></option>
                        </TMPL_LOOP>
                    </select>
            </td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="10" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="11" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="ACCOUNT_NUMBER">Account Number</label></b></td>
            <td>&nbsp;<b><label for="CLIENT_FIELD">Client Field</label></b></td>
          </tr>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="ACCOUNT_NUMBER" id="ACCOUNT_NUMBER" tabindex="12" size="30" maxlength="30" value="<TMPL_VAR NAME=ACCOUNT_NUMBER>"></td>
            <td class="nsinputs"><input type="text" name="CLIENT_FIELD" id="CLIENT_FIELD" tabindex="13" size="20" maxlength="20" value="<TMPL_VAR NAME=CLIENT_FIELD>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="EVENT_NUM_NAM">Event Category/Number/Event Name</td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="EVENT_NUM_NAM" id="EVENT_NUM_NAM" tabindex="14" size="80" maxlength="80" value="<TMPL_VAR NAME=EVENT_NUM_NAM>"></td>
          </tr>
        </table>
        </td>
      </tr>

<!-- Sold Date range -->
      
      <tr>
        <td valign="top" align="left">
	        <table cellspacing="0" cellpadding="2" id="noborder">
                <tr>
	                <td>&nbsp;<b><label for="EVENT_DATE_SOLD">Bankruptcy Date Sold</td>
	            </tr>
	            <tr>
                    <td>
                        <select name="SoldDateDescription" size="1" id="SoldDateDescription" onchange="hideSoldDate('SoldDateDisplay');" tabindex="15"  >
                            <option value="0"<TMPL_IF solddate_>selected<TMPL_ELSE><TMPL_IF solddate_0>selected</TMPL_IF></TMPL_IF>>All Available Dates</option>
                            <option value="1"<TMPL_IF solddate_1>selected</TMPL_IF>>Date is...</option>
                            <option value="2"<TMPL_IF solddate_2>selected</TMPL_IF>>Date is between...</option>
                        </select>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <div style="display: none;" id="SoldDateDisplay">
                            <Table cellspacing="0" cellpadding="0" id="noborder">
                                <tr>
                                    <td>
                                        <td class="nsinputs">
                                            <input onClick="displayDatePicker('SOLD_START_DATE','below');" type=text name=SOLD_START_DATE id="sold_start_date" value="<TMPL_VAR NAME=SOLD_START_DATE>" size="10" maxlength=10>&nbsp;<spanclass="smallfont1">(MM/DD/YYYY)</span>&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <td class="nsinputs">
					    <div id="SOLD_END">
                                            <input onClick="displayDatePicker('SOLD_END_DATE','below');" type=text name=SOLD_END_DATE id="sold_end_date" value="<TMPL_VAR NAME=SOLD_END_DATE>" size="10" maxlength=10>&nbsp;<spanclass="smallfont1">(MM/DD/YYYY)</span>&nbsp;&nbsp;
					    </div>
                                    </td>
                                </tr>
                            </table>
                        </div> 
                    </td>
                </tr>
            </td>
            </table>
        </td>
      </tr>

<!-- File Date range -->
      <tr>
        <td valign="top" align="left">
	        <table cellspacing="0" cellpadding="2" id="noborder">
                <tr>
	                <td>&nbsp;<b><label for="EVENT_DATE_FILED">Bankruptcy Date Filed</td>
	            </tr>
	            <tr>
                    <td>
                        <select name="FileDateDescription" size="1" id="FileDateDescription" onchange="hideFileDate('FileDateDisplay');" tabindex="16"  >
                            <option value="0"<TMPL_IF filedate_>selected<TMPL_ELSE><TMPL_IF solddate_0>selected</TMPL_IF></TMPL_IF>>All Available Dates</option>
                            <option value="1"<TMPL_IF filedate_1>selected</TMPL_IF>>Date is...</option>
                            <option value="2"<TMPL_IF filedate_2>selected</TMPL_IF>>Date is between...</option>
                        </select>
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <div style="display: none;" id="FileDateDisplay">
                            <Table cellspacing="0" cellpadding="0" id="noborder">
                                <tr>
                                    <td>
                                        <td class="nsinputs">
                                            <input onClick="displayDatePicker('FILE_DATE_START','below');" type=text name=FILE_DATE_START id="file_date_start" value="<TMPL_VAR NAME=FILE_DATE_START>" size="10" maxlength=10>&nbsp;<spanclass="smallfont1">(MM/DD/YYYY)</span>&nbsp;&nbsp;
                                    </td>
                                    <td>
                                        <td class="nsinputs">
                                            <div id="FILED_END">
                                            <input onClick="displayDatePicker('FILE_DATE_END','below');" type=text name=FILE_DATE_END id="file_date_end" value="<TMPL_VAR NAME=FILE_DATE_END>" size="10" maxlength=10>&nbsp;<spanclass="smallfont1">(MM/DD/YYYY)</span>&nbsp;&nbsp;
                                            </div>
                                    </td>
                                </tr>
                            </table>
                        </div> 
                    </td>
                </tr>
            </table>
        </td>
      </tr>

<!-- end inputs_fields/bk_events_search.tpl -->
