<html>
    <head>
        <title>Batch Wizard <TMPL_VAR TITLE_PAGE></title>
        <TMPL_INCLUDE NAME="batch/batch_includes.tpl">
        <script src="<TMPL_VAR NAME='JSPATH'>/phone_batch.js"></script>
        <script>
            var search_option = '<TMPL_VAR SEARCH_OPTION>';
        </script>
    </head>
    <body onUnLoad="closewaitwin();" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
        <TMPL_INCLUDE NAME="batch/header_info.tpl">
<!-- END rtphones/batch_head.tpl -->
