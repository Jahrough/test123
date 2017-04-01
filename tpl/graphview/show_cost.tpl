<!--begin:graphview/show_cost.tpl-->
<html>

<head>

  <title>Accurint Relavint</title>

  <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <script language="JavaScript" src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
  <script language="JavaScript" src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
  <script language="JavaScript">
  function show_graph () {
      if (!document.layers) {
	  resizeWindow(1560, 1160, 1, 20, 20);
	  send_event('GRAPHVIEW/START');
      } else {
	  alert('You must have Internet Explorer to access the Relavint capabilities.');
      }
  }
  </script>

</head>

<!--body bgcolor="#e6e7de"-->
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" background="<TMPL_VAR NAME="IMGPATH">/graphview/ghost_map.gif" onLoad="resizeWindow(800, 725, 1, 5, 5);window.focus();">

<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="10" width="1"><br>

<div align="center">

<table border="1" cellpadding="0" cellspacing="0" width="640" bgcolor="#ffffff">
  <tr>
    <td>
    <div align="center">
    <TMPL_IF NAME="TYPE_PERSON">
      <TMPL_INCLUDE NAME="inputs_person.tpl">
    </TMPL_IF>
    <TMPL_IF NAME="TYPE_BUSINESS">
      <TMPL_INCLUDE NAME="inputs_business.tpl">
    </TMPL_IF>
    </div>  
    </td>
  </tr>
</table>

<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="10" width="1"><br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      <font class="largefont1" color="red"><b>Relavint<sup>&#153;</sup></b></font>
      <br>
      <font class="unifont1bold">Visual Link Analysis</font>
    </td>
  </tr>
</table>

<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="10" width="1"><br>

<table border="0" cellpadding="0" cellspacing="0" width="600">
  <tr>
    <td align="left">
      <font class="unifont1">
<TMPL_IF NAME="LE">
      For the subject you have selected, a diagram will be displayed showing the possible relatives and associates, addresses, AKAs, vehicles, property, and businesses that we can link to the subject.&nbsp;&nbsp;In addition, known criminal records and concealed weapons permits for any of the people in the diagram will be identified.
      <br><br>
      For flat rate pricing customers, Relavint is available at no extra charge.&nbsp;&nbsp;You can create diagrams to help you visualize the relationships between people and their possible relatives and associates, vehicles, property, and even businesses.&nbsp;&nbsp;And you can "drill into" any of the objects to expand the diagram and show their links as well.&nbsp;&nbsp;Simply double click on any person, business or other entity on the diagram and it will expand to show its Relavint links.&nbsp;&nbsp;You can expand the links on the diagram as deeply as you want! You may also right click on any Relavint icon and run a search for no additional charge.
      <br><br>
      <TMPL_UNLESS HIDE_PRICES>For transactional law enforcement customers, Relavint costs just $2 per diagram.&nbsp;&nbsp;</TMPL_UNLESS>Expanding the diagram will help you visualize the relationships between people and their possible relatives and associates, vehicles, property, and even businesses.&nbsp;&nbsp;You can "drill into" any of the objects to expand the diagram and show their links by simply double clicking on the links you'd like to explore, for no additional fee.&nbsp;&nbsp;In addition, you can right-click on any object in the diagram (person, business, vehicle, etc.) and run an Accurint search for the object at the regular low Accurint price for the selected search.
      <br><br>
      If you want to learn more about agency/departmental flat rate pricing for law enforcement, please call <b>1-866-242-1440</b>.
      <br><br>
      <b>NOTE:</b>&nbsp;&nbsp;You must have Internet Explorer 6.0 to access the Relavint capabilities.&nbsp;&nbsp;You must disable any ad blocker, popup stopper, or firewall that blocks ActiveX to access Relavint.
      <!--
      <br><br>
      Click <b>"PURCHASE"</b> now to purchase the Relavint report on your subject.
      -->

<TMPL_ELSE>
      <br><br>
    For the subject you have selected, a diagram will be displayed showing the possible relatives and associates, addresses, AKAs, vehicles, property, and businesses that we can link to the subject.&nbsp;In addition, known criminal records and concealed weapons permits for any of the people in the diagram will be identified.<br>
    <br><TMPL_UNLESS HIDE_PRICES>Relavint costs just $2 per diagram.&nbsp;</TMPL_UNLESS>Expanding the diagram will help you visualize the relationships between people and their possible relatives and associates, vehicles, property, and even businesses.&nbsp;You can &quot;drill into&quot; any of the objects to expand the diagram and show their links by simply double clicking on the links you'd like to explore, for no additional fee.&nbsp;In addition, you can right-click on any object in the diagram (person, business, vehicle, etc.) and run a search for the object at the regular low price for the selected search.<br>
    <br>
    <b>NOTE:</b>&nbsp;&nbsp;You must have Internet Explorer 6.0 to access the Relavint capabilities.&nbsp;You must disable any ad blocker, popup stopper, or firewall that blocks ActiveX to access Relavint.<br>
    <!--
    <br>
    Click &quot;<b>PURCHASE</b>&quot; now to purchase the Relavint report on your subject. <br>
    -->
</TMPL_IF>
    <br>
      </font>
      <br>
    </td>
  </tr>
</table>

<img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="20" width="1"><br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center">
      <form action="<TMPL_VAR NAME="ACTION_REPORT">" method="post">
        <TMPL_INCLUDE NAME="common_hidden_input.tpl">
        <input type=hidden name="GRAPHVIEW_COST" value="1">
        <input type=hidden name="EVENT" value="GRAPHVIEW/START">
	<TMPL_LOOP NAME=PASS_THRU_INPUTS>
          <input type=hidden name="<TMPL_VAR NAME="name">" value="<TMPL_VAR NAME="value">">
	</TMPL_LOOP>
	<!--
	<a href="javascript:show_graph();"><img src="<TMPL_VAR NAME="IMGPATH">/graphview/purchase_button.gif" border="0" width="76" height="22"></a>
	-->
	<input name="BUTTON" tabindex="1" class="rb" type="button" value="Start Relavint" onMouseDown="flip_style(this,'rbd');" onClick="show_graph();disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb');">
      </form>
    </td>
  </tr>

</table>
</div>
</body>
</html>
<!--end:graphview/show_license.tpl-->
