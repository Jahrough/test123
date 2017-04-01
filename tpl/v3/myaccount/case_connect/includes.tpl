<!-- begin myaccount/case_connect/includes.tpl -->
<script src="<TMPL_VAR NAME='JSPATH'>/v3/CaseConnect/prototype.js"></script>
<TMPL_UNLESS RUN_CC_SUBSCRIBER_LIST>

<script src="<TMPL_VAR JSPATH>/v3/CaseConnect/Accurint.js"></script>
<script src="<TMPL_VAR JSPATH>/v3/CaseConnect/PagingTable.js"></script>
<script>
Accurint.imgPath = "<TMPL_VAR IMGPATH>";
Accurint.miscAction = "<TMPL_VAR ACTION_MISC>";
Accurint.reportAction = "<TMPL_VAR ACTION_REPORT>";
Accurint.soundAction = "<TMPL_VAR ACTION_SOUND>";
Accurint.sessionId = "<TMPL_VAR SESSION_ID>";
Accurint.csrf_token = "<TMPL_VAR CSRF_TOKEN>";
Accurint.helpPath = "<TMPL_VAR HLPPATH>";
Accurint.CaseConnect = {};
Accurint.CaseConnect.helpUrl = Accurint.helpPath + '/v3/case_deconfliction_help.html';
Accurint.CaseConnect.subscriberId = "<TMPL_VAR SUBSCRIBER_ID>";
Accurint.CaseConnect.deconflictionId = "<TMPL_VAR DCONFLCT_ID>";
Accurint.CaseConnect.notificationId = "<TMPL_VAR NOTICE_ID>";
Accurint.CaseConnect.option = "<TMPL_VAR OPT>";
Accurint.CaseConnect.extraFeatures = <TMPL_IF CASE_CONNECT_EXTRA>true<TMPL_ELSE>false</TMPL_IF>;
Accurint.CaseConnect.subscriberView = <TMPL_IF RUN_CC_SUBSCRIBER_LIST>true<TMPL_ELSE>false</TMPL_IF>;

// do not check here as checking from main menu continues
//  Accurint.CaseConnect.pollInterval = <TMPL_IF CASE_CONNECT_POLL_INTERVAL><TMPL_VAR CASE_CONNECT_POLL_INTERVAL><TMPL_ELSE>0</TMPL_IF>;
//  Accurint.CaseConnect.checkNow = <TMPL_IF CASE_CONNECT_CHECK_NOW><TMPL_VAR CASE_CONNECT_CHECK_NOW><TMPL_ELSE>0</TMPL_IF>;

  Accurint.CaseConnect.pollInterval = 0;
  Accurint.CaseConnect.checkNow = 0;

  </script>
  <script src="<TMPL_VAR JSPATH>/v3/CaseConnect/CaseConnect.js"></script>
  <script src="<TMPL_VAR JSPATH>/v3/CaseConnect/Edit.js"></script>
  
</TMPL_UNLESS>
<script>
  function set_chk_bx_lebel(){
    var chkArry = $j('td input[type="checkbox"]');
     $j.each(chkArry,function(){
	 if(!this.id)
	 {
		$j(this).attr( "id", $j(this).attr('name')+'_input');      
	 }
	 $j(this).before('<label style="display: none" for="' + this.id + '">'+this.id+'</label>');
    });
  }
</script>
<!-- end myaccount/case_connect/includes.tpl -->
