<TMPL_IF NAME="MESSAGE">
    <div class="myaccount-sections">
        <TMPL_IF NAME="TASK_FAILURE">
            <div class="section mgl10 mgr10">
                <div class="section-row mgt10 mgb10">
                     <div class="warningmessage pd10 mgb5 bold">
                        <TMPL_VAR NAME="MESSAGE">
                            <TMPL_IF NAME="ASSIGNED_USER_ID">
                                <br/><a class="myaccLnk" href="javascript:unassign_user_token('OTP/SHOW_UNASSIGN_OTP_FORM','<TMPL_VAR NAME=ASSIGNED_USER_ID>')">Click Here </a>to un-assign this token ID first.
                            </TMPL_IF>
                    </div>
                </div>
            </div>
        <TMPL_ELSE>
            <div class="section mgl10 mgr10">
                <div class="section-row mgt10 mgb10">
                     <div class="warningmessage pd10 mgb5 bold">
                        <TMPL_VAR NAME="MESSAGE">
                    </div>
                </div>
            </div>
        </TMPL_IF>
    </div>
</TMPL_IF>
