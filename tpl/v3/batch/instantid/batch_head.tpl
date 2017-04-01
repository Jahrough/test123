<html>
    <head>
        <title>Batch Wizard <TMPL_VAR TITLE_PAGE></title>
        <TMPL_INCLUDE NAME="batch/batch_includes.tpl">
            <script>
                $j(function(){
                    if($j('#override-event').length > 0){
                        $j('*[name=EVENT][id!=override-event]').remove();
                    }
                    $j('.btn').each(function(){
                        var hrf = $j(this).attr('href');
                    });
                });
            </script>
    </head>

    <body onUnLoad="closewaitwin();" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
        <TMPL_INCLUDE NAME="batch/header_info.tpl">
        <INPUT TYPE=HIDDEN NAME=IS_INSTANTID_BATCH VALUE="1">
        <input id="override-event" type="hidden" name="EVENT" VALUE="<TMPL_VAR NEXT_EVENT>">
