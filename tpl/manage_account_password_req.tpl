<!-- begin: manage_account_password_req.tpl -->
	<table border="0" cellpadding="1" cellspacing="0" width="70%" class="myaccountborder" style="margin: 0 auto">
	  <tr>
	    <td align="center">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%" class="myaccountalert">
	      <tr>
	        <td class="smallfont1" align="left">
		<img alt="" border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif">&nbsp;<strong>Password Requirements:</strong>
		<ol style="margin-top: 2px; margin-bottom: 2px;">
		  <li>Must be at least <TMPL_VAR NAME="MIN_PASSWORD_LENGTH"> characters long.</li>
		  <li>Cannot contain your loginid.</li>
		  <li>Cannot be the same as your last twelve passwords.</li>
		  <li>Cannot have been used in last 30 days.</li>
		  <li>Cannot have spaces.</li>
                  <TMPL_IF SHA2_PASSWORD> 
                     <li>Must contain any three of the following:
                        <ol>
                           <li type="a">Uppercase characters.</li>
                           <li type="a">Lowercase characters.</li>
                           <li type="a">Numeric characters.</li>
                           <li type="a">Symbol characters.</li>
                         </ol>
                     </li>
                     <li>Will be Case Sensitive.</li>
                  <TMPL_ELSE>
                     <TMPL_IF PW_COMPLEXITY_FOUR>
                        <li>Must contain all of the following:
                           <ol>
                              <li type="a">Uppercase characters.</li>
                              <li type="a">Lowercase characters.</li>
                              <li type="a">Numeric characters.</li>
                              <li type="a">Symbol characters.</li>
                           </ol>
                        </li>
                        <li>Will be Case Sensitive.</li>
                     <TMPL_ELSE>
		        <li>Must contain any two of the following:
			   <ol>
                              <li type="a">Uppercase characters.</li>
                              <li type="a">Lowercase characters.</li>
			      <li type="a">Numeric characters.</li>
			      <li type="a">Symbol characters.</li>
			   </ol>
		        </li>
		     </TMPL_IF>
                  </TMPL_IF>
		</ol>
		</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	</table>
<!-- end: manage_account_password_req.tpl -->
