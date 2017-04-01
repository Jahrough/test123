<!-- begin v2/inputs_fields/contact_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
<TMPL_IF SHOW_LINKID>
            <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
            <td><a href="javascript:void(0);" onclick="lexid_tip();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
</TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" autocomplete="off" tabindex="1" size="11" maxlength="11" value="<TMPL_VAR SSN>"/><input type="hidden" name="POP_RECID" id="RECID" value="<TMPL_VAR RECID>"/></td>
            <TMPL_IF SHOW_LINKID><td colspan="2" class="nsinputs">
              <input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="2" size="14" maxlength="25" value="<TMPL_VAR UNIQUEID>"/>
              <input id="LEXID" type="hidden" name="LEXID" value=""/>
            </td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR LAST_NAME>" maxlength=255 onblur="this.value=this.value.toUpperCase()"/></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR FIRST_NAME>" maxlength=255 onblur="this.value=this.value.toUpperCase()"/></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" size="10" tabindex="5" maxlength="255" value="<TMPL_VAR MI>" onblur="this.value=this.value.toUpperCase()"/></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onclick="state_list('STATE');"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="6" size="25" value="<TMPL_VAR STREET_ADDRESS>" maxlength=50 onblur="this.value=this.value.toUpperCase()"/></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="7" size="15" value="<TMPL_VAR CITY>" maxlength=255 onblur="this.value=this.value.toUpperCase()"/></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="8" size="3" maxlength="2" value="<TMPL_VAR STATE>" onblur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="9" size="5" maxlength="5" value="<TMPL_VAR ZIP>"/></td>
          </tr>
        </table>
        </td>
      </tr>
      
    <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="PHONE">Phone</label></b><a href="javascript:void(0);" onclick="phone_tip_10();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
            <td>&nbsp;<b><label for="EMAIL">Email</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs" colspan="1"><input type="text" name="PHONE" id="PHONE" tabindex="10" size="12" maxlength="14" value="<TMPL_VAR PHONE>"/></td>
            <td  class="nsinputs"><input type="text" name="EMAIL" id="EMAIL" tabindex="11" size="50" maxlength="75" onblur="this.value=this.value.toUpperCase()" value="<TMPL_VAR EMAIL>" /></td>
          </tr>
        </table>
        </td>
      </tr>

<style>

  #searchResultsTblHeader {
    border-spacing: 0;
  }

  #searchResultsTblAlt{
    border-spacing: 0;
    margin-bottom: 0;
    color: #333;
    font-family: Verdana, Arial;
  }

  #searchResultsTblAlt td{
    padding: 3;
  }

  .hiddenRow{
    display: none;
  }

</style>

<script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint.js"></script>
<script  type="text/javascript">

window.Accurint.sessionId = '<TMPL_VAR SESSION_ID>';
window.Accurint.csrf_token = '<TMPL_VAR CSRF_TOKEN>';
window.Accurint.miscAction = '<TMPL_VAR ACTION_MISC>';
window.Accurint.reportAction = '<TMPL_VAR ACTION_REPORT>';
window.Accurint.fromDecisionPopup = '<TMPL_VAR DECISION_POPUP>';

</script>
<script type="text/javascript" src="<TMPL_VAR JSPATH>/Accurint/ContactPlus.js"></script>
<!-- end v2/inputs_fields/contact_search.tpl -->
