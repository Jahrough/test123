<!-- begin main_menu.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <!--<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME='CSSPATH'>/style1.css">-->
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
</TMPL_IF>
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <title>RES Main Menu</title>
  </head>
  
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<TMPL_IF ENABLE_V2>
<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>
</TMPL_IF>
    <form name="main_menu" method="post" action="<TMPL_VAR NAME='ACTION_BATCH'>">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type=hidden name="EVENT" value="<TMPL_VAR NAME='DEFAULT_EVENT'>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <TMPL_UNLESS ENABLE_V2>
      <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
          <td valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccccc">
              <tr>
                <td><img src="<TMPL_VAR NAME=IMGPATH>/res/batch22_reeb.gif" width="680" height="66" border="0"></td>
              </tr>
              <tr>
                <td class="headerseparator" height="10"><img border="0" height="10" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              </tr>
            </table>
          </td>
        </tr>
      </table>
      </TMPL_UNLESS>
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
                  <table border=0 cellpadding=0 cellspacing=0 background="<TMPL_VAR NAME=IMGPATH>/res/analytical_tools.gif" width="100%" height="100%">
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
                            <td valign="top" align="left" class="unifont12" nowrap="1"><TMPL_IF ALLOW_NEW_BATCH><a class="mainmenularge" href="javascript:show_post_popup('RESBATCH/START_BATCH','BatchWin',875,550,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">New Batch</a><TMPL_ELSE>New Batch</TMPL_IF></td>
                          </tr>
                          <tr>
                            <td width="25" valign="top" align="right" class="smallfont1">&nbsp;</td>
                            <td width="4" valign="center" align="right" class="smallfont1">&#149;</td>
                            <td valign="top" align="left" class="unifont12" nowrap="1"><TMPL_IF ALLOW_BATCH_VIEW><a class="mainmenularge" href="javascript: send_event('RESMAIN/BATCHES');">Existing Batches</a><TMPL_ELSE>Existing Batches</TMPL_IF></td>
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
        <!--
        <tr>
          <td>
            <br>
          </td>
        </tr>
        <tr>
          <td valign="top" align="center">
            <table border=0 cellpadding=0 cellspacing=5>
              <tr height="225">
                <td valign="top" align="center" width="125" height="100%">
                  <table border="0" cellpadding="0" cellspacing="0" width="117" height="100%">
                    <tr height="1%">
                      <td colspan="3" align="center" valign="top"><img src="<TMPL_VAR NAME=IMGPATH>/main/analytical_tools_top_hdr.gif" width="500" height="40" border="0"></td>
                    </tr>
                    <tr height="98%">
                      <td class="people" width="1"><img src="<TMPL_VAR NAME=IMGPATH>/main/pix_spcr.gif" width="1" height="1" border="0"></td>
                      <td bgcolor="white" valign="top" align="center" height="250" style="height: 100%">
                        <table border="0" cellpadding="0" cellspacing="0" width="117" height="100%">
                          <tr height="100%">
                            <td valign="top" align="left">
                              <table border="0" cellpadding="0" cellspacing="5" width="117">
                                <tr>
                                  <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                                  <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript:show_post_popup('RESBATCH/START_BATCH','BatchWin',875,550,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">New Batch</a></td>
                                </tr>
                                <tr>
                                  <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                                  <td valign="top" align="left" width="97" class="smallfont1grey"><a class="mainmenu" href="javascript: send_event('RESMAIN/BATCHES');">Existing Batches</a></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                      <td class="people" width="1"><img src="<TMPL_VAR NAME=IMGPATH>/main/pix_spcr.gif" width="1" height="1" border="0"></td>
                    </tr>
                    <tr height="1%">
                      <td colspan="3" align="center"><img src="<TMPL_VAR NAME=IMGPATH>/main/peop_bottm_hdr.gif" width="500" height="14" border="0"></td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
          </td>
        </tr>
        -->
      </table>
      </div>
    </form>
  </body>
</html>
<!-- begin main_menu.tpl -->
