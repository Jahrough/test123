 <!-- begin myaccount_popup_includes.tpl -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Risk Admin</TMPL_IF></title>
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/bootstrap.min.css">
<!-- <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/icons.css"> -->
<!-- <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/smartadmin-production.min.css"> -->
<link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/admin.css" />
<!-- <link rel="stylesheet" type="text/css" href="<TMPL_VAR NAME=CSSPATH>/myaccount/groups.css" /> -->
<script>
var cssPath = '<TMPL_VAR NAME=CSSPATH>';
</script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/libs/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/browserSpecifics.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/plugin/jquery-validate/jquery.validate.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/plugin/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/myaccount/reports/datatables_config.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/myaccount/jquery.sticky.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/print_dialog.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/usertiming.min.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4//web20_markers.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/accurint.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/jquery.downloadThis.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v4/jquery.printThis.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/utility.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/myaccount/reports/print-report.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/v4/myaccount/session_timeout_warn.js"></script>
<script>
   $(document).ready(function () {
	   $(".copyrightyear").text(new Date().getFullYear());
        var loading = function () {
            var over = '<div id="overlay"><span id="loading" align="center"><i class="fa fa-3x fa-refresh fa-spin"></i><br /><br />loading</span></div>';
            $(over).appendTo("body");

            setTimeout(function () {
                $("#overlay").remove();
            }, 1500);

        };
        //$(loading);
        
        // sticky header
        $("#ln_banner").stickThis();
        RADIM.initialize();
    }); 
</script>
<style>
    .modal-dialog{
    	width:80% !important;
    }
    .modal-body {
        min-height: 80%;
        max-height: 80%;
        overflow-y: auto;
    }    
</style>
<!-- end myaccount_popup_includes.tpl -->
