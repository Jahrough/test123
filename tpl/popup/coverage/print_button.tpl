    <TMPL_IF ENABLE_V3>

    <style>
    .myaccount-btn { width:auto; background:#F3352E; padding:2px 15px; cursor:pointer; display: inline-block; border-radius:5px; margin-right:10px; font-size: 12px !important; font-weight: normal !important; font-family: "Tahoma" !important; color: #fff !important; }
    .myaccount-btn:last-of-type { margin-right:0; }
    .red-btn { background: #ed1c24; color:#FFF !important; border:2px solid #fff; background:#ed1c24;border-color:#CA060D; }
    .red-btn:hover { border-color: #ed1c24; }
    </style>
    
    <a class="myaccount-btn red-btn" href="javascript:printit();">Print</a>
    
    <TMPL_ELSE>
    
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
    
    </TMPL_IF>
