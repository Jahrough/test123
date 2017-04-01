<!--begin:graphview/show_license.tpl-->
<html>

<head>

  <title>Accurint Relavint License Agreement</title>

  <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

</head>

<body >

<table border=0 width="90%" align="center">

  <tr>
    <td align="center">
      <font class="unifont1bold">Relavint<sup>&#153;</sup> Software License Agreement</font>
    </td>
  </tr>

  <tr>
    <td>

      <font class="unifont1bold"><u>NOTICE TO USER:</u></font>

      <br><br>

      <font class="smallfont1">
	PLEASE READ THIS CONTRACT CAREFULLY. BY USING ALL OR ANY
	PORTION OF THE RELAVINT SOFTWARE ("SOFTWARE") YOU ACCEPT ALL
	THE TERMS AND CONDITIONS OF THIS AGREEMENT. YOU AGREE THAT
	THIS AGREEMENT IS ENFORCEABLE LIKE ANY WRITTEN NEGOTIATED
	AGREEMENT SIGNED BY YOU. IF YOU DO NOT AGREE, DO NOT USE
	THIS SOFTWARE.
      </font>

      <br><br>

    </td>
  </tr>

  <tr>
    <td align="center">
      <!--begin:graphview/license_text.tpl-->
      <textarea name="graphview_license_text" style="width: 100%; height: 400; font-size: 8pt; font-family: Arial, Sans-Serif ; background: #ffffff; border: 2px #7e86c0 double;" readonly>
        <TMPL_INCLUDE NAME="license_text.tpl">
      </textarea>
      <!--end:graphview/license_text.tpl-->
    </td>
  </tr>

  <tr>

    <td align="center">

      <br>

      <form action="<TMPL_VAR NAME="ACTION_REPORT">" method="post">
	<TMPL_INCLUDE NAME="common_hidden_input.tpl">
	<input type=hidden name="GRAPHVIEW_LICENSE" value="1">
	<input type=hidden name="EVENT" value="GRAPHVIEW/START">
	<TMPL_LOOP NAME=PASS_THRU_INPUTS>
          <input type=hidden name="<TMPL_VAR NAME="name">" value="<TMPL_VAR NAME="value">">
	</TMPL_LOOP>
	<input type=submit value="I Agree">
      </form>

    </td>

  </tr>

</table>

</body>

</html>
<!--end:graphview/show_license.tpl-->
