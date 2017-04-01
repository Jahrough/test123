<!-- begin manage_chat.tpl -->
<div class="myaccount-section-title">Manage Chat Contacts</div>
<div class="section">
    <div class="section-row" style="padding:15px;">
        <TMPL_IF CHAT_MESSAGE>
            <div class="section-row left"">
                <span id="chaterrormessage" class="bold"><TMPL_VAR NAME="CHAT_MESSAGE"></span>
            </div>
        <TMPL_ELSE>
        <div>
            <fieldset style="width:62%;">
                <div class="mgb15 left w100pc">
                    <legend>Add Contact</legend>
                </div>
                <div class="section-row child-divs-left left">
                    <div>
                        <label for="CONTACT_TO_ADD"><b>Contact ID:</b></label>
                    </div>
                    <div class="mgl10 mgb15">
                        <input id="CONTACT_TO_ADD" type="text" maxlength="30" value="" size="25" name="CONTACT_TO_ADD"/>
                    </div>
                </div>
                <div class="section-row child-divs-center left">
                    <div>
                        <a id="addchatcontact" class="btn red-btn" href="#">Add</a>
                    </div>
                    <div>
                        <a id="canceladdchatcontact" class="btn grey-btn" href="#">Cancel</a>
                    </div>
                </div>
            </fieldset>
        </div>
        <div>
            <fieldset style="width:62%;">
                <div class="mgb15 left w100pc">
                    <legend>Delete Contact</legend>
                </div>
                <div class="section-row child-divs-left left" style="<TMPL_UNLESS CHAT_ACCEPTED_USER_LIST>display:none;</TMPL_UNLESS>">
                    <div>
                        <label for="deletecontactoptions"><b>Contact ID:</b></label>
                    </div>
                    <div class="mgl10 mgb15">
                        <select id="deletecontactoptions" name="CONTACT_TO_DELETE">
                            <option value="">Choose Contact</option>
                            <TMPL_LOOP CHAT_ACCEPTED_USER_LIST>
                                <option value="<TMPL_VAR BUDDY_USERID>"><TMPL_VAR NAME="FULL_NAME"> (<TMPL_VAR NAME="BUDDY_NAME">)</option>
                            </TMPL_LOOP>
                        </select>
                    </div>
                </div>
                <div class="section-row child-divs-center left" style="<TMPL_UNLESS CHAT_ACCEPTED_USER_LIST>display:none;</TMPL_UNLESS>">
                    <div>
                        <a id="deletechatcontact"class="btn red-btn" href="#">Delete Contact</a>
                    </div>
                    <div>
                        <a id="canceldeletechatcontact"class="btn grey-btn" href="#">Cancel</a>
                    </div>
                </div>

                <TMPL_UNLESS CHAT_ACCEPTED_USER_LIST>
                    <div class="section-row left"">
                        <span id="emptybuddylist" class="bold">No users in your list yet</span>
                    </div>
                </TMPL_UNLESS>

            </fieldset>
        </div>
        <div>
            <fieldset style="width:62%;">
                <div class="mgb15 left w100pc">
                    <legend>Pending Invitations</legend>
                </div>
                 <TMPL_IF CHAT_PENDING_INVITE_LIST>
                    <div class="section-row child-divs-center left mgb15">
                        <ul id="pending_list" style="margin:0;padding:0;">
                            <TMPL_LOOP CHAT_PENDING_INVITE_LIST>
                                <li id="pending_<TMPL_VAR USERID>" class="left w100pc mgb10" style="list-style-type: none;">
                                    <div class="section-row child-divs-left">
                                        <div class="chatinvite contactlogin" id="<TMPL_VAR LOGINID>_invite">
                                            <b><TMPL_VAR NAME="LOGINID"></b>
                                        </div>
                                        <div class="chatinvite contactfullname mgl10" id="<TMPL_VAR FULL_NAME>_<TMPL_VAR LOGINID>_invite">
                                            <b><TMPL_VAR NAME="FULL_NAME"></b>
                                        </div>
                                        <div class="mgl10">
                                            <span>Invitation will expire on <TMPL_VAR NAME="TIMESTAMP"></span>
                                        </div>
                                        <div class="mgl10 right">
                                            <a name="acceptchatinvite" id="<TMPL_VAR USERID>_accept" class="btn grey-btn" href="#">Accept</a>
                                        </div>
                                        <div class="mgl10 right">
                                            <a name="declinechatinvite" id="<TMPL_VAR USERID>_decline" class="btn grey-btn" href="#">Decline</a>
                                        </div>
                                    </div>
                                </li>
                            </TMPL_LOOP>
                        </ul>
                    </div>
                <TMPL_ELSE>
                    <div class="section-row left"">
                        <span id="emptybuddylist" class="bold">There are no pending invitations</span>
                    </div>
                </TMPL_IF>

            </fieldset>
        </div>
        </TMPL_IF>
    </div>
</div>

<!-- end manage_chat.tpl -->
