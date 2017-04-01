<!-- begin short_loginid_alert.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Login ID Length Alert</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script>
	function short_loginid_alert() 
	{
	    df = document.forms[0];
	    df.LOGINID_LENGTH_NOTICE_ACCEPTED.value = 1;
	    df.submit;
	    return true;
	}
    </script>
  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">

    <form name="CHECK_LOGINID_LENGTH" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit='return short_loginid_alert();'>
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="EVENT" value='MESSAGE/MESSAGES'>
      <input type="hidden" name="LOGINID_LENGTH_NOTICE_ACCEPTED">
      <TMPL_IF ERROR_MESSAGE>
        <script>
	  alert('<TMPL_VAR ERROR_MESSAGE>');
	</script>
      </TMPL_IF>

      <br/><br/>

      <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
          <tr>
            <td align="center" valign="top">
              <table border="0" cellpadding="0" cellspacing="0" width="856">
                <tr height="12">
                  <td height="12" width="856" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
                <tr>
		  <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
		    Login ID Length Alert
		    <br/><br/>
		  </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
		    <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0" width="500" class="myaccountalert">
			    <tr><td class="unifont1">

			      <br/><b>**WARNING</b>: 

			      <TMPL_IF SA>

				  <TMPL_IF SHORT_LOGINID>

				    The length of your Login ID (<b><TMPL_VAR NAME="LOGINID"></b>) 
				    does not comply with LexisNexis Security guidelines. Login IDs must 
				    be a minimum of 6 characters long.

				    <br/><br/>

				    <b>In order to avoid disruption of service, please use the "Rename"
				    link in MyAccount</b> (Manage Users section) to rename your Login ID 
				    as well as the Login IDs of other non-compliant users in your company.
				    We appreciate your cooperation.

                                  <TMPL_ELSE>

                                    There are one or more users in your company that do not
                                    comply with the LexisNexis Security guideline requiring Login IDs to
                                    be a minimum of 6 characters long.

                                    <br/><br/>

                                    A System Administrator of your company is <b>required to change these
                                    non-compliant user Login IDs in order to prevent disruption of
                                    service.</b> Login IDs can be renamed using the "Rename" link located
                                    next to the non-compliant username in the Manage Users section of
                                    MyAccount. We appreciate your cooperation.

                                  </TMPL_IF>

                              <TMPL_ELSE>

				  The length of your Login ID (<b><TMPL_VAR NAME="LOGINID"></b>) 
				  does not comply with LexisNexis Security guidelines. Login IDs must be a 
				  minimum of 6 characters long.

                                  <br/><br/>

				  <b>Your Login ID must be changed to comply with this security standard
				  in order to maintain full access to our system.</b> Please contact your
				  System Administrator to request a new Login ID as soon as possible.
				  We appreciate your cooperation.

                              </TMPL_IF>
                            </td></tr>
                          </table>
                        </td>
                      </tr>
                  </table>
                  </td>
                </tr>
    
                <tr>
                  <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
                    <input type=image src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0">
                  </td>
                </tr>
              </table>
    
              <TMPL_INCLUDE NAME=myaccount_footer.tpl>
        
            </td>
          </tr>
        </table>
      </div>

    </form>
  </body>
</html>
<!-- end short_loginid_alert.tpl -->
