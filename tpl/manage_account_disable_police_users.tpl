<!-- BEGIN manage_account_disable_police_users.tpl -->
<TMPL_IF SA>
<!-- need one tmpl_if for each feature right here -->
 <TMPL_UNLESS NAME=HIDE_POLICE_RECORDS>
 <TMPL_UNLESS COMPANY_DISABLE_POLICE_RECORDS> 
  <fieldset>
    <div align="left" class="unifont1bold"><legend>Police Records</legend></div>
     <table cellpadding="0" cellspacing="0" width="95%">
        <tr>
          <td class="unifont1" width="58%">
            &nbsp;User Role: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FPWInfo','600','500',0,0,0,1,0,0,'','police_user_role_help');">Help</a> 
          </td>
              <td class="unifont1" ></td>
              <td align="right"><input type="radio" name="POLICE_RECORDS_USER_ROLES" value="1"<TMPL_IF NAME=POLICE_RECORDS_USER_ROLES_1> checked="checked"</TMPL_IF>/></td>
              <td class="unifont1">&nbsp;Order/View &#8209; Company</td>
        </tr>
        <tr>
              <td class="unifont1" >&nbsp;</td><td class="unifont1" >&nbsp;</td>
              <td align="right"><input type="radio" name="POLICE_RECORDS_USER_ROLES" value="2"<TMPL_IF NAME=POLICE_RECORDS_USER_ROLES_2> checked="checked"</TMPL_IF>/></td>
              <td class="unifont1">&nbsp;Order/View &#8209; User</td>
         </tr>
         <tr>
              <td class="unifont1" >&nbsp;</td><td class="unifont1" >&nbsp;</td>
              <td align="right"><input type="radio" name="POLICE_RECORDS_USER_ROLES" value="3"<TMPL_IF NAME=POLICE_RECORDS_USER_ROLES_3> checked="checked"</TMPL_IF>/></td>
              <td class="unifont1">&nbsp;Order Only</td>
         </tr>
         <tr>
              <td class="unifont1" >&nbsp;</td><td class="unifont1" >&nbsp;</td>
              <td align="right"><input type="radio" name="POLICE_RECORDS_USER_ROLES" value="4"<TMPL_IF NAME=POLICE_RECORDS_USER_ROLES_4> checked="checked"</TMPL_IF>/></td>
              <td class="unifont1">&nbsp;View Only</td>
        </tr>
     </table>
  </fieldset>
  </TMPL_UNLESS>
  </TMPL_UNLESS>
</TMPL_IF>
<!-- END manage_account_disable_police_users.tpl -->
