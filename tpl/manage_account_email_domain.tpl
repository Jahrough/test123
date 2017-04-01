<!-- BEGIN manage_account_email_domain.tpl -->

	<fieldset>
		<div align="left" class="unifont1bold">
			<legend>Email
			Domains
			</legend>
		</div>
		<div id="wrapper">
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
				<tr>
					<td colspan="2">
						<table border="0" cellpadding="0" cellspacing="0" width="95%">
							<tr>
								<td width="75%" nowrap class="unifont1" align="left">&nbsp;Enable Email Domains:&nbsp;&nbsp;</td>
								<td width="25%" align="left">
									<table border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td><input type="radio" name="ENABLE_HC_EMAIL_DOMAIN" value="1"<TMPL_IF ENABLE_HC_EMAIL_DOMAIN> checked="checked"</TMPL_IF> onclick="showhide('display','block')" /></td>
											<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
											<td><input type="radio" name="ENABLE_HC_EMAIL_DOMAIN" value="0"<TMPL_UNLESS ENABLE_HC_EMAIL_DOMAIN> checked="checked"</TMPL_UNLESS> onclick="showhide('display','none')" /></td>
											<td class="unifont1">No</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<br>
					</td>
				</tr>
			</table>
			<table width="100%" cellspacing="0" cellpadding="0" border="0" id="emailDomainHC" >
				<tr>
					<td colspan="2">
						<div class="unifont1">
							Adding domains to this list will restrict your users to the email domains contained within this list only.
							<a href="javascript:void(0);" onClick="generic_tip('Email Domains','<b>TO ADD A DOMAIN:</b>  Type the domain only in the input field under the &quot;Add Domain&quot;. You should only type in the domain, i.e.: &quot;yourdomain.com&quot; and click the &quot;Add&quot; button. When you\'re done adding your domain(s), click the &quot;Save Changes&quot; button at the bottom.<br><br><b>TO REMOVE A DOMAIN:</b>  Highlight a domain from the &quot;Current Domain(s)&quot; column and click the &quot;Delete&quot; button. When you\'re done deleting your domain(s), click the &quot;Save Changes&quot; button at the bottom.');">
								<img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14">
							</a>
						</div>
						<br>
					</td>
				</tr>
				<tr>
					<td width="50%" valign="top">
						<p class="medblack"><strong>Add Domain</strong></p>
						<input name="newDomain" value="" id="newDomain" onKeyPress="return disableEnterKey(event)">
					</td>
					<td width="50%"  valign="top">
						<p class="medblack"><strong>Current Domain(s):</strong></p>
						<select class="medblack2" name="curDomain" size="5" id="curDomain" style="width:100%" multiple>
							<TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
								<option value='<tmpl_var NAME='EMAIL_DOMAIN_ID'>'><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
							</TMPL_LOOP>
						</select>
					</td>
				</tr>
				<tr>
					<td align="center">
						<label for="add">
							<input class="medblack" type="button" name="Add" value="Add" onclick="addOption(curDomain,this.form.elements['newDomain'].value,this.form.elements['newDomain'].value); this.form.elements['newDomain'].value ='';">
						</label>
					</td>
					<td align="center">
						<label for="remove">
							<input class="medblack" type="button" name="Delete" value="Delete" onclick="delOption(curDomain)">
						</label>
					</td>
				</tr>
				<tr><td colspan="2"><input type="hidden" name="ADDEDDOMAINS" value=""></td></tr>
			</table>
			<TMPL_IF ENABLE_HC_EMAIL_DOMAIN><script>document.getElementById("emailDomainHC").style.display="block";</script></TMPL_IF>
			<script language="JavaScript">
				function disableEnterKey(e)
				{
					 var key;
					 if(window.event)
						  key = window.event.keyCode;     //IE
					 else
						  key = e.which;     //firefox
					 if(key == 13)
						  return false;
					 else
						  return true;
				}
			</script>
		</div>
	</fieldset>

  <!-- END manage_account_email_domain.tpl -->
