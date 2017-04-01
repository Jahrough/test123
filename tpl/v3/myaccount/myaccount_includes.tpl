<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<title><TMPL_IF NAME="PAGE_TITLE"><TMPL_VAR NAME="PAGE_TITLE"><TMPL_ELSE>Search</TMPL_IF></title>

<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>
<script>
    var $j = jQuery.noConflict();
</script>

<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/utility.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/tips.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/myaccount.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/browserSpecifics.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/manage_account_508.js"></script>
<TMPL_IF SHOW_DYNAMIC_DESKTOP_CHAT>
    <script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/dynamic_desktop_myaccount.js"></script>
</TMPL_IF>


<link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/myaccount.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/mktree.css" rel="stylesheet" type="text/css">

<script type="text/javascript">
var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
function open_help() {
    if (vertical == 'gov' || vertical == 'le') {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
    } else {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
    }
}
function open_help_html(help_url,help_win) {
    general_win('<TMPL_VAR NAME=HLPPATH>/' + help_url,help_win,780,490,1,1,1,1,1,0);
}
function myaccount_event(param1,param2) { // IE 6 Needs
    if (param2) {
	setTimeout(function(){send_event(param1,param2)},250);
    } else {
	setTimeout(function(){send_event(param1)},250);
    }
}
var version = 'v3';
</script>

<TMPL_IF MANAGE_SHOW_USERS>
<TMPL_UNLESS SA_DISABLED>
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/user_admin_irs.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>

<script>
var userList;
$j(function() {
    userList = $j('#userList').DataTable({
        "lengthMenu": [25, 50, 100, 400],
        "order": [7, 'desc'],
        "columns": [
            { "type": "string" },
            { "type": "string" },
            { "type": "string" },
            { "type": "string" },
            { "type": "string" },
            { "type": "string" },
            { "type": "string" },
            { "type": "date" },
            { "type": "string" }
        ],
  "drawCallback": function( settings ) {
      $j('#userList tbody input[type="radio"][checked]').not(":checked").each(function() {
    var $box = $j(this);
    if($box.parent().find(":checked").length === 0){
        $box.prop("checked",true);
    }
      });
  }
    });
});

</script>


<TMPL_IF name="NO_PAGES_NEEDED">
<script>
    $j(function() {
        $j('#SEARCH_FIRSTNAME').on( 'keyup', function () {
            if(this.value.toUpperCase() == 'FIRSTNAME' || this.value.toUpperCase() == 'FIRST NAME'){
                userList.columns('th:nth-child(3)').search('').draw();
            } else {
                userList.columns('th:nth-child(3)').search( this.value ).draw();
            }
        } );
        $j('#SEARCH_LASTNAME').on( 'keyup', function () {
            if($j(this).val() !== ''){
                $j('#last-name-range > div.active').removeClass('active');
            }
            if(this.value.toUpperCase() == 'LASTNAME' || this.value.toUpperCase() == 'LAST NAME'){
                userList.columns('th:nth-child(2)').search('').draw();
            } else {
                userList.columns('th:nth-child(2)').search( this.value ).draw();

            }
        } );
        $j('#SEARCH_LOGINID').on( 'keyup', function () {
            if(this.value.toUpperCase() == 'LOGINID' || this.value.toUpperCase() == 'LOGIN ID'){
                userList.columns('th:nth-child(1)').search('').draw();
            } else {
                userList.columns('th:nth-child(1)').search( this.value ).draw();
            }
        } );
        $j('#SYSTEM_ADMIN').change(function(){
            if($j('#SYSTEM_ADMIN').prop('checked')){
                userList.columns('th:nth-child(4)').search('Y').draw();
            } else {
                userList.columns('th:nth-child(4)').search('').draw();
            }
        } );
        $j('#COMPANY_CONTACT_CHECKBOX').change(function(){
            if($j('#COMPANY_CONTACT_CHECKBOX').prop('checked')){
                userList.columns('th:nth-child(5)').search('Y').draw();
            } else {
                userList.columns('th:nth-child(5)').search('').draw();
            }
        });
        
        $j('table.dataTable > thead > tr > th').click(function(){
            $j('table.dataTable > thead > tr > th > div').remove();
            $j('th.sorting_desc').eq(0).html('<span>'+$j('th.sorting_desc').eq(0).text()+'</span><div class="desc-arrow"></div>');
            $j('th.sorting_asc').eq(0).html('<span>'+$j('th.sorting_asc').eq(0).text()+'</span><div class="asc-arrow"></div>');
        });
        $j('#view-all-users').click(function(){
            $j('#last-name-range > div.active').removeClass('active');
            $j('div.section-row input[type="text"]').val('');
            $j('div.section-row input[type="checkbox"]').prop('checked',false);
            $j('#ALLUSERS').val(3);
            userList.columns('td').search('').draw();
        });
    });
</script>

</TMPL_IF>

</TMPL_UNLESS>
</TMPL_IF>

<TMPL_IF NAME="MANAGE_GROUPS_SHOW">
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
<script>
var userList;
$j(function() {
    userList = $j('#order_list').DataTable({
        "lengthMenu": [25, 50, 100, 400]
    });
});
</script>
</TMPL_IF>

<script>
function setIIDelements(att, val, name){
  var elements = document.getElementsByClassName(name);
  for(var i=0;i<elements.length;i++) {
    var iid_option = elements[i].id;
    document.getElementById(iid_option).style[att]=val;
  }
}
function checkIIDelements(name,setvalue){
  var elements = document.getElementsByClassName(name);
  for(var i=0;i<elements.length;i++) {
    elements[i].checked=true;
    if (setvalue) {
      elements[i].value=setvalue;
    }
  }
}
function showhideIID(att,val){
  setIIDelements(att, val, 'instantIDgroup');
  showhideIIDwatchlists('display','none');
  if (val != 'none') {  // showing elements
    document.getElementById('iiddownicon').style.display='none';
    document.getElementById('iidupicon').style.display='';
    checkIIDelements('checkIIDcollapse',1);
    if (document.forms[0].IID_LATEST_VERSION.value == 1) {
      setIIDelements('display','none','instantIDversions');
    }
    if (document.forms[0].IID_EXACT_MATCH.value == 0) {
      setIIDelements('display','none','instantIDexactmatch');
    }
    if (document.forms[0].IID_DOB_MATCH.value == 0) {
      setIIDelements('display','none','instantIDdobmatch');
    }
    else {
      checkDOBMatchType(att,val);
    }
  }
  else { // not showing
    document.getElementById('iiddownicon').style.display='';
    document.getElementById('iidupicon').style.display='none';
    checkIIDelements('uncheckIIDcollapse',1);
  }
}
function showhideIIDcollapse(att,val){
  if (val == 'none') {
    showhideIID(att,val);
  }
  checkIIDelements('uncheckIIDcollapse');
  setIIDelements(att, val, 'instantIDcollapse');
}
function checkDOBMatchType(att,val){
  if (val != 'none') { // display the section
    setIIDelements('display','','instantIDdobmatch');
    if (document.forms[0].IID_DOB_MATCHTYPE.value != 'RadiusCCYY') {
      document.getElementById('iiddobmatchradius').style.display='none';
    }
  }
  else { // no display section
    setIIDelements('display','none','instantIDdobmatch');
  }
}
function showhideIIDDOB(att,val){setIIDelements(att,val,'instantIDdobmatch');checkDOBMatchType(att,val);}
function showhideIIDexact(att,val){setIIDelements(att,val,'instantIDexactmatch');}
function showhideIIDversions(att,val){setIIDelements(att,val,'instantIDversions');}
function showhideIIDwatchlists(att,val){setIIDelements(att,val,'instantIDwatchlists');}
function checkOtherWatchs(){checkIIDelements('checkIIDwatchlists',0);}
function uncheckOtherWatchs(){checkIIDelements('uncheckIIDwatchlists',1);}
function uncheckAllWatchButton(){checkIIDelements('uncheckIIDAllButton',1);}
</script>

  <script>
    $j(function(){
    	<TMPL_IF NAME="IID_SELECT_VERSION">
          $j('select[name="IID_SELECT_VERSION"]').val('<TMPL_VAR NAME="IID_SELECT_VERSION">');    	
    	</TMPL_IF>
    	<TMPL_IF NAME="IID_DOB_MATCHTYPE">
    	    $j('select[name="IID_DOB_MATCHTYPE"]').val('<TMPL_VAR NAME="IID_DOB_MATCHTYPE">');
    	</TMPL_IF>
    	<TMPL_IF NAME="IID_LAST_SEEN_THRESHOLD">
    	    $j('select[name="IID_LAST_SEEN_THRESHOLD"]').val('<TMPL_VAR NAME="IID_LAST_SEEN_THRESHOLD">');
    	</TMPL_IF>
    	<TMPL_IF NAME="IID_DOB_MATCHRADIUS">
    	    $j('select[name="IID_DOB_MATCHRADIUS"]').val('<TMPL_VAR NAME="IID_DOB_MATCHRADIUS">');
    	</TMPL_IF>
    	<TMPL_IF NAME="IID_GLOBAL_WATCH_THRESHOLD">
    	    $j('select[name="IID_GLOBAL_WATCH_THRESHOLD"]').val('<TMPL_VAR NAME="IID_GLOBAL_WATCH_THRESHOLD">');
    	</TMPL_IF>
    	<TMPL_IF NAME="IID_WATCHDOB_RADIUS">
    	    $j('select[name="IID_WATCHDOB_RADIUS"]').val('<TMPL_VAR NAME="IID_WATCHDOB_RADIUS">');
    	</TMPL_IF>
    });

   </script>


        <TMPL_IF SECURITY_COMPANY>
          <TMPL_UNLESS SA_DISABLED>
            <TMPL_UNLESS MANAGE_COMPANY_DISABLED>
              <script type="text/javascript" src="<TMPL_VAR JSPATH>/company_admin.js"></script>
              <script language="JavaScript">
                $j(function(){
                  if($j('[name=ENABLE_HC_EMAIL_DOMAIN]:checked').val() === "0"){
                    $j('#emailDomainHC').hide();
                  }
                  $j('#emailDomainHC .btn:contains("Add")').attr('onclick',"javascript:addOption($j('#curDomain'),$j('#newDomain').val(),$j('#newDomain').val()); $j('#newDomain').val('');");
                  $j('#emailDomainHC .btn:contains("Delete")').attr('onclick',"javascript:delOption($('curDomain'));");
                  $j('a:contains("Help")').each(function(){
                  if($j(this).text() === 'Help'){$j(this).addClass('myaccLnk');}
                  })
                  var new_sel_height = $j('#curDomain > option').length * 25 < 150 ?  $j('#curDomain > option').length * 25 : 150;
                  $j('#curDomain').css('height',new_sel_height);
                })
                var curDomain = $j('curDomain');
                function addOption(selectbox, text, value)
                {
                  var domain = /^[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,})$/i;
                  var addVal = 1;

                  if (domain.test(text) !== false) {
                    if (selectbox.children('option').length < 10) {
                      for (var i = 0; i < selectbox.children('option').length; i++) {
                        if (value.toUpperCase() === selectbox.children('option').eq(i).text().toUpperCase()) {
                          addVal = 0;
                        }
                      }
                      if (addVal === 1) {
                        selectbox.append('<option value="'+value+'">'+text+'</option>');
                      } else {
                        //already exists
                        alert('Domain is already in the current list.');
                      }
                    } else {
                      alert('There may only be 10 active domains at one time. Please remove one before adding a new value.');
                    }
                   } else {
                     alert('Domain format error. Please enter the domain in the following format with no spaces: xxxxxxx.xxx');
                   }
                   var new_sel_height = selectbox.children('option').length * 25 < 150 ?  selectbox.children('option').length * 25 : 150;
                   selectbox.css('height',new_sel_height);
                 }

                 function delOption(selectbox)
                 {
                   var i;
                   var count = 0;
                   selectbox = $(selectbox);

                   for (i = selectbox.options.length - 1; i >= 0; i--)
                   {
                     if (selectbox.options[i].selected)
                       count++;
                   }

                   if (count < selectbox.options.length) {
                     for (i = selectbox.options.length - 1; i >= 0; i--)
                     {
                       if (selectbox.options[i].selected)
                         selectbox.remove(i);
                     }
                   } else {
                     alert('You must have at least 1 domain in your approved domain list.\n\n');
                   }
                 }

                 function showhide(att, val) {
                   document.getElementById("emailDomainHC").style[att] = val;
                 }

              </script>
              
            </TMPL_UNLESS>
          </TMPL_UNLESS>
        </TMPL_IF>
        <TMPL_IF SHOW_MANAGE_SM_MONITOR>
          <TMPL_UNLESS IM_ON_COMP_SEC>
            <TMPL_UNLESS MANAGE_GROUPS>
            <script type="text/javascript">
              function show_hide_sm_monitor_block(show){
                var sm_monitor_roles = document.getElementById('SM_MONITOR_ROLES');
                if( show == 1 ){
                    sm_monitor_roles.style.display = 'inline-block';
                }
                else{
                    sm_monitor_roles.style.display = 'none';
                }
                return;
              }
            </script>
            </TMPL_UNLESS>
          </TMPL_UNLESS>
        </TMPL_IF>
            <TMPL_IF NAME="THRESHOLD">
              <script>
                $j(function(){
                    $j('select[name="THRESHOLD"]').val('<TMPL_VAR NAME="THRESHOLD">');
                });
              </script>
            </TMPL_IF>

     <TMPL_IF ALLOW_ATACRAIDS_SSO> 
          <TMPL_UNLESS IM_ON_COMP_SEC>
          <TMPL_UNLESS MANAGE_GROUPS>
            <script type="text/javascript">
              function show_hide_atacraids_block(show){
                var atacraids_roles = document.getElementById('ATACRAIDS_ROLES');
                if( show == 1 ){
                    atacraids_roles.style.display = 'inline-block';
                }
                else{
                    atacraids_roles.style.display = 'none';
                }
                return;
              }
            </script>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          </TMPL_IF>
            
        
