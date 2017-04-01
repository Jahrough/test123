<TMPL_IF ENABLE_V3>

<style>
.myaccount-btn { width:auto; background:#F3352E; padding:2px 15px; cursor:pointer; display: inline-block; border-radius:5px; margin-right:10px; font-size: 12px !important; font-weight: normal !important; font-family: "Tahoma" !important; color: #fff !important; }
.myaccount-btn:last-of-type { margin-right:0; }
.red-btn { background: #ed1c24; color:#FFF !important; border:2px solid #fff; background:#ed1c24;border-color:#CA060D; }
.red-btn:hover { border-color: #ed1c24; }
</style>

<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetitle" align="center" width="87%"></td>
    <td align="left" width="13%" valign="top">
    <a class="myaccount-btn red-btn" href="javascript:printit();">Print</a>
    </td>
  </tr>
</table>

<TMPL_ELSE>

<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/coverage.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<table border="0" cellpadding="5" cellspacing="0" width="100%">
  <tr>
    <td class="coveragetitle" align="center" width="87%"></td>
    <td align="left" width="13%" valign="top">
    <table border="0" cellpadding="1" cellspacing="0" class="printborder">
      <tr>
        <td valign="top">
        <table border="0" cellpadding="0" cellpadding="0" width="100%" class="printbutton">
          <tr>
            <td valign="top" align="center" class="coveragetext">&nbsp;&nbsp;<a href="javascript:printit();">PRINT</a>&nbsp;&nbsp;</td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

</TMPL_IF>
