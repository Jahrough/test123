<div class="font-12">
    <br /><strong>Permissible Use</strong><br />
    <TMPL_IF NAME=HID_DPPA_PERMISSBLE_USE>
        DPPA: <strong><TMPL_VAR NAME="WEB20_DPPA_VALUE_DESC"></strong><br />
    </TMPL_IF>
    <TMPL_IF NAME=HID_GLBA_PERMISSBLE_USE>
        GLBA: <strong><TMPL_VAR NAME="WEB20_GLB_PURPOSE_VALUE_DESC"></strong><br />
    </TMPL_IF>
    <TMPL_IF NAME=HID_DMF_PERMISSBLE_USE>
        DMF: <strong><TMPL_VAR NAME="WEB20_DMF_PURPOSE_VALUE_DESC"></strong><br />
    </TMPL_IF>
</div>
