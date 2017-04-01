<!-- begin main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <!--<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/style1.css">-->
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <title>RES Main Menu</title>
  </head>
  
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
    <form name="main_menu" method="post" action="<TMPL_VAR NAME='ACTION_LP'>">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type=hidden name="EVENT" value="<TMPL_VAR NAME='DEFAULT_EVENT'>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <div align="center">
			  <br>
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td>
            <br>
          </td>
        </tr>
        <tr>
          <td valign="top" align="center">
            <table border=0 cellpadding=0 cellspacing=5>
              <tr>
                <td valign="top" align="center" width="563" height="189">
                  <table border=0 cellpadding=0 cellspacing=0 width="100%" height="100%">
                    <tr width="100%" height="30%">
                      <td align="center" valign="top">&nbsp;
                      </td>
                    </tr>
                    <tr width="100%" height="70%">
                      <td align="center" valign="top" width="100%" height="100%">
                        <table border="0" background="" width="100%">
                          <tr>
                            <td width="25" valign="top" align="right" class="smallfont1">&nbsp;</td>
                            <td width="4" valign="center" align="right" class="smallfont1">&#149;</td>
                            <td valign="top" align="left" class="unifont12" nowrap="1"><TMPL_IF ALLOW_NEW_BATCH><a class="mainmenularge" href="javascript:show_post_popup('RESBATCH/START_BATCH','BatchWin',875,550,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_LP>');">New Batch</a><TMPL_ELSE>New Batch</TMPL_IF></td>
                          </tr>
                          <tr>
                            <td width="25" valign="top" align="right" class="smallfont1">&nbsp;</td>
                            <td width="4" valign="center" align="right" class="smallfont1">&#149;</td>
                            <td valign="top" align="left" class="unifont12" nowrap="1"><TMPL_IF ALLOW_BATCH_VIEW><a class="mainmenularge" href="javascript: send_event('DNI/BATCHES');">Existing Batches</a><TMPL_ELSE>Existing Batches</TMPL_IF></td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      </div>
    </form>
  </body>
</html>
<!-- begin main_menu.tpl -->
