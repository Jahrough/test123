<!-- begin v2/police_records_order_detail.tpl -->
<html>
<head>

<title>Police Records Order Detail</title>

<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<tmpl_var application_type>/tabs.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/bps/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/print.css" rel="stylesheet" type="text/css" media="print">
<link href="<TMPL_VAR NAME='CSSPATH'>/smartkey.css" rel="stylesheet" type="text/css">

</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="" class="alternatebody">

<div id="hd">
<h2><a trackid="hdr_top_logo"></a></h2>
</div> 

<!-- BEGIN wrapper DIV -->
<div id="wrapper">
<table width="800" border="0" id="containerTable">
<tbody>
<tr> 
<td id="containerLeft" valign="top" align="left"> 
<form name="POLICE_RECORDS_ARREST_RECORD_SEARCH" action="<TMPL_VAR NAME=ACTION>" method="post">
                                                                                    
<!-- begin search body --> 
<!-- OPEN THE DIV NOW --> 
<div id="tabBkg"> 

<!-- end search_inputs_tabs.tpl --> 


<!-- Include the Search Input form for the search --> 
<table id="searchTable" cellpadding="1" cellspacing="0" border="0"> 
<tbody> 
<tr> 
<td style="padding-left: 10px; padding-top: 5px;" valign="top"> <table cellspacing="0" border="0"> 
<tbody> 
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td>
            <table cellpadding="1" cellspacing="0" border="0">
	      <tr>
                <td>
	         <table cellspacing="0" border="0">
                        <tr>
                          <td>
                           <table cellspacing="0" border="0">
                            <tr>
                                  <td class="largefont1bold" align="left">&nbsp;OrderId&nbsp;</td>
                                  <td class="largefont1bold" align="left">&nbsp;Adjuster&nbsp;</td>
                                  <td class="largefont1bold" align="left">&nbsp;Claim #</td>
                            </tr>
                            <tr>
                              <td class="nsinputs" valign="top"><input readonly type=text size="16" maxlength="30" name="ORDERID" value="<TMPL_VAR NAME=ORDERID>" ></td>
                              <td class="nsinputs" valign="top"><input readonly type=text size="16" maxlength="30" name="ADJUSTERID" value="<TMPL_VAR NAME=ADJUSTERID>" ></td>
                              <td class="nsinputs" valign="top"><input readonly type=text size="30" name="REFERENCE_CODE" id="REF_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" ></td>                              
                            </tr>
                            <tr>
                            <td><br /></td>
                            </tr>
	         </table>
                </td>
	      </tr>

              <tr>
                <td class="largefont1bold">&nbsp;<TMPL_VAR NAME=ADDRESS_LBL></td>
              </tr>
              <tr>
                <td class="nsinputs" colspan="3"><input readonly  type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="7" size="60" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=57></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left" colspan="2">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td class="largefont1bold">&nbsp;City</td>
            <td class="largefont1bold">&nbsp;State</td>
            <td class="largefont1bold">&nbsp;Zip</td>
          </tr>
          <tr>
            <td class="nsinputs"><input readonly type="text" name="CITY" id="CITY" tabindex="9" size="15" value="<TMPL_VAR NAME=CITY>" maxlength="31" ></td>
            <td class="nsinputs"><input readonly type="text" name="STATE" id="STATE" tabindex="10" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" ></td>
            <td class="nsinputs"><input readonly type="text" name="ZIP" id="ZIP" tabindex="11" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>" ><TMPL_IF ZIP4>-<input readonly type="text" name="ZIP4" id="ZIP4" tabindex="12" size="4" maxlength="4" value="<TMPL_VAR NAME=ZIP4>" ></TMPL_IF></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td class="largefont1bold" colspan="2">&nbsp;<TMPL_VAR NAME=NAME_LBL></td>
          </tr>
          <tr>
            <td class="nsinputs"><input readonly type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="14" size="25" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength="20"></td>
            <td class="nsinputs"><input readonly type="text" name="MI" id="MI" tabindex="15" size="15" value="<TMPL_VAR NAME=MI>" maxlength="15"></td>
            <td class="nsinputs"><input readonly type="text" name="LAST_NAME" id="LAST_NAME" tabindex="16" size="35" value="<TMPL_VAR NAME=LAST_NAME>" maxlength="30"></td>
          </tr>
          <tr>
            <td class="nsinputs"><b>(First)</b></td>
            <td class="nsinputs"><b>(Middle)</b></td>
            <td class="nsinputs"><b><TMPL_VAR NAME=LAST_NAME_HINT_LBL></b></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td>
        <table cellpadding="1" cellspacing="0" border="0">
          <tr>
            <td class="largefont1bold">&nbsp;Birth Date</td>
            <td class="largefont1bold">&nbsp;SSN</td>
          </tr>
          <tr>
            <td class="nsinputs"><input readonly type="text" name="DOB" id="DOB" size="14" tabindex="19" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
            <td class="nsinputs"><input readonly type="text" name="SSN" id="SSN" tabindex="20" size="16" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td class="largefont1bold" colspan="2">&nbsp;2nd Party Involved</td>
          </tr>
          <tr>
            <td class="nsinputs"><input readonly type="text" name="FIRST_NAME2" id="FIRST_NAME2" tabindex="22" size="25" value="<TMPL_VAR NAME=FIRST_NAME2>" maxlength="20"></td>
            <td class="nsinputs"><input readonly type="text" name="LAST_NAME2" id="LAST_NAME2" tabindex="24" size="35" value="<TMPL_VAR NAME=LAST_NAME2>" maxlength="30"></td>
          </tr>
          <tr>
            <td class="nsinputs"><b>(First)</b></td>
            <td class="nsinputs"><b><TMPL_VAR NAME=LAST_NAME_HINT_LBL></b></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="1" cellspacing="0">
          <tr>
            <td class="largefont1bold" colspan="2">&nbsp;3rd Party Involved</td>
          </tr>
          <tr>
            <td class="nsinputs"><input readonly type="text" name="FIRST_NAME3" id="FIRST_NAME3" tabindex="25" size="25" value="<TMPL_VAR NAME=FIRST_NAME3>" maxlength="20"></td>
            <td class="nsinputs"><input readonly type="text" name="LAST_NAME3" id="LAST_NAME3" tabindex="27" size="35" value="<TMPL_VAR NAME=LAST_NAME3>" maxlength="30"></td>
          </tr>
          <tr>
            <td class="nsinputs"><b>(First)</b></td>
            <td class="nsinputs"><b><TMPL_VAR NAME=LAST_NAME_HINT_LBL></b></td>
          </tr>
        </table>
        </td>
      </tr>
</tbody>
</table> 
</td> 


<td style="padding-left: 10px; padding-right: 10px; padding-top: 5px;" valign="top" width="33%"> 
<table cellspacing="0" border="0"> 
<tr> 
<td style="padding-right: 10px; padding-top: 18px;" valign="top" width="33%">
</td>
</tr>
<tr>
<td valign="top" align="left"> 
<table border="0" cellpadding="2" cellspacing="0">
<tr>
</table> 
</td> 
</tr> 
</table> 
</td> 
</tr> 

<!-- Start the next row now --> 
<tr> 
<td colspan="2" align="center"><div id="lineVertRedDot"></div></td> </tr> </tbody> </table> </div> </div> 

<!-- end search body -->

</form>
</td>  
</div>
</td>
</tr>
</tbody>
</table>

</div>
<!-- END wrapper DIV -->
</body>
</html>
<script>
</script>
<!-- end v2/police_records_order_detail.tpl -->
