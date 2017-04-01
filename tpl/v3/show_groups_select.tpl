<!DOCTYPE html>
<html>
    <head>
    <title>Select Admin Group</title>
        <TMPL_INCLUDE NAME="includes_info.tpl">
	<script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>

    <script type="text/javascript">
	function update_group_selection()
	{
		var group_list = document.forms[0].GROUPS;
		var selected_group = group_list.options[group_list.selectedIndex].value;
		//alert('GROUP = <' + selected_group + '>');
		// validate the rest of the form
		// skip validation for netscape (done at serverside)
		if (!document.getElementById || validate()) {
		send_event('MYACCOUNT/UPDATE_GROUP_SESSION');
		}
	}
    </script>
    </head>
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="myaccount/header_info.tpl">

        <form name="group" action="<TMPL_VAR NAME='ACTION'>"
          method="post" onsubmit="return validate();">
          <TMPL_INCLUDE NAME="common_hidden_input.tpl">
          <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
          <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
          <input type="hidden" name="EVENT" value="">

            <div class="txtWrapper w100pc">
            <div id="txtCon">
                <div class="mfa-header">Please Select A Group</div>
                <br/>


       <table border="0" cellpadding="1" cellspacing="0" class="myaccountborder" style="margin: 0 auto">
        <tr>
          <td align="center">
          <table border="0" cellpadding="10" cellspacing="0" width="800" class="myaccountalert">
          <TMPL_IF NAME=ERROR_MESSAGE>
            <tr>
                <td align=center class="errormessage">
                <span class="errormessage"><TMPL_VAR NAME="ERROR_MESSAGE">&nbsp;</span>
                <br>
                </td>
            </tr>
          </TMPL_IF>

            <tr>
              <td align=center class="myaccountlabel">
			    <label for="groups">Please select the group you want to work in. <TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP>By selecting "No Group" you will be logged in using your default ID settings.</TMPL_UNLESS></label>
               <br>
              </td>
            </tr>

            <tr>
              <td align=center>
                    <select id="groups" name="GROUPS" tabindex="12">
                            <TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP><option value="0">No Group</option></TMPL_UNLESS>
                        <TMPL_LOOP NAME="GROUPS">
                            <option<TMPL_IF NAME='GROUP_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='GROUP_ID'>"><TMPL_VAR NAME='GROUP_NAME'></option>
                        </TMPL_LOOP>
                    </select>          
              </td>
            </tr>

            <tr>
              <td align="center">
                   <a class="myaccount-btn red-btn" name="accept" href="javascript:send_event('MYACCOUNT/UPDATE_GROUP_SESSION');">Save</a>                      
              </td>
            </tr>

          </table>
          </td>
        </tr>
      </table>



                    </div>
                </div>
            </div>
       
        </form>
    </body>
</html>
