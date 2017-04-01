<!-- begin manage_account_sitekey.tpl -->
<TMPL_IF SA_DISABLED>
  <TMPL_INCLUDE NAME="myaccount/sa_disabled_message.tpl">
<TMPL_ELSE>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
<div class="myaccount-section-title">Manage Secure Login Image</div>
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row side-pd150">
            <fieldset>
                <table width="856">
                    <TMPL_IF NAME="SHOW_SEC_Q">
                        <TMPL_INCLUDE  NAME="myaccount/skey/skey_stored.tpl"> <!-- show "sitekey is stored" msg -->
                    <TMPL_ELSE>
                        <TMPL_IF NAME="SITEKEY_SET">
                            <TMPL_INCLUDE NAME="myaccount/skey/skey_already_set.tpl">  <!-- sitekey is set,this is your sitekey -->
                        <TMPL_ELSE>
                            <TMPL_IF NAME="SITEKEY_SELECTED">
                                <TMPL_INCLUDE NAME="myaccount/skey/skey_selected.tpl"> <!-- Enter your passphrase -->
                            <TMPL_ELSE>
                                <TMPL_INCLUDE NAME="myaccount/skey/show_select.tpl">  <!-- Select a sitekey from the range avail -->
                            </TMPL_IF>
                        </TMPL_IF>
                    </TMPL_IF>
                </table>
            </fieldset>
        </div>
    </div>
</div>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">
</TMPL_IF>

<!-- end manage_account_sitekey.tpl -->
