<TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP">
    <link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop.css" rel="stylesheet" type="text/css"/>
    <TMPL_UNLESS NAME="DDESKTOP_SEARCH">
        <link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop_diff.css" rel="stylesheet" type="text/css"/>
    </TMPL_UNLESS>
<TMPL_IF NAME="ALLOW_CHAT">
    <link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop_with_chat.css" rel="stylesheet" type="text/css"/>
</TMPL_IF>
</TMPL_IF>

<TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP">

<TMPL_UNLESS NAME="DDESKTOP_SEARCH">
    <TMPL_UNLESS NAME="SHOW_DYNAMIC_DESKTOP">
        <link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop_diff.css" rel="stylesheet" type="text/css"/>
    </TMPL_UNLESS>
</TMPL_UNLESS>
<TMPL_IF NAME="ALLOW_CHAT">
<link href="<TMPL_VAR NAME='CSSPATH'>/dynamic_desktop_with_chat.css" rel="stylesheet" type="text/css"/>
</TMPL_IF>
</TMPL_IF>


<TMPL_IF NAME="SHOW_DYNAMIC_DESKTOP">
        <TMPL_INCLUDE NAME="dynamic_desktop/ribbon_bar.tpl">
</TMPL_IF>
