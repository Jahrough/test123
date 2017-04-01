<!--<TMPL_VAR NAME=SERVER_ID>-->
<!-- begin login.tpl -->
<TMPL_IF IRB>
<TMPL_INCLUDE NAME=irb/base_login.tpl>
<TMPL_ELSE>
<TMPL_IF COLLECTION_SOLUTIONS>
<TMPL_INCLUDE NAME=fcol/login/base_login.tpl>
<TMPL_ELSE>
<TMPL_IF WEB_20>
<TMPL_INCLUDE NAME=v4/login/base_login.tpl>
<TMPL_ELSE>
<TMPL_INCLUDE NAME=login/base_login.tpl>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
<!-- end login.tpl -->
