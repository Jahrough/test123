<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- begin v4/show_groups_select.tpl -->
		<!--<TMPL_VAR NAME=SERVER_ID>-->
		<TMPL_INCLUDE NAME="includes.tpl">

		<script type="text/javascript">
			function update_group_selection()
			{
				var group_list = document.forms[0].GROUPS;
				var selected_group = group_list.options[group_list.selectedIndex].value;
				//alert('GROUP = <' + selected_group + '>');
				// validate the rest of the form
				// skip validation for netscape (done at serverside)
				if (!document.getElementById || validate()) {
					send_event('MYACCOUNT/UPDATE_GROUP_SESSION');
				}
			}
    	</script>
	</head>
	<body>
		<header id="header">	
			<!-- end pulled right: nav area -->
			<h1>
				<TMPL_IF AML>
					<img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
				<TMPL_ELSE>
					<img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
				</TMPL_IF>
			</h1>
		</header>
		<div id="main" class="expanded clear padding-top-10">
		<form name="group" action="<TMPL_VAR NAME='ACTION'>" method="post">
  			
  				<h2>Please Select A Group</h2>
  				<span class="font-em-1_3 textRed clear">Please select the group you want to work in.</span>
  				<TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP>
  					<br/>
  					<span class="font-em-1_2">By selecting "No Group" you will be logged in using your default ID settings.</span>
  				</TMPL_UNLESS>
  				<TMPL_IF NAME="ERROR_MESSAGE">
					<p class="textRed">
						<TMPL_VAR NAME="ERROR_MESSAGE">
					</p>
				</TMPL_IF>
				<TMPL_INCLUDE NAME=common_hidden_input.tpl>
				<input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
				<input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
				<input type="hidden" name="EVENT" value="">

				<div class="top-spacing-10">
					<label class="col">
						<span class="hidden-label">Group Selection</span>
						<select id="group_select" name="GROUPS" class="form-control">
							<TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP>
								<option value="0">No Group</option>
							</TMPL_UNLESS>
							<TMPL_LOOP NAME="GROUPS">
								<option<TMPL_IF NAME='GROUP_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='GROUP_ID'>"><TMPL_VAR NAME='GROUP_NAME'></option>
							</TMPL_LOOP>
						</select>
					</label>
					<button class="btn btn-danger pull-left left-spacing-5" id="continue_group_select_button" type="button" onclick="send_event('MYACCOUNT/UPDATE_GROUP_SESSION');disable_buttons('continue_group_select_button')">Continue</button>
                                        <div id="pw-group-select" onclick="javascript:void(0);" class="pull-left left-spacing-5 hidden"><span class="loading_icon svg-icon-x-large loading-text">Loading...</span></div>
				</div>
				<div id="group-desc" class="clear top-spacing-10">
                    <div id="group-select-page">
		        <TMPL_INCLUDE NAME="group_select_data.tpl">
                    </div>
                </div>
		</form>
		</div>
		<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
	</body>
</html>
<!-- end v4/show_groups_select.tpl -->
