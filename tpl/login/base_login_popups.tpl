<!-- begin base_login_popups.tpl -->

<div id="passwordinfo" role="dialog">
<h1 style="color: #ffffff; background-color: #ed1c24"><a href="javascript:void(0);" onClick="close_tip('passwordinfo');"><img alt="Close" title="Close" src="<TMPL_VAR NAME=IMGPATH>/fancy_close.png" width="30" height="30" border="0" style="margin: 3 3 0 0;float:right;" /></a><p style="padding: 10px;">Where Do I Enter My Password?</p></h1>
<p style="padding: 10px;">We are changing the way you sign on to this service to better safeguard the privacy and security of your personal information. Previously, you signed in on a single page. From now on, the sign on process will be split into two separate pages. Here is how the new sign on process will work.</p>
<ul>
  <li>Enter your user name and verification characters and click on the "<strong>Next</strong>" button.</li>
  <li>On the next page you will be asked to enter your password and then click "<strong>Sign In</strong>".</li>
</ul>
<p style="padding: 10px;" align="right"><img src="<TMPL_VAR NAME=IMGPATH>/login/LexisNexis.gif" width="133" height="26" alt="LexisNexis" /></p>
</div>

<div id="verificationinfo" role="dialog">
<h1 style="color: #ffffff; background-color: #ed1c24"><a href="javascript:void(0);" onClick="close_tip('verificationinfo');"><img alt="Close" title="Close" src="<TMPL_VAR NAME=IMGPATH>/fancy_close.png" width="30" height="30" border="0" style="margin: 3 3 0 0;float:right;" /></a><p style="padding: 10px;">What are Verification Characters?</p></h1>
<p style="padding: 10px;">In order to provide you with greater security, we ask that you enter the numbers found in the box provided.&nbsp;&nbsp; Automated programs can't 'read' the numbers you see in the box, only humans can.&nbsp;&nbsp;By entering the numbers, it ensures that you are logging into our system from the correct URL, as well as reduces system load in order to improve website performance.</p>
<p style="padding: 10px;"><img alt="Verification Characters" src="<TMPL_VAR NAME=IMGPATH>/security_example.gif" border="1" width="357" height="100"></p>
<p style="padding: 10px;">If no image appears with numbers, please make sure that your browser is set to display images and try again.&nbsp;&nbsp;<b>If you can't read the numbers, make your best guess or refresh your browser which will result in a new set of characters with a different background color being displayed.</b> &nbsp;&nbsp;If you guess incorrectly, you will have an opportunity to enter a new set of numbers.</p>
<p style="padding: 10px;" align="right"><img src="<TMPL_VAR NAME=IMGPATH>/login/LexisNexis.gif" width="133" height="26" alt="LexisNexis" /></p>
</div>

<div id="securityinfo" role="dialog">
<h1 style="color: #ffffff; background-color: #ed1c24"><a href="javascript:void(0);" onClick="close_tip('securityinfo');"><img alt="Close" title="Close" src="<TMPL_VAR NAME=IMGPATH>/fancy_close.png" width="30" height="30" border="0" style="margin: 3 3 0 0;float:right;" /></a><p style="padding: 10px;">How Do I Protect My Account?</p></h1>
<p style="padding: 10px;"><img src="<TMPL_VAR NAME=IMGPATH>/login/security.gif" alt="Security Notifications" class="floatleft" width="45" height="62">Always start sign on from <b><script>write_url();</script><noscript>Your browser does not support JavaScript!</noscript></b> and never enter your User Name and Password information at any other URL or website, or your security may be compromised. Never click or follow links to <TMPL_IF COLLECTION_SOLUTIONS>LexisNexis<TMPL_ELSE>Accurint</TMPL_IF> from e-mail messages because if you do so you may be taken to a site that looks like <TMPL_IF COLLECTION_SOLUTIONS>LexisNexis<TMPL_ELSE>Accurint</TMPL_IF> but is not the <TMPL_IF COLLECTION_SOLUTIONS>LexisNexis<TMPL_ELSE>Accurint</TMPL_IF> site.  If you have followed such links, please change your Password immediately. Protect the security of your User Name and Password by following these guidelines:</p>
<ul>
  <li>Never share User Names or Passwords.</li>
  <li>Do not write your User Name and Password down anywhere.</li>
  <li>Install and use current anti-virus software.</li>
  <li>Inform your administrator or contact Customer Support immediately if you believe your User Name and/or Password have been compromised.</li>
</ul>
</p>
<p style="padding: 10px;">For 24/7 search assistance, technical assistance or security questions please <a target="_blank" href="https://accurint.custhelp.com"><b><u>e-mail customer support</u></b></a> or call 1.866.277.8407.</p>
<p align="right" style="padding: 10px;"><img src="<TMPL_VAR NAME=IMGPATH>/login/LexisNexis.gif" width="133" height="26" alt="LexisNexis" /></p>
</div>

<div id="validation"></div>
<div id="wrapperoverlay" onClick="if(div_name!='validation')close_tip();"></div>
<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0" alt=""></div>

<!-- end base_login_popups.tpl -->
