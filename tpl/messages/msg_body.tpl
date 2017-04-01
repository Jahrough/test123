<TMPL_IF ENABLE_V3>
</div>

<TMPL_IF NAME="SKIP_ALL">
    <div align="center" class="largefont1">
        You have <TMPL_VAR NAME="SKIP_ALL"> announcements.
    </div>
</TMPL_IF>


    <div style="float:left;width:100%;margin-bottom:20px;">
      <div>

        <TMPL_IF NAME="BROWSE">

            <TMPL_IF NAME="PREVIOUS">
                <div class="myaccount-btn red-btn" name="accept" onclick="this.disabled=true;send_event('MESSAGE/SHOW_PREVIOUS');" style="float:left;">< Previous Announcement</div>
            </TMPL_IF>

            <TMPL_IF NAME="NEXT">
                <div class="myaccount-btn red-btn" name="accept" onclick="this.disabled=true;send_event('MESSAGE/SHOW_NEXT');" style="float:left;">Next Announcement ></div>
            </TMPL_IF>

            <div class="myaccount-btn red-btn" name="accept" onclick="this.disabled=true;send_event('SEARCH/SHOW_MENU');" style="float:left;">Main Menu</div>

            <TMPL_UNLESS FCOL>
            <TMPL_UNLESS NAME="SA_DISABLED">
                <TMPL_IF NAME="SA">
                    <TMPL_IF NAME="ADMIN_ANNOUNCEMENT">
                        <div class="myaccount-btn red-btn" name="accept" onclick="this.disabled=true;send_event('MESSAGE/SHOW_WELCOME');" style="float:left;">User Announcements</div>
                    <TMPL_ELSE>
                        <div class="myaccount-btn red-btn" name="accept" onclick="this.disabled=true;send_event('MESSAGE/SHOW_ADMIN_WELCOME');" style="float:left;">Administrator Announcements</div>
                    </TMPL_IF>
                </TMPL_IF>
            </TMPL_UNLESS>
            </TMPL_UNLESS>

        <TMPL_ELSE>
            <div class="myaccount-btn red-btn" name="accept" onclick="this.disabled=true;send_event('<TMPL_IF NAME=MSG_ID>MESSAGE/MARK_READ<TMPL_ELSE><TMPL_IF NAME="CONTINUE_EVENT"><TMPL_VAR NAME="CONTINUE_EVENT"><TMPL_ELSE>SEARCH/SHOW_MENU</TMPL_IF></TMPL_IF>');" style="float:left;">Continue</div>
        </TMPL_IF>


        <TMPL_IF NAME="SKIP_ALL">
            <div class="myaccount-btn red-btn" name="accept" onclick="this.disabled=true;send_event('MESSAGE/SKIP_ALL');" style="float:left;">Skip Announcement</div>
        </TMPL_IF>
            <div class="myaccount-btn darkgrey-btn" name="accept" onclick="printit();" style="float:left;">Print</div>


      </div>  
    </div>

<div>

<TMPL_ELSE>
            </div>
            </td>
            <td><img src="<TMPL_VAR NAME=IMGPATH>/rghtdate.gif" width="8" height="29" border="0"></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
<TMPL_UNLESS ENABLE_V2>
  <tr>
    <td class="headerseparator" height="2" align="left"><img alt="" border="0" height="2" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</TMPL_UNLESS>
  <tr height="32">
    <td height="32" valign="top" align="center" nowrap>
    <br>

<TMPL_IF NAME="SKIP_ALL">
<div align="center" class="largefont1">
You have <TMPL_VAR NAME="SKIP_ALL"> announcements.
</div><br>
</TMPL_IF>
<div align="center">

<TMPL_IF NAME="BROWSE">

<TMPL_IF NAME="PREVIOUS">
<input type="button" name="prevann" value="< Previous Announcement" onClick="this.disabled=true;send_event('MESSAGE/SHOW_PREVIOUS')">
</TMPL_IF>

<TMPL_IF NAME="NEXT">
&nbsp;<input type="button" name="nextann" value="Next Announcement >" onClick="this.disabled=true;send_event('MESSAGE/SHOW_NEXT')">
</TMPL_IF>

&nbsp;<input type="button" name="mainmenu" value="Main Menu" onClick="this.disabled=true;send_event('SEARCH/SHOW_MENU')">

<TMPL_UNLESS NAME="SA_DISABLED">
<TMPL_IF NAME="SA">
<TMPL_IF NAME="ADMIN_ANNOUNCEMENT">
&nbsp;<input type="button" name="userann" value="User Announcements" onClick="this.disabled=true;send_event('MESSAGE/SHOW_WELCOME')">
<TMPL_ELSE>
&nbsp;<input type="button" name="adminann" value="Administrator Announcements" onClick="this.disabled=true;send_event('MESSAGE/SHOW_ADMIN_WELCOME')">
</TMPL_IF>
</TMPL_IF>
</TMPL_UNLESS>

<TMPL_ELSE>
<input type="button" name="continue" value="Continue >" onClick="this.disabled=true;send_event('<TMPL_IF NAME=MSG_ID>MESSAGE/MARK_READ<TMPL_ELSE><TMPL_IF NAME="CONTINUE_EVENT"><TMPL_VAR NAME="CONTINUE_EVENT"><TMPL_ELSE>SEARCH/SHOW_MENU</TMPL_IF></TMPL_IF>')">
</TMPL_IF>

<TMPL_IF NAME="SKIP_ALL">
&nbsp;<input type="button" name="skip" value="Skip Announcements >>>" onClick="this.disabled=true;send_event('MESSAGE/SKIP_ALL')">
</TMPL_IF>

&nbsp;<input type="button" name="print" value=" Print " onClick="printit();">

    </div>
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td width="100%" valign="top" align="center">
        <table border="0" cellpadding="0" cellspacing="0" width="90%" height="297">
          <tr>
            <td colspan="3"><img src="<TMPL_VAR NAME=IMGPATH>/newfeat.gif" width="333" height="27" border="0"></td>
          </tr>
          <tr height="4">
            <th colspan="3" bgcolor="#444962" height="4" valign="top" align="left"><img src="<TMPL_VAR NAME=IMGPATH>/spacer13.gif" width="2" height="2" border="0"></th>
          </tr>
          <tr height="261">
            <td width="2" bgcolor="#444962" height="261" valign="top" align="left"><img src="<TMPL_VAR NAME=IMGPATH>/spacer13.gif" width="2" height="2" border="0"></td>
            <td width="100%" height="261" valign="top" align="left" bgcolor="<tmpl_if name="ADMIN_ANNOUNCEMENT">#ffffdd<tmpl_else>white</tmpl_if>">

		<TMPL_IF NAME="NEW_ADMIN_INSERT">
		    <TMPL_INCLUDE NAME="messages/msg_new_admin_insert.tpl" >
		</TMPL_IF>
	    <TMPL_UNLESS LE>
		<TMPL_IF NAME="GRAPHVIEW_INSERT">
		    <TMPL_INCLUDE NAME="messages/msg_graphview_insert.tpl" >
		</TMPL_IF>
	    </TMPL_UNLESS>
		<TMPL_IF NAME="REP_MANAGER_INSERT">
		    <TMPL_INCLUDE NAME="messages/msg_rep_manager_insert.tpl" >
		</TMPL_IF>
		<TMPL_IF NAME="SECURITY_QUESTION_INSERT">
		    <TMPL_INCLUDE NAME="messages/msg_security_question_insert.tpl" >
		</TMPL_IF>
		<TMPL_IF NAME="PHONES_PLUS_INSERT">
		    <TMPL_INCLUDE NAME="messages/msg_phones_plus_insert.tpl" >
		</TMPL_IF>
		<TMPL_IF NAME="PHONE_FEEDBACK_INSERT"> 
		    <TMPL_INCLUDE NAME="messages/msg_phone_feedback_insert.tpl" >
		</TMPL_IF>
		<TMPL_IF NAME="DISCOUNT_Q42008_INSERT">
		    <TMPL_INCLUDE NAME="messages/msg_discount_q42008_insert.tpl" >
		</TMPL_IF>
</TMPL_IF>
