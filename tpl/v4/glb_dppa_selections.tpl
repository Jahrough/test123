<div id="permissible-row">
    <script type="text/javascript">
        var _dppa_required = <TMPL_IF NAME=REQ_DPPA_PERMISSBLE_USE>true<TMPL_ELSE>false</TMPL_IF>,
            _glba_required = <TMPL_IF NAME=REQ_GLBA_PERMISSBLE_USE>true<TMPL_ELSE>false</TMPL_IF>;
    </script>
    <ul class="unmarked_list">
        <TMPL_IF NAME=HID_DPPA_PERMISSBLE_USE>
	    <li>
    		<strong>Your DPPA Permissible Use:</strong>
    		<TMPL_IF NAME="DYNAMIC_GLB_DPPA">
    		    <a class='<TMPL_IF GRP_DPPA_IN_EFFECT>nocolorlink<TMPL_ELSE>uline</TMPL_IF>' id="dppa_reason" href="javascript:show_permissible_modal('SEARCH/SHOW_GLB_CLOSE','DPPAwin','','',1,1,1,1,1,0);">
    			<TMPL_VAR NAME="WEB20_DPPA_VALUE_DESC">
    		    </a>
    		<TMPL_ELSE>
                    <span id="dppa_reason">
                        <TMPL_VAR NAME="WEB20_DPPA_VALUE_DESC">
                    </span>
    		</TMPL_IF>
            </li>
        </TMPL_IF>
        <TMPL_IF NAME=HID_GLBA_PERMISSBLE_USE>
    	    <li>
    		<strong>Your GLBA Permissible Use:</strong>
    		<TMPL_IF NAME="DYNAMIC_GLB_DPPA">
    		    <a class='<TMPL_IF GRP_GLBA_IN_EFFECT>nocolorlink<TMPL_ELSE>uline</TMPL_IF>' id="glb_reason" href="javascript:show_permissible_modal('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">
    			<TMPL_VAR NAME="WEB20_GLB_PURPOSE_VALUE_DESC">
    		    </a>
    		<TMPL_ELSE>
                    <span id="glb_reason">
                        <TMPL_VAR NAME="WEB20_GLB_PURPOSE_VALUE_DESC">
                    </span>
    		</TMPL_IF>
            </li>
        </TMPL_IF>
        <TMPL_IF NAME=HID_DMF_PERMISSBLE_USE>
        	<li>
    	        <strong>Your DMF Permissible Use:</strong>
    	        <TMPL_IF NAME="DYNAMIC_GLB_DPPA">
    		    <a class='<TMPL_IF GRP_DMF_IN_EFFECT>nocolorlink<TMPL_ELSE>uline</TMPL_IF>' id="dmf_reason" href="javascript:show_permissible_modal('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">
        		    <TMPL_VAR NAME="WEB20_DMF_PURPOSE_VALUE_DESC">
        		</a>
    	        <TMPL_ELSE>
                    <span id="dmf_reason">
                        <TMPL_VAR NAME="WEB20_DMF_PURPOSE_VALUE_DESC">
                    </span>
        	    </TMPL_IF>
    	    </li>
        </TMPL_IF>
    </ul>  
</div>
