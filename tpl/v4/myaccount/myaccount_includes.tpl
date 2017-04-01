 <!-- begin myaccount_includes.tpl -->
<meta charset="utf-8">
<meta http-equiv='cache-control' content='no-cache'>
<meta http-equiv='expires' content='0'>
<meta http-equiv='pragma' content='no-cache'>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Risk Admin</TMPL_IF></title>

<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/common.css" />              
                  
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/admin.css" />
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/groups.css" />
<TMPL_UNLESS MANAGE_GROUPS_SHOW>
<TMPL_UNLESS ADD_GROUP>
<TMPL_UNLESS MANAGE_UPDATE_GROUP>
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/users.css" />
</TMPL_UNLESS>
</TMPL_UNLESS>
</TMPL_UNLESS>

<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/common.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/shared.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-ui-1.10.3.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/browserSpecifics.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/jquery.tooltipster.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/accurint.js"></script>
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/tooltipster.css" />
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/evolution.css" />
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/utility.css" />

<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/plugin/jquery-validate/jquery.validate.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/myaccount/reports/datatables_config.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/search_caching.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/utility.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/ln/lexis.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/ln/misc.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/refresh_session.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/web20_validate.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/web20_help.js"></script>

<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/jquery.modal.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/bootstrap.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/usertiming.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/web20_markers.js"></script>
<script>
    var cssPath               = "<TMPL_VAR NAME='CSSPATH'>";
    var jsPath                = "<TMPL_VAR NAME='JSPATH'>";
    var imgPath               = "<TMPL_VAR NAME='IMGPATH'>";
    
    var isIE8 = false;
</script>
<!-- IE 8&9 Compatibility -->
<!--[if lt IE 9]>
    <script>
        isIE8 = true;
        _allow_browser_caching = false;
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie8fixes.css" />
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/html5shiv.min.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/respond.min.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v4/ie8fixes.js"></script>
<![endif]-->
<!--[if IE 9]>
    <script>
        if (!window.console) console = {log: function() {}};
    </script>
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/ie9fixes.css" />
<![endif]-->
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4//modal_logic.js"></script>

<TMPL_IF MANAGE_ACCOUNTS>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/jquery.rome.js"></script>
</TMPL_IF>

<TMPL_IF MANAGE_INVESTIGATE>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/investigate_user.js"></script>
</TMPL_IF>

<TMPL_IF NAME="MANAGE_SHOW_USERS">
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin_irs.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/manage_show_user.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/user_input_filter.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/investigate_user.js"></script>
</TMPL_IF>

<TMPL_IF NAME="MANAGE_ADD_USER">
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/add_edit_user.js"></script>
</TMPL_IF>

<TMPL_IF NAME="MANAGE_COPY_USER">
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/add_edit_user.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4//modal_logic.js"></script>
</TMPL_IF>


<TMPL_IF NAME="MANAGE_UPDATE_USER">
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/add_edit_user.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/investigate_user.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4//modal_logic.js"></script>
</TMPL_IF>

<TMPL_IF IS_ADMIN_REPORTING>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/jquery.rome.js"></script>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/admin_reports.js"></script>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/jquery-check-all.js"></script>
  <script>
    $(document).ready(function () {
        $("#checkall").checkAll();
    });
  </script>  
</TMPL_IF>

<TMPL_IF SHOW_ADMIN_REPORT>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/admin_report_form_input.js"></script>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/user_input_filter.js"></script>  
</TMPL_IF>
<TMPL_IF SHOW_ALERT_REPORT>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/alert_report_form_input.js"></script>
</TMPL_IF>
<TMPL_IF MANAGE_GROUPS_REPORT>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/group_report_form_input.js"></script>
</TMPL_IF>
<TMPL_IF NAME="MANAGE_USERS_REPORT">
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/user_report/show_users.js"></script>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/users/user_input_filter.js"></script>  
</TMPL_IF>
<TMPL_IF MYACCOUNT_SHOW_ACTIVITY>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/bill_group_table.js"></script>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/jquery.tooltipster.min.js"></script>  
  <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/tooltipster.css" />
</TMPL_IF>
<TMPL_IF MYACCOUNT_MANAGEMENT_REPORT>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/management_report.js"></script>
</TMPL_IF>

<TMPL_IF SHOW_ACTIVITY_BILLGROUP_LIST>
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/reports/add_edit_billgroup_list.js"></script>
</TMPL_IF>
<TMPL_IF NAME="MANAGE_ADD_GROUP">
 <TMPL_INCLUDE NAME="myaccount/groups/group_includes.tpl">
</TMPL_IF>
<TMPL_IF NAME="MANAGE_UPDATE_GROUP">
 <TMPL_INCLUDE NAME="myaccount/groups/group_includes.tpl"> 
</TMPL_IF>
<TMPL_IF NAME="MANAGE_GROUPS_SHOW">
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/groups/manage_groups.js"></script>
</TMPL_IF>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/session_timeout_warn.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount.js"></script>

<script>
var _tto = <TMPL_VAR NAME=SESSION_TIME_TO_TIMEOUT>;
var _count_down = <TMPL_VAR NAME=SESSION_EXPIRE_COUNTDOWN>;
var _require_ref_code = 0;
var _ref_code_group_value = '';
function parse_web20_search_flags(){return {}};
   $(document).ready(function () {
        var loading = function () {
        	var over = '<div id="overlay"><span id="loading" align="center" class="loading_icon svg-icon-x-large loading-text">loading...</span></div>';
            $(over).appendTo("body");

            setTimeout(function () {
                $("#overlay").remove();
            }, 1500);

        };
        //$(loading);
        init_risk_admin_form_validation();
    }); 
    
    
   function init_dropdowns(){
	 <TMPL_IF NAME="MANAGE_UPDATE_GROUP">
	   <TMPL_IF NAME="DOB_MATCHTYPE">
	      $('#dob_math_type').val('<TMPL_VAR NAME="DOB_MATCHTYPE">');
	  </TMPL_IF>   
	  <TMPL_IF NAME="IID_LAST_SEEN_THRESHOLD">
	      $("#LAST_SEEN_THRESHOLD").val('<TMPL_VAR NAME="IID_LAST_SEEN_THRESHOLD">');
	  </TMPL_IF>	  
	  <TMPL_IF NAME="IID_GLOBAL_WATCH_THRESHOLD">
	      $("#GLOBAL_WATCH_THRESHOLD").val('<TMPL_VAR NAME="IID_GLOBAL_WATCH_THRESHOLD">');
	  </TMPL_IF>
	  <TMPL_IF NAME="DPPA_GRP">
        $("#dppa_option").val('<TMPL_VAR NAME="DPPA_GRP">');
      </TMPL_IF>
	  <TMPL_IF NAME="GLBA_GRP_AVAILABLE">
        $("#glba_option").val('<TMPL_VAR NAME="GLBA_GRP">');
      </TMPL_IF>
	  <TMPL_IF NAME="DMF_GRP">
        $("#dmf_option").val('<TMPL_VAR NAME="DMF_GRP">');
      </TMPL_IF>
	  <TMPL_IF NAME="REFERENCE_CODE_ID_TYPE">
        $("#ref_type").val('<TMPL_VAR NAME="REFERENCE_CODE_ID_TYPE">');
      </TMPL_IF>
	  <TMPL_IF NAME="RISKVIEW_REPORT_SCORING_MODEL">
        $("#scr_modle").val('<TMPL_VAR NAME="RISKVIEW_REPORT_SCORING_MODEL">');
      </TMPL_IF>
	  <TMPL_IF NAME="LN_FRAUD_ALERTS">
        $("#frd_alert").val('<TMPL_VAR NAME="LN_FRAUD_ALERTS">');
      </TMPL_IF>
     </TMPL_IF>
     return 1;
   }
</script>
<!-- end myaccount_includes.tpl -->
