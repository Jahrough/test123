<!-- begin security/restrict_ip.tpl -->
<div class="myaccount-section-title">
	<TMPL_IF RESTRICT_BY_COUNTRY>
	<b>Country IP Restrictions</b>
	<TMPL_ELSE>
	<b>Permitted Access By IP Address or Range</b>
	</TMPL_IF>
</div>
<div class="myaccount-containers">
    <div class="section">
            <div class="section-row">
                <fieldset>

                        <TMPL_INCLUDE NAME="security/restrict_ip_body.tpl">


                </fieldset>
            </div>
    </div>
</div>
<INPUT TYPE="HIDDEN" NAME="IP_ACCESS_ID" VALUE="">
<INPUT TYPE="HIDDEN" NAME="CURRENT_STATUS" VALUE="">
<!-- end security/restrict_ip.tpl -->