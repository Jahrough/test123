<!DOCTYPE html>
<!-- Begin supplemental_data_sources.tpl -->
<html>
<head>
<title>Court Search Wizard</title>
<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:500px;}
.myaccountborder ol{font-size:12px;color: #666;}
</style>

</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_INCLUDE NAME="header_info.tpl">

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

   <div class="txtWrapper">
    <div id="txtCon">
        <div class="left-header">Supplemental Data Sources</div>
       <table>
          <tr>
            <td>
                <ul>
                  <li><b>Watercraft</b>
                  <li><b>FAA Aircraft</b>
                  <li><b>FAA Certifications</b>
                  <li><b>Hunting & Fishing Permits</b>
                  <li><b>Concealed Weapon Permits</b>
                  <TMPL_UNLESS FCOL_TCOL>
                  <li><b>Voter Registration Information</b>
                  </TMPL_UNLESS>
                </ul>
            </p>
                <b>NOTE:</b>Supplemental Data Sources are subject to available coverage.            
            </td>
          </tr>
        </table>

        </div>
    </div>

</form>
</body>
</html>
<!-- End supplemental_data_sources.tpl -->
