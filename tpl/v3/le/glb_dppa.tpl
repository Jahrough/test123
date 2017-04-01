<div class="pageFooterWrapper">
    <div id="glbdppaCon" class="pageFooterCon">
          <p><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a title="DPPA Purpose" href="javascript:show_post_popup('SEARCH/SHOW_DPPA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:</b>&nbsp;<span name="dppa_reason" id="dppa_reason"><TMPL_VAR NAME=DPPA_VALUE_DESC></span><TMPL_ELSE>Your DPPA Permissible Use:</b>&nbsp;<TMPL_VAR NAME=DPPA_VALUE_DESC></TMPL_IF></p>
          <p><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a title="GLB Purpose" href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:</b>&nbsp;<span name="glb_reason" id="glb_reason"><TMPL_VAR NAME=GLB_PURPOSE_VALUE_DESC></span><TMPL_ELSE>Your GLBA Permissible Use:</b>&nbsp;<TMPL_VAR NAME=GLB_PURPOSE_VALUE_DESC></TMPL_IF></p>
          <p><b><TMPL_IF NAME="DYNAMIC_GLB_DPPA"><a title="DMF Purpose" href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:</b>&nbsp;<span name="dmf_reason" id="dmf_reason"><TMPL_VAR NAME=DMF_PURPOSE_VALUE_DESC></span><TMPL_ELSE>Your DMF Permissible Use:</b>&nbsp;<TMPL_VAR NAME=DMF_PURPOSE_VALUE_DESC></TMPL_IF></p>
    </div>
</div>
