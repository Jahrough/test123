<!DOCTYPE html>
<html lang="en">
<head>
<!-- begin v4/sybase_error.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<TMPL_INCLUDE NAME="includes.tpl">


  <body onload="setup_token()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
  
                <header>
                    <h1>
                        <TMPL_IF AML>
                            <img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
                        <TMPL_ELSE>
                            <img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
                        </TMPL_IF>
                    </h1>
                </header>

  <div id="main" class="clear">
      <div id="wrapper">
        <center>
            <br><br><br>
            <table border="0" cellpadding="0" cellspacing="0" width="500">
              <tr>
                <td class="redHead">
                <TMPL_IF NAME=ERROR_MESSAGE>
                <br /><br /><br /><TMPL_VAR NAME=ERROR_MESSAGE>
                <TMPL_ELSE>
                <br /><br /><br />We are currently experiencing technical difficulties.<br><br>Please try again in a few minutes.<P>Code: <b>SYB01</b>
              </TMPL_IF>
                </td>
              </tr>
            </table>
        <center>
      </div>
  </div>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end v4/sybase_error.tpl -->

