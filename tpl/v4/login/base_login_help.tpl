<input type=hidden name="WEB_20" value="1">
<div id="helpItems">
	<ul id="loginHelp">
        <li>
		  <a href="javascript:send_event('PRELOGIN/SHOW_INDEX','<TMPL_VAR ACTION_LOGIN>')">Forgot Your Password</a>
		</li>
        <li>
            <a href="#" onClick="javascript:show_signin_help_modal(); return false;">Sign In Help</a>
		</li>
	</ul>
	<p id="productTermsCond" tabindex="0">Use of this service is subject to <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a></p>
</div>

<div id="signin-help-modal" class="modal fade bs-example-modal-sm" role="dialog" aria-labelledby="signinHelpModal" aria-live="polite" aria-hidden="true">
    <section class="modal-dialog trap">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true" class="close-icon">x</span>
                    <span class="sr-only">Close</span>
                </button>
                <h3 class="modal-title">Sign In Help</h3>
            </div>
            <div class="modal-body">
                <p>Having trouble signing in?  Try the following solutions:</p>
                <ul class="hlp-bullets">
                    <li>
                        If your User ID appears to contain the letter “O” or “L”, substitute the number 0 (zero) or 1 (one) in its place and try again. 
                    </li>
                    <li>
                        If you cannot remember your password, click Forgot Your Password to reset your password.
                    </li>
                </ul>
                <p>After an unsuccessful attempt at signing in, a number challenge field is added to ensure that an automated program is not attempting to sign in. Automated programs cannot read the numbers you see in the box.</p>
                <p>If you are having difficulty with this added security, try the following solutions: </p>
                <ul class="hlp-bullets">
                    <li>
                        If no image appears, ensure that images are not blocked and refresh your browser.
                    </li>
                    <li>
                        If you have difficulty seeing the numbers, click the Listen to Numbers link to hear an audio rendering of the number.<br/>Note: This option requires that your computer supports MP3 audio files.
                    </li>
                </ul>
                <p>If you are still unable to sign in, contact LexisNexis® Customer Support at 1-866-277-8407.</p>
                <div class="modal-footer">
                    <button  class="btn btn-danger btn-hlp" data-dismiss="modal" aria-label="Close" onclick="return false;">&nbsp;&nbsp;Close&nbsp;&nbsp;</button>
                </div>
            </div>
        </div>
    </section>
</div>
