<!DOCTYPE html>
<html lang="en">
<head>
	<!--<TMPL_VAR NAME=SERVER_ID>-->
	<TMPL_INCLUDE NAME="includes.tpl">
        
        <script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>
        
	<script type="text/javascript">
		var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
		var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
		function check_opener() {
			if (window.opener) { setInterval('checkparent()',2000); }
		}
	</script>
        <style>
            .container {
                width:400px;
            }
            #pass-text {
                margin-top:50px;
                margin-bottom:25px;
                white-space: nowrap;
            }
        </style>
            
</head>
<body onload="setup_page_web20();check_opener();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <div id="main" class="maincontent" id="wrapper" ><!-- style="height:100%"-->
        <header>
                <h1>
                    <TMPL_IF AML>
                            <img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
                    <TMPL_ELSE>
                            <img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
                    </TMPL_IF>
                </h1>
        </header>

        <div class="container">
            
            <div id="pass-text" class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-10 ">
                    <span><b>Please re-authenticate to enter this functionality</b></span>
                </div>
            </div>

            <form name="MYACCOUNT" data-type="verify_password" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit="return prepared_pwd();">

                <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                <input type="hidden" name="MYACCOUNT_AUTH" value="1">
                <input type="hidden" name="BASEP" value="1">
                <input type="hidden" name="EVENT" value="LOGIN/DO_VERIFY_PASSWORD_MYACCOUNT">
                <input type="hidden" name="EVENT_CONTINUE" value="<TMPL_VAR NAME='EVENT_CONTINUE'>">

                <TMPL_IF NAME="DD_DETAIL_SUBSCRIPTION_ID">
                        <input type="hidden" name="SUBSCRIPTION_ID" value="<TMPL_VAR NAME="DD_DETAIL_SUBSCRIPTION_ID">">
                </TMPL_IF>
                <TMPL_IF NAME="DCONFLCT_ID">
                        <input type="hidden" name="DCONFLCT_ID" value="<TMPL_VAR NAME="DCONFLCT_ID">">
                </TMPL_IF>
                <TMPL_IF ENABLE_LOGIN_HASHING>
                        <input type="hidden" name="_K" value="<TMPL_VAR NAME=_K>">
                        <input type="hidden" name="_SK" value="<TMPL_VAR NAME=_SK>">
                </TMPL_IF>                       

                <div class="form-group row">
                    <label for="id" class="col-sm-2 col-form-label">ID:</label>
                    <div class="col-sm-10">
                       <input name="id" id="id" class="form-control" type="text" disabled value="<TMPL_VAR NAME='LOGINID'>">
                    </div>
                </div>
                <div class="form-group row password-group">
                    <label for="password" class="col-sm-2 col-form-label">Password:</label>
                    <div class="col-sm-10">
                      <input type="password" id="PASSWORD" class="form-control" name="PASSWORD"> <!-- placeholder="Password" -->
                    </div>
                  </div>

                <div class="form-group row">
                    <div class="col-sm-2 col-form-label"></div>
                    <div class="col-sm-10">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-2">
                            <button type="submit" class="btn btn-danger">Enter</button>
                        </div>
                        <div class="col-sm-4"></div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-sm-2"></div>  
                    <div class="center-block col-sm-10">
                        <em id="error" class="invalid" aria-label="Error Message" ></em>
                    </div>  
                </div>

            </form>

        </div>

    </div>
    <script>
            var errorMessage = '<TMPL_IF NAME="ERROR_MESSAGE"><TMPL_VAR NAME=ERROR_MESSAGE></TMPL_IF>'.replace(/\n/g, "<br />");
            document.getElementById("error").innerHTML = errorMessage;
    </script>
    <div class="footer navbar-static-bottom"">
        <TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
    </div>
</body>
</html>
