<div class="pageFooterWrapper">
    <div id="glbdppaCon" class="pageFooterCon">
      <p><b><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DPPA_CLOSE','DPPAwin','','',1,1,1,1,1,0);">Your DPPA Permissible Use</a>:</b>&nbsp;<span name="dppa_reason" id="dppa_reason"><script>document.write(dppa_value);</script></span><TMPL_ELSE>Your DPPA Permissible Use:</b>&nbsp;<script>document.write(dppa_value);</script></TMPL_IF></p>
      <p><b><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_GLB_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your GLBA Permissible Use</a>:</b>&nbsp;<span name="glb_reason" id="glb_reason"><script>document.write(glb_purpose_value);</script></span><TMPL_ELSE>Your GLBA Permissible Use:</b>&nbsp;<script>document.write(glb_purpose_value);</script></TMPL_IF></p>
      <p><b><TMPL_IF DYNAMIC_GLB_DPPA><a href="javascript:show_post_popup('SEARCH/SHOW_DMF_CLOSE','GLBwin','','',1,1,1,1,1,0);">Your DMF Permissible Use</a>:</b>&nbsp;<span name="dmf_reason" id="dmf_reason"><script>document.write(dmf_purpose_value);</script></span><TMPL_ELSE>Your DMF Permissible Use:</b>&nbsp;<script>document.write(dmf_purpose_value);</script></TMPL_IF></p>
    </div>
</div>
