<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
<script>
    var $j = jQuery.noConflict();
</script>

<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/tips.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/initBatch.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/batch.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/myaccount.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/browserSpecifics.js"></script>

<link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/batch.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
    var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
    function show_batch_event(evt){
        showpw();
        send_event(evt);
    }
    var version = 'v3';
</script>

<script>
    $j(function(){
        $j('img[src*="info.gif"]').parent('a').addClass('blueHelpIcon').html('i');
        $j('img[src*="info.gif"]').wrap('<i></i>').parent('i').addClass('blueHelpIcon').html('i');
    });
    var ot = [];
    function overlib_to_modal() {
        ot = arguments;
        var title = arguments[19];
        var content = arguments[0];
        var width = arguments[12];
        
        if(content.indexOf('<br>') === 0){
            content = content.replace('<br>','');
        }
        new_modal(title,content,width);
    }
    <TMPL_IF ERROR_MESG>
        var errorObj = {};
        errorObj.title = 'Error Occured';
        errorObj.width = '500px';
        errorObj.height = '400px';
        errortext = 'Please select option before proceeding.';
        errorObj.content = errortext;
        toggle_modal(errorObj);    
    </TMPL_IF>
</script>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>

<script>
$j(function() {
    $j('#asosDataTables').DataTable({
          paging: true,
          searching: true,
          info: true
     });
});
</script>

