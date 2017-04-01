<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin manage_account_pricing_notice.tpl-->
  <html>
    <head>
      <title>Pricing Notice</title>
      <style type="text/css">
	.style2 {FONT-SIZE: 11pt; FONT-FAMILY: arial; color: #ffffff; font-weight: bold; }
	.style3 {FONT-SIZE: 8pt; FONT-FAMILY: arial; color: #000000; }
	.bs{ color: #ffffff; width: 75px; font-weight: bold; font-family: arial,helvetica; font-size: 8pt; background: #336699; cursor: hand; }
	.unifont2 {FONT-SIZE: 10pt; FONT-FAMILY: Arial; }
      </style>
      <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
      <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
      <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
      <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
      <script>
        function init()
        {
            window.focus();
            setInterval('checkparent()',2000);
            if (window.opener) {
                window.opener.document.forms[0].target = '';
            }
        }

        function close_notice()
        {
            //window.parent.user_notified = true;
	    window.close();
        }
      </script>
    </head>
    <body onLoad="init();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <TMPL_UNLESS NAME="ENABLE_V2">
      <TMPL_INCLUDE NAME="generic_header.tpl">
    </TMPL_UNLESS>

      <div align="center">
        <h1 class="myaccountbanner">Attention System Administrators</h1>
        <h2 class="myaccounttitle">Flat Rate Search Pricing Effective
	  July 1, 2005</h2>

        <div class="infobox">
          <p>
	    Accurint for Insurance is available on a per user fixed
	    subscription rate of $<TMPL_VAR NAME="COMPANY_PER_USER_CHARGE">
	    per month.  By adding an additional user your organization
	    will incur a fixed subscription rate charge per month for
	    the added user. Other searches not included in the flat
	    rate subscription will be billed at the then current
	    search rate.
          </p>

          <p>
	    <a href="javascript:general_win('https://insurance.lexisnexis.com/price2_insurance.html','PriceSchedule','','',1,1,1,1,1,0);void(0);">Click here</a>
	    to see the complete list of searches included in the
	    subscription program and for search charges not included in
	    the flat rate program. 
          </p>

	  <p>
	  To continue, please close this window and click "Add User" again.
	  </p>
        </div>

	<p class="unifont2"><a href="javascript:close_notice()">Close Window</a></p>
      </div>
    </body>
  </html>
<!--end manage_account_pricing_notice.tpl -->
