<!-- begin security/restrict_ip_body.tpl -->
<link href="<TMPL_VAR NAME='CSSPATH'>/jquery.dataTables.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>

<script>
$j(function() {
    $j('#dataTables').DataTable({
          paging: false,
          info: false
     });
});


$j(function() {
    $j('#dataTables2').DataTable({
          paging: false,
          info: false
     });
});

function setid(id) {
    var this_form = document.forms[0];
    this_form.IP_ACCESS_ID.value=id;
}
</script>

<style>
table.dataTable.no-footer {
    border-bottom: none;
}
</style>

<br/>
<table cellpadding="0" cellspacing="0" class="myaccountbody">

  <tr>
      <td class="ta-center">
	  	<TMPL_IF RESTRICT_BY_COUNTRY>
			<a class="btn red-btn" href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP')">Restrict by IP</a>
        </TMPL_IF>
           <a  class="btn grey-btn" href="javascript:send_event('SECURITY/SHOW_SECURITY')">Return To Security</a>
      </td>
  </tr>


    <TMPL_IF IP>
	  <tr>
	    <td class="ta-center"><div class="warningmessage pd5 mgt5"><b>Your current IP: <TMPL_VAR NAME="ip"></b></div></td>
	  </tr>
    </TMPL_IF>

        <TMPL_IF SUCCESS>
          <tr class="myaccountbody">
              <td class="unifont1">
                  <br>
                  <div class="successmessage pd5">The IP address has been saved.</div>
                  </br>
              </td>
          </tr>
        </TMPL_IF>

        <TMPL_IF ERROR>
          <tr class="myaccountbody">
              <td class="unifont1">
                  <br>
                  <div class="errormessage pd5">
                      <TMPL_IF ERROR_STATUS_CHANGE>You currently have active Country restrictions on this account.  Please disable all active Country restriction records and try again.</TMPL_IF>
                      <TMPL_IF ERROR_TYPE_CONFLICT>You currently have active Country restrictions on this account.  Please disable all active Country restriction records and try again.</TMPL_IF>
                      <TMPL_IF ERROR_NUMRANGES_OVER_LIMIT>You already have the maximum number of <TMPL_VAR NAME=MAXRANGES> IP ranges enabled. Please contact Customer Service.</TMPL_IF>
                      <TMPL_IF ERROR_NUMRANGES_UNDER_LIMIT>You need to keep at least one IP range enabled.</TMPL_IF>
                      <TMPL_IF ERROR_DISABLING_OWN_RANGE>You cannot disable this IP range because doing so would lock you out.</TMPL_IF>	
                      <TMPL_IF ERROR_UNKNOWN>An unknown Error has occured.  Please try again in a few minutes.</TMPL_IF>                  
                  </div>
                  </br>
              </td>
          </tr>
        </TMPL_IF>

    </table> 

    <br/>   
    <table cellpadding="0" cellspacing="0" class="myaccountbody">

	  <tr>
	    <td><div class="myaccount-section-title">Enabled IP Access Records</div></td>
	  </tr>

      <tr>
          <td>  
               <table id="dataTables" class="display" cellspacing="0" width="100%">
                    <thead>
                          <TR class="myaccountbody">
                              <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
                                <td>Edit</td> 
                              </TMPL_IF>
                                <td><b>From IP</b></td>
                                <td><b>To IP</b></td> 
                                <td><b>Status</b></td>
                                <td><b>Date Changed</b></td>
                          </tr>
                    </thead>
                      <TMPL_LOOP COMPANY_IP_ACCESS_RECORDS_ENABLED>
                          <tr>  
                              <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
                                <td><b><a class="myaccLnk" href="javascript:setid(<TMPL_VAR ip_access_id>);send_event('SECURITY/SHOW_CHANGE_IP_STATUS')">Edit</a></b></td>
                              </TMPL_IF>
                                <td><TMPL_VAR IP1></td>
                                <td><TMPL_VAR IP2></td>
                                <td><TMPL_VAR status></td>
                                <td><TMPL_VAR datechanged></td>
                          </tr>
                      </TMPL_LOOP>
                </table>
          </td>
	  </tr>

   </table> 

   <br/>
   <br/>
    <table cellpadding="0" cellspacing="0" class="myaccountbody">

	  <tr>
	    <td><div class="myaccount-section-title">Disabled IP Access Records</div></td>
	  </tr>

      <tr>
          <td>  
               <table id="dataTables2" class="display" cellspacing="0" width="100%">
                    <thead>
                          <TR class="myaccountbody">
                              <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
                                <td>Edit</td> 
                              </TMPL_IF>
                                <td><b>From IP</b></td>
                                <td><b>To IP</b></td> 
                                <td><b>Status</b></td>
                                <td><b>Date Changed</b></td>
                          </tr>
                    </thead>
                      <TMPL_LOOP COMPANY_IP_ACCESS_RECORDS_DISABLED>
                          <tr>  
                              <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
                                <td><b><a class="myaccLnk" href="javascript:setid(<TMPL_VAR ip_access_id>);send_event('SECURITY/SHOW_CHANGE_IP_STATUS')">Edit</a></b></td>
                              </TMPL_IF>
                                <td><TMPL_VAR IP1></td>
                                <td><TMPL_VAR IP2></td>
                                <td><TMPL_VAR status></td>
                                <td><TMPL_VAR datechanged></td>
                          </tr>
                      </TMPL_LOOP>
                </table>
          </td>
	  </tr>
   </table> 

<!-- end security/restrict_ip_body.tpl -->