<!DOCTYPE html>
<html lang="en">
    <head>
        <TMPL_INCLUDE NAME="includes.tpl">
        <title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Announcements</TMPL_IF></title>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script>
            var glb_purpose_value = '<TMPL_VAR NAME=WEB20_GLB_PURPOSE_VALUE_DESC>';
            var dppa_value = '<TMPL_VAR NAME=WEB20_DPPA_VALUE_DESC>';
            var dmf_purpose_value = '<TMPL_VAR NAME=WEB20_DMF_PURPOSE_VALUE_DESC>';
            var show_print_warning = '<TMPL_VAR NAME=SHOW_PRINT_WARNING>';
        </script>   
    </head>
    <body class="menu-on-top">
    <div id="main" class="clear">
        <form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post">
        	<TMPL_INCLUDE NAME="header.tpl">
        	<script src="<TMPL_VAR NAME='JSPATH'>/v4/messages.js"></script>
        	<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
        	<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
        	<INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
        	<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
        	<INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
        	<INPUT type=hidden NAME="MSG_ID" VALUE="<TMPL_VAR NAME=MSG_ID>">
        	<INPUT type=hidden NAME="NXT_MSG_IDX" VALUE="<TMPL_VAR NAME=NXT_MSG_IDX>">

        	
        		<div id="announcements">
            		<table id="announcements_tbl">
            			<thead>
                			<tr>
								<th>Announcements</th> 
                	        	<th>Posted</th> 
                			</tr>
							<!-- row below needed - allows colspans with datatables -->
							<tr class="place">
								<td></td>
								<td></td>
							</tr>
             			</thead>
             			<tbody>
                			<TMPL_LOOP NAME='ANNOUNCEMENT_RESULTS_LOOP'>
                			<tr>
								<td class="messageLink" id="<TMPL_VAR name='msg_no'>">
									<a href="javascript:void(0);">
										<TMPL_VAR name="title">
									</a>
								</td>
                    	    	<td>
                    	    		<TMPL_VAR name="posted_date">
                    	    	</td> 
                			</tr>
                			</TMPL_LOOP> 
             			</tbody>
            		</table>
            	</div>
        </form>
        </div>
        <TMPL_INCLUDE NAME="footer.tpl">
    </body>
</html>
