  <script>
    if (navigator.userAgent.indexOf('MSIE 8') !== -1) {
      document.write('<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/font-awesome.css">');
    } else {
      document.write('<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/font-awesome.min.css">');
    }
    var cssPath = "<TMPL_VAR NAME='CSSPATH'>";
    function setup_single_or_split_fields(){
      return;
    }
    function show_single_or_split_fields(){
      return;
    }
    function ready_smartlinx_report(){
      return;
    }
    function srchInitMenu(){
      return;
    }
  </script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/app.config.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/app.min.js"></script> 
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/search_favorites.js"></script>  
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/quick_search.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/tab_logic.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/utility.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/new_report_logic.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/print_dialog.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/mainmenu.js"></script>  
  <script src="<TMPL_VAR NAME='JSPATH'>/v4/init.js"></script> 
  <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/myaccount/groups/add_edit_group.js"></script>   
