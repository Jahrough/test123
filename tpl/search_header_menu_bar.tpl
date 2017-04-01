<!-- begin search_header_menu_bar.tpl -->

<script>
    var na = new Array;
    <TMPL_LOOP NAME="DELETED_SEARCHES"> na['<TMPL_VAR VAL>']=1;</TMPL_LOOP>
</script>

<table border="0" cellpadding="0" cellspacing="0" width="100%" background="<TMPL_VAR NAME=IMGPATH>/stretchbar_top.gif">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="790">
      <tr>
        <td>
	<table border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <!--
	    <td width="10" align="left" valign="bottom"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/bar_plug.gif" width="10" height="32"></td>
	    -->
      <TMPL_IF HEA>
      <TMPL_INCLUDE NAME="health_care_header_tab.tpl">
	    <TMPL_INCLUDE NAME="news_header_tab_hea.tpl">
      </TMPL_IF>
	    <TMPL_IF DA_ONLY>
	    <TMPL_INCLUDE NAME="da_header_tab.tpl">
	    <TMPL_ELSE>
	    <TMPL_INCLUDE NAME="person_header_tab.tpl">
      <TMPL_IF GOV>
            <TMPL_INCLUDE NAME="gov_header_tab.tpl">
      </TMPL_IF>
	    <TMPL_INCLUDE NAME="business_header_tab.tpl">
	    <TMPL_INCLUDE NAME="asset_header_tab.tpl">
	    <TMPL_IF IRS>
		 <TMPL_INCLUDE NAME="news_header_tab.tpl">
	    </TMPL_IF>
	    <TMPL_INCLUDE NAME="licenses_header_tab.tpl">
	    <TMPL_INCLUDE NAME="da_header_tab.tpl">
	    <TMPL_INCLUDE NAME="courts_header_tab.tpl">
	    <TMPL_IF INS>
		<TMPL_INCLUDE NAME="health_care_header_tab.tpl">
		<TMPL_INCLUDE NAME="main_news_header_tab.tpl">
		<TMPL_INCLUDE NAME="an_tools_header_tab.tpl">
	    </TMPL_IF>
	    <TMPL_IF ALLOW_AVM_REPORT>
		 <TMPL_INCLUDE NAME="avms_header_tab.tpl">
	    </TMPL_IF>
	    </TMPL_IF>
	  </tr>
	</table>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- end search_header_menu_bar.tpl -->
