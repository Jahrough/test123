<!-- begin lite/search_header.tpl -->
<script>
    var na = new Array;
    <TMPL_LOOP NAME="DELETED_SEARCHES"> na['<TMPL_VAR VAL>']=1;</TMPL_LOOP>
</script>

<table border="0" cellpadding="2" cellspacing="0" bgcolor="#000000" width="100%">
  <tr>
    <td valign="middle">
    <table width="100%" border="1" cellpadding="2" cellspacing="0" bordercolor="#cccccc" height="37" class="inactivetabs">
      <tr>
      <TMPL_IF DA_ONLY>
        <td width="40%" align="center" nowrap><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('SEARCH/SHOW_DA_BASIC')<TMPL_ELSE>send_pulldown_event('da')</TMPL_UNLESS>">Phones</a></td>
        <td width="39%" align="center" nowrap><a class="searchtabs" href="javascript:show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0);">My Account</a></td>
      <TMPL_ELSE>
        <td align="center" nowrap><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_MENU')">Main Menu</a></td>
        <TMPL_IF HEA>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROVIDER')">Health Care</a></td>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_NEWS')">News</a></td>
        </TMPL_IF>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('<TMPL_IF IRS>SEARCH/SHOW_ADV<TMPL_ELSE>SEARCH/SHOW_SEARCH</TMPL_IF>')<TMPL_ELSE>send_pulldown_event('person')</TMPL_UNLESS>">Person</a></td>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_BUS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('SEARCH/SHOW_BUS')<TMPL_ELSE>send_pulldown_event('business')</TMPL_UNLESS>">Businesses</a></td>
        <TMPL_IF GOV>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_PROVIDER')">Health Care</a></td>
        </TMPL_IF>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_ASSET_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('WS_SEARCH/SHOW_DL_REG')<TMPL_ELSE>send_pulldown_event('assets')</TMPL_UNLESS>">Assets</a></td>
        <TMPL_IF IRS>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_TODAYS_NEWS')">News</a></td>
        </TMPL_IF>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('WS_SEARCH/SHOW_LICENSE')<TMPL_ELSE>send_pulldown_event('license')</TMPL_UNLESS>">Licenses</a></td>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_DA_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('SEARCH/SHOW_DA_BASIC')<TMPL_ELSE>send_pulldown_event('da')</TMPL_UNLESS>"><TMPL_IF IRS>Directory Assistance<TMPL_ELSE>Phones</TMPL_IF></a></td>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('SEARCH/SHOW_BANKRUPTCY')<TMPL_ELSE>send_pulldown_event('courts')</TMPL_UNLESS>">Courts</a></td>
        <TMPL_IF INS>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_HEALTH_CARE_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_MEDICAL_LICENSE')">Health Care</a></td>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_NEWS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_NEWS')">News</a></td>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_ANTOOLS_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:send_event('SEARCH/SHOW_RATE_EVASION')">Analytical Tools</a></td>
        </TMPL_IF>
        <TMPL_IF ALLOW_AVM_REPORT>
        <td align="center" nowrap <TMPL_IF NAME=IM_ON_AVM_SEARCH>class="activetabs"</TMPL_IF>><a class="searchtabs" href="javascript:<TMPL_UNLESS DELETE_DISABLED>send_event('SEARCH/SHOW_AVM')<TMPL_ELSE>send_pulldown_event('avms')</TMPL_UNLESS>">Avms</a></td>
        </TMPL_IF>
        <td align="center" nowrap><a class="searchtabs" href="javascript:show_post_popup('MYACCOUNT/SHOW_PROFILE','MyAccountWin','','',1,1,1,1,1,0);">My Account</a></td>
      </TMPL_IF>
        <td width="7%" align="center" nowrap class="utiltabs"><a class="searchtabs" href="javascript:window.print();">Print</a></td>
        <TMPL_IF IRS>
        <td width="7%" align="center" nowrap class="utiltabs"><a class="searchtabs" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','IRSCustomerSupport',450,400,0,0,0,0,0,0,'','irs/customer_support');">Support</a></td>
        <TMPL_ELSE>
        <TMPL_IF IRB>
        <td width="7%" align="center" nowrap class="utiltabs"><a class="searchtabs" href="javascript:show_post_popup('MYACCOUNT/SHOW_CONTACT_US','ContactUs',450,500);">Contact</a></td>
        <TMPL_ELSE>
        <td width="7%" align="center" nowrap class="utiltabs"><a class="searchtabs" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','HTMLHelp','475','610',1,1,1,1,1,0,'','contact_select');">Contact</a></td>
        </TMPL_IF>
        </TMPL_IF>
        
        <td width="7%" align="center" nowrap class="utiltabs"><a class="searchtabs" href="javascript:send_event('LOGOUT')">Logout</a></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="20" height="15"><br>
<!-- end lite/search_header.tpl -->
