<!-- begin popup/user_themes.tpl -->
<html>
<head>
<title>User Themes Preview</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
  <table width="100%">
  <TMPL_IF NAME="USER_THEME_1">
  <tr>
    <td width="100%">
     <div id="searchResults" style="padding:10px;"><h2>Default theme</h2>
     </div>    
    </td>
  </tr>
  <tr>
	<td width="100%"><img alt="Default theme" title="Default theme" width="993" height="1032" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/th1.gif"></td>
  </tr>
  </TMPL_IF>

  <TMPL_IF NAME="USER_THEME_2">
  <tr>
    <td width="100%">
     <div id="searchResults" style="padding:10px;"><h2>Classic Accurint theme</h2>
     </div>    
    </td>
  </tr>
  <tr>
	<td width="100%"><img alt="Classic Accurint theme" title="Classic Accurint theme" width="993" height="1032" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/th2.gif"></td>
  </tr>
  </TMPL_IF>

  <TMPL_IF NAME="USER_THEME_3">
  <tr>
    <td width="100%">
     <div id="searchResults" style="padding:10px;"><h2>Black n' Tan theme</h2>
     </div>    
    </td>
  </tr>
  <tr>
	<td width="100%"><img alt="Black n' Tan theme" title="Black n' Tan theme" width="993" height="1032" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/th3.gif"></td>
  </tr>
  </TMPL_IF>

  <TMPL_IF NAME="USER_THEME_4">
  <tr>
    <td width="100%">
     <div id="searchResults" style="padding:10px;"><h2>Blue n' Tan theme</h2>
     </div>    
    </td>
  </tr>
  <tr>
	<td width="100%"><img alt="Blue n' Tan theme" title="Blue n' Tan theme" width="993" height="1032" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/th4.gif"></td>
  </tr>
  </TMPL_IF>

  </table>

</body>
</html>
<!-- end popup/faq.tpl -->
