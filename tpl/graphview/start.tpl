<!--begin:graphview/start.tpl-->
<html>

<head>

    <title>Relavint(TM) Visual Link Analysis</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">

    <script language="JavaScript" src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script language="JavaScript" src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script language="JavaScript" src="<TMPL_VAR NAME='JSPATH'>/graphview/show_graph.js"></script>

    <script language="javascript" type="text/javascript">
    <!--

    var initial_args = new Array;
    var relavint_sess_id = '<TMPL_VAR NAME=SESSION_ID>';
    var relavint_csrf_token = '<TMPL_VAR NAME=CSRF_TOKEN>';
    function run_initial_report() {

		<TMPL_LOOP NAME=PASS_THRU_INPUTS>
	  	initial_args['<TMPL_VAR NAME="name">'] = '<TMPL_VAR NAME="value">';
		</TMPL_LOOP>

		var suppress_alert = <TMPL_IF NAME="SUPPRESS_ALERT">1<TMPL_ELSE>0</TMPL_IF>;
		var G = get_graphview_control();
	
		if (G) {
	    	if (suppress_alert) {
				first_run();
	    	} else {
				wait_win('<TMPL_VAR NAME=HTMLPATH>/graphview/show_alert.html');
	    	}
		}
    }

    function first_run () {
		do_report(initial_args, '<TMPL_VAR NAME="TYPE">', 1);
    }

   
    //-->
    </script>

    <script for="GraphViewControl" event="OnVertexDoubleClick(x, y, vertex)">

	var type_id = vertex.Category;
	var uid = vertex.Identity;
	
	if (node_config[type_id]['disable_double_click']) {
	    //alert('Node expansion is not available');
	    return 0;
	}

	var args = extract_vertex_info(vertex);

	if (!_length(args)) {
	    alert('Unable to extract node information'); 
	    return 0;
	}

	if (!check_required_params(vertex, 'report_params', args)) {
	    alert('Insufficient node information to drill-down'); 
	    return 0;
	}

	var event = node_config[type_id]['report_event'];

	if (event) {

	    // wait_win('<TMPL_VAR NAME=HTMLPATH>/graphview/please_wait.html');
	    do_report(args, event);
	    closewaitwin();

	} else {

	    //alert('Node expansion not available at this time.');
	    return 0;

	}

    </script>

    <script for="GraphViewControl" event="OnVertexContextMenu(x, y, vertex)">

	var type_id = vertex.Category;
	var type_name = node_config[type_id]['name'];
	var uid_type = node_config[type_id]['uid'];
	var sex_predator_index,sex_predator_exists,doc_index,doc_exists,state;
	
	sex_predator_index = doc_index = -99;
	sex_predator_exists = doc_exists = 0;
	
	//Got from the Config file.
	var sex_predator_type_id = 125;    
	var doc_type_id = 120;    

	if (node_config[type_id]['disable_context_menu']) {
	    return 0;
	}

	var addressRange = '';
	if (vertex.GetProperty(4)) addressRange= '  ('+vertex.GetProperty(4)+')';   
	var title = (type_name == 'Addresses')?vertex.GetProperty(0)+addressRange:vertex.GetProperty(0);
	var arr = new Array(
    	title
	);

	if (type_name == 'Person') {
		var vertex_info = extract_vertex_info(vertex);
		for (var k in vertex_info) {
			if (k.match(/AKA/)) {
		    	arr.push(' AKA: '+vertex_info[k]);
			}
	    }
	}

	arr.push('-');
	var accurint_search_index = arr.push('Run Search') - 2;
	//arr.push('Identity: '+vertex.Identity);

	//Add hide relatives, associates for persons
	
	var subtype_menu_map = new Array;
	if (type_name == 'Person') {

	    var cat_menu = new Array();
	    <TMPL_LOOP NAME="EDGE_CONFIG">
	      <TMPL_IF NAME="show_legend">
		cat_menu.push(new Array ('<TMPL_VAR NAME="name">', <TMPL_VAR NAME="to">, '<TMPL_VAR NAME="subtype">'));
	      </TMPL_IF>
	    </TMPL_LOOP>

	    for (var i in cat_menu) {
			var menu_info = cat_menu[i];

			var to_type_id = menu_info[1];
			var subtype =  menu_info[2];

			var edge_type_id = get_edge_type(to_type_id, subtype);

			if (edge_type_id) {

		    	var visible_edges = vertex.GetVisibleLinkedVerticesCountByEdgeCat(edge_type_id);
		    	if (visible_edges) {
					var i = arr.length;
					arr[i] = 'Hide '+menu_info[0]+' ('+visible_edges+')';
					subtype_menu_map[i-1] = {to_type_id:to_type_id, subtype:subtype, edge_type_id:edge_type_id, hide:1};
		    	}

		    	var hidden_edges = vertex.GetHiddenLinkedVerticesCountByEdgeCat(edge_type_id);
		    	if (hidden_edges) {
					var i = arr.length;
					arr[i] = 'Show '+menu_info[0]+' ('+hidden_edges+')';
					subtype_menu_map[i-1] = {to_type_id:to_type_id, subtype:subtype, edge_type_id:edge_type_id, hide:2};
		    	}

		    //alert('to_type_id:'+to_type_id+', subtype:'+subtype+', edge_type_id:'+edge_type_id+', visible count:'+visible_edges+', hidden count:'+hidden_edges);

			} else {

		    	alert('Unable to get edge_type_id for: '+to_type_id+':'+subtype);

			}

		}
	}

	var sp_edge = get_edge_type(sex_predator_type_id,'default');
	if (type_name=='Person' && vertex.GetVisibleLinkedVerticesCountByEdgeCat(sp_edge))
		sex_predator_exists = 1;    

	sp_edge = get_edge_type(doc_type_id,'default');
	if (type_name=='Person' && 
	    vertex.GetVisibleLinkedVerticesCountByEdgeCat(sp_edge) &&
	    this.GetVertex(doc_type_id, getNeighbourVertexIdentity(vertex,doc_type_id) ).GetProperty(node_config[doc_type_id]['query_params']['DOCNUMBER'])
	  )
	{    
		doc_exists = 1;    
		state = this.GetVertex(doc_type_id,getNeighbourVertexIdentity(vertex,doc_type_id) ).GetProperty(node_config[doc_type_id]['query_params']['DOCSTATE'])
	}
	else if(type_name=="Criminal Records" && 
		vertex.GetProperty(node_config[type_id]['query_params']['DOCNUMBER']))
	{    
		doc_exists =1;    
		state = vertex.GetProperty(node_config[type_id]['query_params']['DOCSTATE']);
	}  

	if (type_name == 'Sexual Offenses' || sex_predator_exists )
	{
		sex_predator_index = arr.push('Sex Predator Photo') - 2;
	}    	
    if( doc_exists )
	{
		doc_index = arr.push('Department of Corrections Photo') - 2;
	}    	
	
	var option = this.ShowMenu(x, y, arr);

	if (option == accurint_search_index) {

    	search_decision(vertex);

	}
	else if(option == sex_predator_index)
	{  
   		showDSPhoto(this,vertex, type_id,type_name,sex_predator_type_id,'SexPredatorPhotoWindow');	    
	}
	else if(option == doc_index)        
	{
	   showDSPhoto(this,vertex, type_id,type_name,doc_type_id,'DOCPhotoWindow');
	}    
	else {
	    
	    if (type_name == 'Person') {

			if (subtype_menu_map[option]) {

		    	var menu_info = subtype_menu_map[option];
		    	var to_type_id = menu_info['to_type_id'];
		    	var subtype = menu_info['subtype'];
		    	var hide = menu_info['hide'];

		    	var edge_type_id = get_edge_type(to_type_id, subtype);

		    	if (edge_type_id) {
					//alert('cat: hide:'+hide+', option:'+option+', subtype:'+subtype+', edge_type_id:'+edge_type_id);
					vertex.SetLinkedVertexVisibilityByEdgeCat(edge_type_id, hide);
		    	}
			}
	    }
	}
    
    </script>


    <script for="GraphViewControl" event="OnVertexSingleClick(x, y, vertex)">

	//display_node_info(vertex);

    </script>
    
    <script for="GraphViewControl" event="OnVertexMouseOver(x, y, vertex)">

	//display_node_info(vertex);

    </script>

    <style>
      #no-activex {
        border: 1px dotted red;
        padding: 10px;
        margin: 10px;
        background-color: #faffe5;
        font: bold 1.2em sans-serif;
        text-align: center;
      }
    </style>
</head>

<body bgcolor="#ffffff" onload="window.focus();run_initial_report()" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onResize="auto_center();">

<table border="0" cellpadding="3" cellspacing="0" width="100%" height="95%">
  <tr height="100%">
    <td valign="top" width="1%" align="center">
    <img src="<TMPL_VAR NAME=IMGPATH>/graphview/relavint_logo.gif" border="0"><br>
    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="5" width="1" border="0"><br>
      <table border="0" cellpadding="1" cellspacing="0" bgcolor="#d20000">
	<tr>
	  <td valign="top">
	    <table border="0" border="0" cellpadding="3" cellspacing="0" width="100%">
	      <tr bgcolor="#e0dfe3">
	        <td class="smallfont1" align="center"><b>Nodes</b></td>
	      </tr>
	    </table>
	    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="1" border="0"><br>
	    <table border="0" border="0" cellpadding="3" cellspacing="0">
	      <TMPL_LOOP NAME="NODE_CONFIG">
	      <TMPL_IF NAME="show_legend">
	      <tr bgcolor="#<TMPL_VAR NAME="color">">
		<td class="smallfont1"><img src="<TMPL_VAR NAME="IMGPATH">/graphview/icons/<TMPL_VAR NAME="icon">_20x20.gif" border="0"></td>
	
		<td class="smallfont1"><img id="icon_<TMPL_VAR NAME="id">" src="<TMPL_VAR NAME="IMGPATH">/graphview/icons/<TMPL_VAR NAME="icon">.gif" height="36" width="36" style="left:-1000px;position:absolute;top:-1000px"  border="0"><TMPL_VAR NAME="type"></td>
		<td id="type_count_<TMPL_VAR NAME="id">"><input type="checkbox" id="node_filter_<TMPL_VAR NAME="id">" checked onclick="javascript:node_filter('<TMPL_VAR NAME="id">');" <TMPL_IF NAME="disable_checkbox">disabled</TMPL_IF>></td>
	      </tr>
	      </TMPL_IF>
	      </TMPL_LOOP>
	    </table>
	  </td>
	</tr>
      </table>
	 
     <img id="check" src="<TMPL_VAR NAME="IMGPATH">/bluecheck.gif" style="left:-1000px;position:absolute;top:-1000px"  border="0">
		 
      <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="5" width="1" border="0"><br>
      <table border="0" cellpadding="1" cellspacing="0" bgcolor="#d20000" width="100%">
	<tr>
	  <td valign="top" width="100%">
	    <table border="0" border="0" cellpadding="3" cellspacing="0" width="100%">
	      <tr bgcolor="#e0dfe3">
	        <td class="smallfont1" align="center"><b>Relationships</b></td>
	      </tr>
	    </table>
	    <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="1" border="0"><br>
	    <table border="0" border="0" cellpadding="3" cellspacing="0" width="100%">
	      <TMPL_LOOP NAME="EDGE_CONFIG">
	      <TMPL_IF NAME="show_legend">
	      <tr bgcolor="#<TMPL_VAR NAME="color">">
		<td nowrap><font class="smallfont1">&nbsp;<TMPL_VAR NAME="name"></font></td>
	      </tr>
	      </TMPL_IF>
	      </TMPL_LOOP>
	    </table>
	  </td>
	</tr>
      </table>
      <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="5" width="1" border="0"><br>
      <table border="0" cellpadding="1" cellspacing="0" bgcolor="#d20000" width="100%">
        <tr>
          <td valign="top" width="100%">
          <table border="0" border="0" cellpadding="3" cellspacing="0" width="100%" bgcolor="#e0dfe3">
            <tr>
              <td class="smallfont1" align="center"><b>Control</b></td>
            </tr>
          </table>
          <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="1" border="0"><br>
          <table border="0" border="0" cellpadding="3" cellspacing="0" width="100%" bgcolor="#f0f0f0">
            <tr>
              <td align="center" class="smallfont1" nowrap>
              <img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="3" width="1" border="0"><br>
              <input style="font-size: 8pt;" type="button" value=" Full " onclick="return fit_screen()">&nbsp;
              <select id="ZoomValue" name="ZoomValue" onChange="return SetZoom_onclick();" style="background-color: #e0dfe3; font-size: 8pt; ">
                <option value="25">25%</option>
                <option value="50">50%</option>
                <option value="75">75%</option>
                <option value="90">90%</option>
                <option selected value="100">100%</option>
                <option value="110">110%</option>
                <option value="125">125%</option>
                <option value="150">150%</option>
                <option value="175">175%</option>
                <option value="200">200%</option>
              </select>
              </td>
            </tr>
            <tr>
              <td align="center" class="smallfont1" nowrap>
              <input style="font-size: 8pt;" type="button" value="Spring" onclick="return Spring_onclick()">&nbsp;<input style="font-size: 8pt;" type="button" value="Circle" onclick="return Circle_onclick()">

              <input type="hidden" name="Spring" value="0" id="Spring">
              <input type="hidden" name="Circle" value="1" id="Circle">
              </td>
            </tr>
	    <tr>
	      <td align="center" class="smallfont1" nowrap>
	      <input style="font-size: 8pt; cursor: move;" id="Recenter" type="button" value="Center" name="Recenter" onclick="return Recenter_onclick()">&nbsp;<input style="font-size: 8pt;" type="button" value="Stop" name="Stop" onClick="StopLayout_onclick();">
	      </td>
	    </tr>
            <tr>
              <td align="center">
              <input style="font-size: 8pt;" type="button" value="Copy" name="Copy" onClick="copy_clip();">&nbsp;<input style="font-size: 8pt;" type="button" value="Save" name="Save" onClick="save_as();">
              </td>
            </tr>
            <tr>
              <td align="center" nowrap>
              <input style="font-size: 8pt; cursor: help;" id="Help" type="button" value="? Help" name="Help" onclick="general_win('<TMPL_VAR NAME=HLPPATH>/graphview/relavint_help.html','GraphViewHelp','700','600',0,0,0,1,1,0);void(0);">
	      &nbsp;<input style="font-size: 8pt;" type="button" value="Export" name="notebook"  onClick="save_as_xml();">

              </td>
            </tr>
          </table>
          </td>
        </tr>
      </table>
    </td>
    <td width="99%">
      <object
	  id="GraphViewControl"
	  codeBase="<TMPL_VAR NAME="CABPATH">/GraphViewCtl.cab#Version=1,3,0,4"
	  height="100%"
	  width="100%"
	  data="data:application/x-oleobject;base64,yxfq8b33CEGnQhvHd0OD/xAHAAD3SwAAuSUAAA=="
	  classid="CLSID:F1EA17CB-F7BD-4108-A742-1BC7774383FF"
	  standby="Loading Accurint GraphView Control..."
	  VIEWASTEXT>
	 <p id="no-activex">ActiveX Support is required for Relavint Link Analysis.<br><br>Click <a href="javascript:general_win('<TMPL_VAR NAME=HLPPATH>/graphview/relavint_tech_help.html','GraphViewTechHelp','700','600',0,0,0,1,1,0);void(0);">HERE</a> for more information.</p>
      </object>
    </td>
  </tr>
</table>
<form name="GraphView" method="post" action="<TMPL_VAR NAME=ACTION_REPORT>">
  <input type=hidden name="IM_A_REPORT" value="1">
  <input type=hidden name="CSRF_TOKEN" value="<TMPL_VAR NAME=CSRF_TOKEN>">
  
</form>

</body>

</html>

<!--end:graphview/start.tpl-->
