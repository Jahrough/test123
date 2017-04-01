<!-- BEGIN security/company_security.tpl -->
<script type="text/javascript" src="<TMPL_VAR JSPATH>/company_admin.js"></script>
<script language="JavaScript">

function addOption(selectbox,text,value)
{
	var optn = document.createElement("OPTION");
	var domain = /^[a-z0-9-]+(\.[a-z0-9-]+)*\.([a-z]{2,})$/i;
	var addVal = 1;

	if (domain.test(text) != false){
		if(selectbox.options.length < 10){
			for (var i=0; i<selectbox.options.length; i++){
				if(value.toUpperCase() == selectbox.options[i].text.toUpperCase()){
					addVal = 0;
				}
			}
			if(addVal == 1){
				optn.text = text;
				optn.value = value;
				selectbox.options.add(optn);
			}else{
				//already exists
				alert('Domain is already in the current list.');
			}
		}else{
			alert('There may only be 10 active domains at one time. Please remove one before adding a new value.');
		}
	}else{
		alert('Domain format error. Please enter the domain in the following format with no spaces: xxxxxxx.xxx');
	}
}

function delOption(selectbox)
{
	var i;
	var count=0;

	for(i=selectbox.options.length-1;i>=0;i--)
	{
		if(selectbox.options[i].selected)
		count++;
	}

	if(count < selectbox.options.length){
		for(i=selectbox.options.length-1;i>=0;i--)
		{
			if(selectbox.options[i].selected)
			selectbox.remove(i);
		}
	}else{
		alert('You must have at least 1 domain in your approved domain list.\n\n');
	}
}

function showhide(att,val){
	document.getElementById("emailDomainHC").style[att]=val;
}

</script>
<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td align="center">
    <table width="90%" cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td align="center" class="myaccounttitle"><br>Manage Company<br><br>
	</td>
      </tr>
      <TMPL_IF NAME="ALERT_MSG">
      <tr>
        <td align="center" class="myaccounttitle"><TMPL_VAR NAME="ALERT_MSG"><br><br></td>
      </tr>
      </TMPL_IF>
      <tr>
        <td align="center">
	<table border="0" width="100%" cellpadding="10" cellspacing="0">
	  <tr>
	    <td width="50%" class="unifont1" valign="top">
		<table border="0" cellpadding="1" cellspacing="0" width="100%" class="myaccountborder">
		  <tr>
		    <td>
		    <table border="0" cellpadding="5" cellspacing="0" width="100%" class="myaccountalert">
		      <tr>
			<td class="smallfont1">
			<b>Company Security:</b><br><BR>
			&nbsp;&nbsp;Changes made within this section will be
			<br>
			&nbsp;&nbsp;applied to all users in your company.
			<br>
			</td>
			<td align="center"><a href="javascript: confirm_submit();"><img height="29" width="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/save_changes.gif"></a></td>
		      </tr>
		    </table>
		    </td>
		    </tr>
		</table>
		<TMPL_IF LOC>
			<TMPL_INCLUDE NAME="../loc/manage_account_disable_reports.tpl">
		<TMPL_ELSE>
                <TMPL_IF LNP>
                        <TMPL_INCLUDE NAME="../tcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
                <TMPL_IF TCOL>
                        <TMPL_INCLUDE NAME="../tcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
                <TMPL_IF FCOL>
                        <TMPL_INCLUDE NAME="../fcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
                <TMPL_IF GCOL>
                        <TMPL_INCLUDE NAME="../gcol/manage_account_disable_reports.tpl">
                <TMPL_ELSE>
			<TMPL_INCLUDE NAME="../manage_account_disable_reports.tpl">
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>

	      <TMPL_IF DISABLE_WATCHDOG>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_WATCHDOG" VALUE="1">
	      <TMPL_ELSE>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_WATCHDOG" VALUE="0">
	      </TMPL_IF>
	      <TMPL_IF DISABLE_COURT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_COURT" VALUE="1">
	      <TMPL_ELSE>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_COURT" VALUE="0">
	      </TMPL_IF>

		<TMPL_INCLUDE NAME="../manage_account_disable_features.tpl">

		<TMPL_INCLUDE NAME="../manage_account_disable_skiptrace.tpl">

		<TMPL_IF NAME="SHOW_EMAIL_DOMAIN">
			<TMPL_INCLUDE NAME="../manage_account_email_domain.tpl">
		</TMPL_IF>

		<br>
		<div align="center">
		<a href="javascript: confirm_submit();"><img height="29" width="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/save_changes.gif"></a>
		</div>
	    </td>
	    <td width="50%" valign="top">
	     <TMPL_IF NAME="IRS">
       	       <TMPL_INCLUDE NAME="../irs/manage_account_disable_searches.tpl">
	     <TMPL_ELSE>
	       <TMPL_IF NAME="HEA">
	         <TMPL_INCLUDE NAME="../hea/manage_account_disable_searches.tpl">
	       <TMPL_ELSE>
	         <TMPL_IF NAME="INS">
	           <TMPL_INCLUDE NAME="../ins/manage_account_disable_searches.tpl">
	         <TMPL_ELSE>
		   <TMPL_IF NAME="LEG">
		     <TMPL_INCLUDE NAME="../leg/manage_account_disable_searches.tpl">
                   <TMPL_ELSE>
                <TMPL_IF NAME="XBPS">
                <TMPL_INCLUDE NAME="../xbps/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="GOV">
		    <TMPL_INCLUDE NAME="../gov/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="LE">
		    <TMPL_INCLUDE NAME="../le/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="COL">
		    <TMPL_INCLUDE NAME="../col/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="LNP">
		    <TMPL_INCLUDE NAME="../tcol/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="TCOL">
		    <TMPL_INCLUDE NAME="../tcol/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="FCOL">
		    <TMPL_INCLUDE NAME="../fcol/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="GCOL">
		    <TMPL_INCLUDE NAME="../gcol/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="LOC">
		    <TMPL_INCLUDE NAME="../loc/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
                <TMPL_IF NAME="IRB">
		    <TMPL_INCLUDE NAME="../irb/manage_account_disable_searches.tpl">
                <TMPL_ELSE>
		    <TMPL_INCLUDE NAME="../manage_account_disable_searches.tpl">
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
               </TMPL_IF>
	           </TMPL_IF>
	         </TMPL_IF>
	       </TMPL_IF>
	     </TMPL_IF>
	    </td>
	  </tr>
	</table>
	</td>
	</tr>
	</table>
	</td>
      </tr>
      <tr>
        <td align="center">
	<a href="javascript: confirm_submit();"><img height="29" width="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/save_changes.gif"></a><br><br>
	</td>
      </tr>
</table>

        </td>
      </tr>
</table>

        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<!-- END security/company_security.tpl -->
