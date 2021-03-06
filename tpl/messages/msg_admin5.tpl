<TMPL_INCLUDE NAME="msg_top.tpl">

<font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3"><b>Thursday, April 1, 2010</b></font>

<TMPL_INCLUDE NAME="msg_body.tpl">

<TMPL_UNLESS IRS>

<br>
<table border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td width="16"></td>
    <td>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular">
    <b>Added Functionality Now Available for System Administrators</b>
    </font>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="-1">
    <br><br>
    Now you have even more options to manage and customize use of <TMPL_IF XBPS>Risk Investigations<TMPL_ELSE><TMPL_IF IRB>IRBsearch<TMPL_ELSE>Accurint</TMPL_IF></TMPL_IF> within your organization.  The added System Administration features include:
    <ul>
      <li>Copy and create a new user with the "Copy User" button</li>
      <li>Users automatically receive an email when a user's password has been reset</li>
      <li>Ability to suspend multiple users at a time as well as enter a future date to deactivate/suspend a user</li>
      <li>View up to 90 days of past activity</li>
    </ul>
    Please contact your account representative with any questions regarding these new features.
    <br></br>
    <br>
    </font>
    </td>
  </tr>
</table>

<TMPL_ELSE>

<br>
<table border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td width="16"></td>
    <td>
    <font face="Arial" size="2">
    <b>Important LexisNexis Security Memo</b>
    <br><br>
    LexisNexis considers information security and consumer protection to be an essential part of doing business. As part of this ongoing effort, LexisNexis launched an enhanced Customer Security Program this year by implementing:

<ul>
<li>Stronger user ID and password protocols</li>
<li>Suspension of user IDs for extended inactivity and after several unsuccessful login attempts</li>
<li>Regular changes in Passwords</li>
<li>A security graphic on the login page to protect against unauthorized use</li>
<li>SSL (Secured Socket Layers) for all <TMPL_UNLESS NAME="XBPS">Accurint<TMPL_ELSE>Risk Investigations</TMPL_UNLESS> applications</li>
</ul>


As part of the next phase of our Customer Security Program, <b>IP Internet address restrictions are now required for continued full display of Social Security Numbers (SSNs) from non-public record information and Driver's License Numbers (DLNs) from public record information</b>. This security measure will help us identify users who try to enter our systems from locations not authorized by you, our customer.

<br><br>
Users accessing <TMPL_UNLESS NAME="XBPS">Accurint<TMPL_ELSE>Risk Investigations</TMPL_UNLESS> from within the chosen IP address ranges will continue to receive full display of SSNs and DLNs if your account was previously approved for this type of access. For users outside of the chosen IP Address Ranges there are two options available:
<ul>
<li>"Roaming" IP address restrictions which provides masked display of SSNs and DLNs; or</li>
<li>
"Full" IP address restrictions only allows access to the <TMPL_UNLESS NAME="XBPS">Accurint<TMPL_ELSE>Risk Investigations</TMPL_UNLESS> application from your listed IP address ranges. All access from outside this range will be blocked, preventing unauthorized users from accessing your account.
</li>
</ul>
LexisNexis is working to implement your IP address restrictions based on the current access information on your account. Should we require additional information, we will contact you.
<br><br>
As a System Administrator, you can view and request changes to your IP address restrictions through the Company Security section of My Account. Please contact your Account Manager or Product Support at 1-866-277-8407 with any questions you may have.
<br><br>
Sincerely,
<br><br>
LexisNexis Security

    <br></br>
    <br>
    </font>
    </td>
  </tr>
</table>

</TMPL_UNLESS>

<TMPL_INCLUDE NAME="msg_bottom.tpl">
