<!DOCTYPE>
<!-- Begin v3/court/court_header.tpl -->
<html>
    <head>
        <title>Court Search Ordering Wizard</title>
        <TMPL_INCLUDE NAME="court_includes.tpl">
        <script>
            $j(function(){
                init_browserSpecifics();
                
                $j('.check-bold-row').each(function(){
                    $j(this).closest('tr').find('td').css('font-weight', $j(this).prop('checked') ? 'bold' : 'normal');
                });
                $j('.check-bold-row').change(function(){
                    $j('.check-bold-row').each(function(){
                        $j(this).closest('tr').find('td').css('font-weight', $j(this).prop('checked') ? 'bold' : 'normal');
                    });
                });
                $j('.check-bold-row').click(function(){
                    $j('.check-bold-row').each(function(){
                        $j(this).closest('tr').find('td').css('font-weight', $j(this).prop('checked') ? 'bold' : 'normal');
                    });
                });
                $j('.check-bold-all').change(function(){
                    $j('.check-bold-row').prop('checked',$j(this).prop('checked'));
                    $j('.check-bold-row').each(function(){
                        $j(this).closest('tr').find('td').css('font-weight', $j(this).prop('checked') ? 'bold' : 'normal');
                    });
                });
                function check_bold_row(ele) {
                    if($j(ele).prop('checked')){
                        $j(ele).closest('tr').find('td').css('font-weight','bold');
                    } else {
                        $j(ele).closest('tr').find('td').css('font-weight','normal');
                    }
                }
            });
        </script>
    </head>

    <body ONLOAD="window.focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <TMPL_INCLUDE NAME="court_topnav.tpl">
        
        <form name="TU" action="<TMPL_VAR ACTION_COURT>" method="POST">
            <TMPL_INCLUDE NAME="common_hidden_input.tpl">
            <INPUT type="HIDDEN" NAME="EVENT" VALUE="">
            <INPUT type="HIDDEN" NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
            <INPUT type="HIDDEN" NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
            <INPUT TYPE="HIDDEN" NAME="IM_A_REPORT" VALUE="1">
            <INPUT TYPE="HIDDEN" NAME="BUSINESS_CS" VALUE="<TMPL_VAR NAME=BUSINESS_CS>">
            <INPUT TYPE="HIDDEN" NAME="REFERENCE_CODE" VALUE="<TMPL_VAR REFERENCE_CODE>">
<!-- End v3/court/court_header.tpl -->
