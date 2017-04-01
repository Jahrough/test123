<!-- Begin cdm_reporting_dashboard.tpl -->
<html>
<head>
<title>Core Data Management Reporting Dashboard</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='JSPATH'>/assets/ui/css/style.css" rel="stylesheet" type="text/css" />
<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<TMPL_IF NAME="CDM_HEA">
<link href="<TMPL_VAR NAME='CSSPATH'>/hea/tabs.css" rel="stylesheet" type="text/css">
<TMPL_ELSE>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script type="text/javascript" src="<TMPL_VAR NAME='JSPATH'>/Charts/FusionCharts.js"></script>
<script type="text/javascript" language="Javascript" src="<TMPL_VAR NAME='JSPATH'>/assets/ui/js/jquery.min.js"></script>
<script type="text/javascript" language="Javascript" src="<TMPL_VAR NAME='JSPATH'>/assets/ui/js/lib.js"></script>


<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>

<script>
	function clearFields(){
		var myform = document.forms[0];
		if (myform.START_DATE) myform.START_DATE.value = '';
		if (myform.END_DATE) myform.END_DATE.value = '';
		alert('Start Date::' + myform.START_DATE.value + '||End Date::' + myform.END_DATE.value);
	}

function validate_cdm()
{

    var error = "";
    var skip_warning = false;
    var test = false;
    var field = "";

    if(document.CDM_REPORTING_DASHBOARD){
      var df = document.forms[0];
      formpopulated = false;

      error_text = '';
      error_field = null;
      invalid_input = false;

      	//Are any of the All Data Element check boxes selected?
		var ck_selected=false;
		var start_date = df.START_DATE.value;
		var end_date = df.END_DATE.value;

		if(df.ALL_ELEM){
			for(var i=0,l=df.ALL_ELEM.length;i<l;i++)
			{
				if(df.ALL_ELEM[i].checked)
				{
					ck_selected=true;
				}
			}
			if(ck_selected){//Yes?
				formpopulated = true;
			} else { //No, choose one.
				error_text += "Please select at least one Data Element\n";
				invalid_input = true;
			}
		}
		if(df.START_DATE.value !=''){
			if(! start_date.match(/^\d{2}\/\d{2}\/\d{4}$/)) {
				error_text += 'The Start Date entered is invalid.\nThe expected format is mm/dd/yyyy.\n';
				if (invalid_input == false) {
					invalid_input = true;
					field = document.forms[0].START_DATE;
				}
			}
	 	}

		if(df.END_DATE.value !=''){
			if(! end_date.match(/^\d{2}\/\d{2}\/\d{4}$/)) {
				error_text += 'The End Date entered is invalid.\nThe expected format is mm/dd/yyyy.\n';
				if (invalid_input == false) {
					invalid_input = true;
					field = document.forms[0].END_DATE;
				}
			}
		}


      if (invalid_input) {
        error += error_text;
        test = true;
      }

    }else{
		erorr += 'Form Input Error';
		test=false;
	}

    if (test) {
      if (skip_warning) {
      } else {
        alert('We have encountered a problem.  Please see the explanation below and correct the problem to continue.\n\n' + error + '\n');
      }
      if (field != "") { field.select(); }
      return false;
    } else {
        return true;
    }

}

function check_all (src,check_box_name)
{
    var toggle = src.checked;
    if(document.getElementsByName) {
        var elements = document.getElementsByName(check_box_name);
        for(var i = 0; i < elements.length; i++) {
            if(!elements[i].disabled) elements[i].checked = toggle;
        }
    } else {
        alert('Check all feature does not work with this browser.');
    }
}
</script>

<style>

body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,code,form,fieldset,legend,input,textarea,p,blockquote,th{
    overflow:moz-scrollbars-vertical;
    margin:0;
    padding:0;
}
h1,h2,h3,h4,h5,h6 {
    font-weight:bold;
}
a,a:link,a:active,a:visited,a:focus{
    color:#0066CC;
}
a:hover {color:#ed1c24; text-decoration:underline;}
/*
table {
    border-collapse:collapse;
    border-spacing:0;
    font-size:82%;
    font:100%;
}
*/

fieldset,img {border:0;}

address,caption,cite,code,dfn,em,strong,th,var {font-style:normal;}

li{list-style:none;}

caption,th {text-align:left;}

abbr,acronym{
    border:0;
    font-variant:normal;
}

sup,sub{
    line-height:-1px;
    vertical-align:text-top;
}
sub{vertical-align:text-bottom;}

input, textarea, select{
    font-family:inherit;
    font-size:inherit;
    font-weight:normal;
    padding: 1;
}
#clear {clear:both;}

.indent1{
    margin-left:8px;
}
.indent2{
    margin-left:15px;
}
.indent3{
    padding-left:86px;
}
</style>

</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

	<div id="hd">
		<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
	</div>

	<form name="CDM_REPORTING_DASHBOARD" action="<TMPL_VAR NAME=ACTION>" method="post">
                <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
		<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
		<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
		<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
		<INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">
		<INPUT type=hidden NAME="PMTAB" VALUE="0">
		<INPUT type=hidden NAME="ACTION_BATCH" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
		<INPUT type=hidden NAME="ACTION_MAIN" VALUE="<TMPL_VAR NAME=ACTION>">

	<table border="0" cellpadding="0" cellspacing="0" width="98%" align="center">
	  <tr>
		<td class="unifont1" align="left" rowspan="2"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="1" border="0">
		</td>
		<td class="unifont1" align="right" width="70%" valign="bottom"><TMPL_UNLESS IRB><TMPL_UNLESS IRS><b>24/7 Search and Technical Assistance&nbsp; <font color="#ed1c24">1-866-277-8764 or <a href="mailto:batchtechsupport@lexisnexis.com">Batch Tech Support Email</a></font></b>&nbsp;</TMPL_UNLESS></TMPL_UNLESS>&nbsp;</td>
	  </tr>
	  <tr>
		<td class="unifont1" align="right" width="70%">
		<ul>
		<TMPL_IF ALLOW_CDM_ONLY>
			  <p>
		  <li class="first"><a trackid="hdr_contact_us" href="javascript:send_event('LOGOUT');">Sign Out</a>&nbsp;&nbsp;</li>
			  <p>
		</TMPL_IF>
			<li><a trackid="hdr_help" href="#" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/cdm_graphs_help.html','HelpWindow',790,600,1,1,1,1,1,0);void(0);">Help</a>&nbsp;&nbsp;</li>
		</ul>
		</td>
	  </tr>
	</table>
	<TMPL_IF STANDALONE_ACTIONS>
		<table border="0" cellpadding="0" cellspacing="0" width="98%" align="center">
			<tr>
				<td class="unifont1" align="left" height="30" width="70%"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="1" border="0">
				</td>
				<td align="right" height="30" width="30%">
					<TMPL_INCLUDE NAME="../standalone_actions.tpl">
				</td>
			</tr>
		</table>
	</TMPL_IF>

	<table align="center" width="94%" border="0">
		<tr>
			<td align="center">
				<div style="width:800px;">
					<TMPL_IF NAME=ERROR>
					<div id="resultsError">
					<p><img src="<TMPL_VAR NAME=IMGPATH>/v2/ico_results_alert.gif" alt="" width="20" height="20" /><TMPL_VAR NAME=ERROR_MSG>
					<br />
					</div>
					</TMPL_IF>
				</div>
			</td>
		</tr>
	</table>


	<table width="1120" border="0" id="containerTable">
		<tbody>
		<tr>
			<td id="containerLeft" valign="top" align="left">
				<TMPL_UNLESS NAME="ERROR">

					<TMPL_INCLUDE NAME="cdm_menu_tabs.tpl">
					<br>
					<div id="tabBkg">
						<div id="tabBkgRight">

							<TMPL_INCLUDE NAME="cdm_menu_search_opts.tpl">

							<br><br>

							<div class="gen-chart-render">
								<center>
									<TMPL_IF NAME='SHOW_CDM'>
										<span id="RecsTimeFrame_container" class="exit_sub_list"></span>
										<span id="Added_Deleted_container" class="exit_sub_list"></span>
										<span id="Input_Stat_container" class="exit_sub_list"></span>
										<script type="text/javascript"> <!--//

											var RecsTimeFrame = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='SINGLE_CHART_TYPE'>.swf", "RecsTimeFrameID", "450", "350", "0", "1","#F8F8F8");
											RecsTimeFrame.setXMLData('<TMPL_VAR NAME="RECORDS_TIMEFRAME">');
											RecsTimeFrame.configure("ChartNoDataText", "Records By Timeframe : No Results Found");
											RecsTimeFrame.render("RecsTimeFrame_container");

											var Added_Deleted = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='MULTI_CHART_TYPE'>.swf", "Added_DeletedID", "450", "350", "0", "1","#F8F8F8");
											Added_Deleted.setXMLData('<TMPL_VAR NAME="ADDED_DELETED">');
											Added_Deleted.configure("ChartNoDataText", "Added/Deleted Records : No Results Found");
											Added_Deleted.render("Added_Deleted_container");

											var Input_Stat = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='SINGLE_CHART_TYPE'>.swf", "Input_StatID", "904", "350", "0", "1","#F8F8F8");
											Input_Stat.setXMLData('<TMPL_VAR NAME="INPUT_STATS">');
											Input_Stat.configure("ChartNoDataText", "Input Statistics : No Results Found");
											Input_Stat.render("Input_Stat_container");

										//--></script>
									</TMPL_IF>
									<TMPL_IF NAME='SHOW_LEXID'>
										<span id="Standardization_container" class="exit_sub_list"></span>
										<span class="exit_sub_list">&nbsp;</span>
										<span id="LexID_container" class="exit_sub_list"></span>
										<span class="exit_sub_list">&nbsp;</span>
										<script type="text/javascript"> <!--//

											var Standardization = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='MULTI_CHART_TYPE'>.swf", "StandardizationID", "900", "350", "0", "1","#F8F8F8");
											Standardization.setXMLData('<TMPL_VAR NAME="STANDARDIZATION">');
											Standardization.configure("ChartNoDataText", "Standardization : No Results Found");
											Standardization.render("Standardization_container");

											var LexID = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='MULTI_CHART_TYPE'>.swf", "LexID_ID", "900", "350", "0", "1","#F8F8F8");
											LexID.setXMLData('<TMPL_VAR NAME="LEXID">');
											LexID.configure("ChartNoDataText", "LexID : No Results Found");
											LexID.render("LexID_container");

										//--></script>
									</TMPL_IF>
									<TMPL_IF NAME='SHOW_ADDR'>
										<span id="Addr_container" class="exit_sub_list"></span>
										<script type="text/javascript"> <!--//

											var Addresses = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='MULTI_CHART_TYPE'>.swf", "AddressesID", "900", "400", "0", "1","#F8F8F8");
											Addresses.setXMLData('<TMPL_VAR NAME="ADDRESSES">');
											Addresses.configure("ChartNoDataText", "Addresses : No Results Found");
											Addresses.render("Addr_container");

										//--></script>
									</TMPL_IF>
									<TMPL_IF NAME='SHOW_PHONES'>
										<span id="Phones_container" class="exit_sub_list"></span>
										<span id="PhoneType_container" class="exit_sub_list"></span>
										<script type="text/javascript"> <!--//

											var Phones = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='MULTI_CHART_TYPE'>.swf", "PhonesID", "450", "400", "0", "1","#F8F8F8");
											Phones.setXMLData('<TMPL_VAR NAME="PHONES">');
											Phones.configure("ChartNoDataText", "Phones : No Results Found");
											Phones.render("Phones_container");

											var Phone_Type = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='MULTI_CHART_TYPE'>.swf", "PhoneTypeID", "450", "400", "0", "1","#F8F8F8");
											Phone_Type.setXMLData('<TMPL_VAR NAME="PHONE_TYPE">');
											Phone_Type.configure("ChartNoDataText", "Phone Type : No Results Found");
											Phone_Type.render("PhoneType_container");

										//--></script>
									</TMPL_IF>
									<TMPL_IF NAME='SHOW_IDENT'>
										<span id="Identity_container" class="exit_sub_list"></span>
										<script type="text/javascript"> <!--//

											var Identity = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='MULTI_CHART_TYPE'>.swf", "IdentityID", "900", "400", "0", "1","#F8F8F8");
											Identity.setXMLData('<TMPL_VAR NAME="IDENTITY">');
											Identity.configure("ChartNoDataText", "Identity : No Results Found");
											Identity.render("Identity_container");

										//--></script>
									</TMPL_IF>
									<TMPL_IF NAME='SHOW_ALL_ELEM_GRAPH'>
										<span id="All_container" class="exit_sub_list"></span>
										<script type="text/javascript"> <!--//

											var All_Elements = new FusionCharts("<TMPL_VAR NAME='JSPATH'>/Charts/<TMPL_VAR NAME='SINGLE_CHART_TYPE'>.swf", "All_ElementsID", "1000", "600", "0", "1","#F8F8F8");
											All_Elements.setXMLData('<TMPL_VAR NAME="ALL_ELEMENTS">');
											All_Elements.configure("ChartNoDataText", "All Data Elements : No Results Found");
											All_Elements.render("All_container");

										//--></script>
									</TMPL_IF>
								</center>
							</div>

							<TMPL_IF NAME="SHOW_ALL_ELEM">
								<TMPL_IF NAME='SHOW_ALL_ELEM_GRAPH'><br><br></TMPL_IF>
								<ul class="checkbox-grid">
									<li><input type="checkbox" name="ONOFF" onClick="check_all(this,'ALL_ELEM');" /> <b>Plot all Data Elements</b></li>
									<li><input type="checkbox" name="ALL_ELEM" value="685" /> Incorrect Parsing</li>
									<li><input type="checkbox" name="ALL_ELEM" value="673" /> Addresses to be cleaned/parsed</li>
									<li><input type="checkbox" name="ALL_ELEM" value="684" /> House Number does not exist</li>
									<li><input type="checkbox" name="ALL_ELEM" value="706" /> SSN's to be formatted</li>
									<li><input type="checkbox" name="ALL_ELEM" value="695" /> No Apartment Number</li>
									<li><input type="checkbox" name="ALL_ELEM" value="683" /> DOB to be cleaned</li>
									<li><input type="checkbox" name="ALL_ELEM" value="672" /> Address cannot be Standardized</li>
									<li><input type="checkbox" name="ALL_ELEM" value="689" /> Names to be cleaned/parsed</li>
									<li><input type="checkbox" name="ALL_ELEM" value="693" /> New Phone</li>
									<li><input type="checkbox" name="ALL_ELEM" value="705" /> SSN digits transposed</li>
									<li><input type="checkbox" name="ALL_ELEM" value="678" /> Confirmed Phone</li>
									<li><input type="checkbox" name="ALL_ELEM" value="698" /> Records with LexID</li>
									<li><input type="checkbox" name="ALL_ELEM" value="687" /> More than 1 current phone</li>
									<li><input type="checkbox" name="ALL_ELEM" value="703" /> Records without LexID</li>
									<li><input type="checkbox" name="ALL_ELEM" value="675" /> Area codes mismatch</li>
									<li><input type="checkbox" name="ALL_ELEM" value="699" /> Records with only one(1) LexID</li>
									<li><input type="checkbox" name="ALL_ELEM" value="697" /> Phone Type: Landline</li>
									<li><input type="checkbox" name="ALL_ELEM" value="700" /> Records with only two(2) LexIDs</li>
									<li><input type="checkbox" name="ALL_ELEM" value="719" /> Phone Type: Cell Phone</li>
									<li><input type="checkbox" name="ALL_ELEM" value="701" /> Records with only three(3) LexIDs</li>
									<li><input type="checkbox" name="ALL_ELEM" value="688" /> Name Transposed</li>
									<li><input type="checkbox" name="ALL_ELEM" value="702" /> Records with four(4) or more LexIDs</li>
									<li><input type="checkbox" name="ALL_ELEM" value="690" /> New Address</li>
									<li><input type="checkbox" name="ALL_ELEM" value="677" /> Confirmed Address</li>
									<li><input type="checkbox" name="ALL_ELEM" value="692" /> New Address last 60 days</li>
									<li><input type="checkbox" name="ALL_ELEM" value="691" /> New Address last 30 days</li>
									<li><input type="checkbox" name="ALL_ELEM" value="686" /> More than 1 current address</li>
									<li><input type="checkbox" name="ALL_ELEM" value="676" /> City or zip mismatches</li>
									<li><input type="checkbox" name="ALL_ELEM" value="681" /> Deceased</li>
									<li><input type="checkbox" name="ALL_ELEM" value="682" /> Different Name</li>
									<li><input type="checkbox" name="ALL_ELEM" value="696" /> Others Using SSN</li>
									<li><input type="checkbox" name="ALL_ELEM" value="674" /> AKA (Also Known As)</li>
									<li><input type="checkbox" name="ALL_ELEM" value="679" /> Confirmed SSN</li>
									<li><input type="checkbox" name="ALL_ELEM" value="694" /> New SSN</li>
									<li><input type="checkbox" name="ALL_ELEM" value="704" /> SSN Append</li>
									<li><input type="checkbox" name="ALL_ELEM" value="722" /> Added Records</li>
									<li><input type="checkbox" name="ALL_ELEM" value="680" /> Date of Birth Append</li>
									<li><input type="checkbox" name="ALL_ELEM" value="723" /> Deleted Records</li>
								</ul>
									<input type="hidden" name="ALL_FORM_SUBMIT" value="1"/>
							</TMPL_IF>

						</div>
					</div>
					<div id="tabBotR"><div id="tabBotL"></div></div>
					<p>&nbsp;</p>
					</TMPL_UNLESS>
			</td>
		</tr>
		</tbody>
	</table>
	</form>
</body>
</html>
<!-- End cdm_reporting_dashboard.tpl -->
