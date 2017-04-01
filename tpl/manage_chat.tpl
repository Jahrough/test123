<!-- begin manage_chat.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td align="center">
	<br>

        <span class="myaccounttitle">Manage Chat Contacts</span>
        <br/><br/>
        <table class="myaccountbody" width="620" cellspacing="0" cellpadding="0" border="0">
            <TMPL_IF CHAT_MESSAGE>
            <tr>
                <td colspan=2 class="errormessage" ><br/><TMPL_VAR NAME="CHAT_MESSAGE"></td>
            </tr>
            <TMPL_ELSE>
            <tr>
                <td>
                <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
                    <tr>
                        <td valign="top">
                            <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
                                <tr>
                                    <td class="smallfont1" colspan="2">
                                        <span class="myaccountlabel">Add Contact:</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="unifont1" width="15%" valign="middle" nowrap="1" align="right">
                                    <b>Contact ID:</b>
                                    </td>
                                    <td width="15%">
                                    <input class="nsinputs" type="text" maxlength="30" value="" size="25" name="CONTACT_TO_ADD">
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td height="40" align="left">
                                    <img width="74" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/dynamic_desktop/chatcon_cancel.png" name="canceladdchatcontact">
                                    <img width="74" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/dynamic_desktop/chatcon_add.png" name="addchatcontact">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr><td><br/><br/></td></tr>
            <tr>
                <td>
                <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
                    <tr>
                        <td valign="top">
                            <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
                                <tr>
                                    <td class="smallfont1" colspan="2">
                                        <span class="myaccountlabel">Delete Contact:</span>
                                    </td>
                                </tr>
                                <tr>
                                <td class="smallfont1" colspan="2">
                                    <div style="text-align:center;">
                                    <span class="myaccountlabel" id="emptybuddylist" style="<TMPL_IF CHAT_ACCEPTED_USER_LIST>display:none;</TMPL_IF>">No users in your list yet</span>
                                    </div>
                                </td>
                                </tr>
                                <tr id="buddylist_delete_options" style="<TMPL_UNLESS CHAT_ACCEPTED_USER_LIST>display:none;</TMPL_UNLESS>">
                                    <td colspan="2">
                                    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
                                    <tr>
                                    <td class="unifont1" width="15%" valign="middle" nowrap="1" align="right">
                                    <b>Contact ID:</b>
                                    </td>
                                    <td width="15%">
                                        <select class="unifont1" id="deletecontactoptions" name="CONTACT_TO_DELETE">
                                            <option value=""> Choose Contact</option>
                                            <TMPL_LOOP CHAT_ACCEPTED_USER_LIST>
                                            <option value="<TMPL_VAR BUDDY_USERID>"> <TMPL_VAR NAME="FULL_NAME"> (<TMPL_VAR NAME="BUDDY_NAME">)</option>
                                            </TMPL_LOOP>
	                                </select>
                                    </td>
                                    </tr>
                                    <tr>
                                    <td> </td>
                                    <td height="40" align="left">
                                    <img width="74" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/dynamic_desktop/chatcon_cancel.png" name="canceldeletechatcontact">
                                    <img width="74" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/dynamic_desktop/chatcon_delete.png" name="deletechatcontact">
                                    </td>
                                    </tr>
                                    </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr><td><br/><br/></td></tr>
            <tr>
                <td>
                <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
                    <tr>
                        <td valign="top">
                            <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
                                <tr>
                                    <td class="smallfont1" colspan="5">
                                        <span class="myaccountlabel">Pending Invitations:</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div style="text-align:center;">
                                        <span class="myaccountlabel" id="nopendinginvites" style="<TMPL_IF CHAT_PENDING_INVITE_LIST>display:none;</TMPL_IF>">There are no pending invitations</span>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                <td>
                                    <ul id="pending_list">
                                    <TMPL_LOOP CHAT_PENDING_INVITE_LIST>
                                    <li id="pending_<TMPL_VAR USERID>">
                                    <table><tr>
                                    <td class="unifont1 chatinvite contactlogin" id="<TMPL_VAR LOGINID>_invite" width="18%" valign="middle" nowrap="1" align="left">
                                    <b><TMPL_VAR NAME="LOGINID"></b>
                                    </td>
                                    <td class="unifont1 chatinvite contactfullname" id="<TMPL_VAR FULL_NAME>_<TMPL_VAR LOGINID>_invite" width="18%" valign="middle" nowrap="1" align="left">
                                    <b><TMPL_VAR NAME="FULL_NAME"></b>
                                    </td>
                                    <td class="smallfont1" width="40%" valign="middle" align="left" nowrap="1">
                                        &nbsp;Invitation will expire on <TMPL_VAR NAME="TIMESTAMP">
                                    </td>
                                    <td height="40" align="center">
                                    <img width="74" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/dynamic_desktop/chatcon_deny.png" name="declinechatinvite" id="<TMPL_VAR USERID>_decline">
                                    </td>
                                    <td height="40" align="center">
                                    <img width="74" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/dynamic_desktop/chatcon_allow.png" name="acceptchatinvite" id="<TMPL_VAR USERID>_accept">
                                    </td>
                                    </tr></table>
                                    </li>
                                    </TMPL_LOOP>
                                    </ul>
                                </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
            <tr><td><br/><br/></td></tr>
            </TMPL_IF>
        </table>

        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<br>
<!-- end manage_chat.tpl -->
