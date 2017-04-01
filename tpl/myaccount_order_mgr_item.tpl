<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Court Search Report</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  </head>

  <body>
    <div align="center" class="myaccountitle">Court Search Report</div><p>

    <div class="myaccounttitle">Subject Information</div><p>

    <table width="100%">
	<tr>
	  <td valign="top">
	    <table width="50%" border="0" cellpadding="0" cellspacing="3">
		<tr>
		  <td class="smallfont1" nowrap valign="middle"><b>Name:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="SUBJECT"></td>
		</tr>
		<tr>
		  <td class="smallfont1" nowrap valign="middle"><b>SSN</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="SSN"></td>
		</tr>
		<tr>
		  <td class="smallfont1" nowrap valign="middle"><b>Date Submitted:</b></td>
		  <td class="smallfont1" nowrap valign="middle"><TMPL_VAR NAME="DATE_CREATED"></td>
		</tr>
	    </table>
	  </td>
	</tr>
    </table>

    <p>

    <div class="myaccountittle">Report Text</div><p>

    <table width="100%" border="1" cellpadding="0" cellspacing="0">
	<tr height="20" bgcolor="#d0ccd0">
	  <td class="smallfont1" nowrap align="center" valign="middle"><b>Report Type</b></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><b>State</b></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><b>County</b></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><b>Sequence #</b></td>
	</tr>

	<tr>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="ITEM_DESCRIPTION"></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="ITEM_STATE"><TMPL_VAR NAME="ITEM_STATE"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="ITEM_COUNTY"><TMPL_VAR NAME="ITEM_COUNTY"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	  <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_IF NAME="ITEM_SEQUENCE_NUM"><TMPL_VAR NAME="ITEM_SEQUENCE_NUM"><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	    </tr>

	<tr>
	  <td colspan="4"><pre><TMPL_VAR NAME="ITEM_REPORT_DATA"></pre></td>
	</tr>

	<TMPL_IF NAME="ITEM_REPORT_SUPPORTING_DATA">
	  <tr>
	    <td colspan="4"><pre><TMPL_VAR NAME="ITEM_REPORT_SUPPORTING_DATA"></pre></td>
	  </tr>
	  </TMPL_IF>
    </table>
  </body>
</html>
