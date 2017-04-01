<div id="ln_banner">
      	<div class="ln_logo">
        	<a href="javascript:void(0);"><img src="<tmpl_var name=IMGPATH>/LN-Admin.png" alt="LexisNexis&copy; Administration"/></a>
        </div>
        <TMPL_IF IS_ADMIN_REPORT_DISPLAY>
        <div class="doc_control">
          <a href="javascript:print_report();" title="Print"><span class="fa fa-14 fa-print pos_1 fa-fw"></span>Print</a> &nbsp;&nbsp;
          <a href="javascript:download_report();" title="Download" class="print_report"><span class="fa fa-14 fa-download pos_1 fa-fw"></span>Download</a> &nbsp;&nbsp;
          <a href="javascript:window.close();" title="Close"><span class="fa fa-14 fa-times pos_1 fa-fw"></span>Close</a>
        </div>
        </TMPL_IF>
        <TMPL_UNLESS IS_ADMIN_REPORT_DISPLAY>
        <TMPL_UNLESS DOWNLOAD>
        <div class="ln_login">
           <a href="javascript:update_user('MANAGE/UPDATE_USER','<TMPL_VAR LOGINID>','<TMPL_VAR WEB20_COMPANYID>','')" title="My Profile"><i class="fa fa-14 fa-user pos_1 fa-fw"></i><TMPL_VAR NAME="USER_NAME"></a> 
           <a href="javascript:logout();" title="Sign Out" class="margin_left_15"><i class="fa fa-14 fa-sign-out pos_1 fa-fw"></i>Sign Out</a>
        </div>
        </TMPL_UNLESS>
        </TMPL_UNLESS>

        <div class="clear"></div>
</div>
