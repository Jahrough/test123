<!DOCTYPE html>
<html lang="en">
<head>
<!-- begin v4/xsl_generic.tpl -->
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





  <div id="main" >
    <div id="search-results-pw" class='hidden'>
    <span id="web20-search-flags" class="hidden" data-search-error-message="1" data-report-error-message="1" data-rerun-display-event="0"></span>
    <div class="modal-dialog trap col-8">
              <div class="modal-content">
                  <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">
                          <span aria-hidden="true">x</span>
                          <span class="sr-only">Close</span>
                      </button>
                      <h2 class="modal-title">An Error Occured</h2>
                  </div>
                  <div class="modal-body">
                      <div class="row">
                           <p><TMPL_VAR NAME=ERROR_MESSAGE> <br> Error Code: <TMPL_VAR NAME="ERROR_CODE"></p>
                        </div>
                      </div>
                      <div class='row'>
                      <div class="col col-sm-2 pull-right">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                      </div>
                      </div>
                  </div>
              </div>
          </div>
    </div>
          
      <div id="wrapper">
        <center>
            <br><br><br>
            <table border="0" cellpadding="0" cellspacing="0" width="500">
              <tr>
                <td class="redHead">
                <TMPL_IF NAME=ERROR_MESSAGE_OVERRIDE>
                <br /><br /><br /><TMPL_VAR NAME=ERROR_MESSAGE_OVERRIDE>
                <TMPL_ELSE>
                <TMPL_IF NAME=ERROR_MESSAGE>
                <br /><br /><br /><TMPL_VAR NAME=ERROR_MESSAGE>
                <TMPL_ELSE>
                <br /><br /><br />We are currently experiencing technical difficulties.
                    <br /><br /><br />
                    Please try again in a few minutes.
                </TMPL_IF>
                </TMPL_IF>
                </td>
              </tr>
              <tr>
                <td class="redHead">
                    <br />Error Code:<TMPL_VAR NAME="ERROR_CODE">
                </td>
              </tr>
            </table>
        </center>
      </div>
  
</div>
<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end v4/xsl_generic.tpl -->

