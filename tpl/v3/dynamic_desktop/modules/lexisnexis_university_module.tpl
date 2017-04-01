<!-- BEGIN dynamic_desktop/lexisnexis_university_module.tpl -->
    <div id="lexisnexis_university" style="vertical-align: middle; text-align: center; height: 225px;">
        <img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_lnu_content.png" alt="">
        <TMPL_UNLESS LNU_SSO>
        <a href="https://learn.lexisnexis.com/lnpsa" target="_blank"><img style="position: relative; left: 118px; bottom: 36px;" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_lnu_button.png" alt=""></a>
        <TMPL_ELSE>
        <a href="https://learn.lexisnexis.com/lnpsa" target="_blank" title="LexisNexis University School of Law Enforcement"><img style="position: relative; left: 118px; bottom: 36px;" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_lnu_button.png" alt=""></a>
        </TMPL_UNLESS>
    </div>
    <div style="clear:both;"></div>
<!-- END dynamic_desktop/lexisnexis_university_module.tpl -->

