<strong>Key</strong>
<ul class="unmarked_list">
    <li>
        <span class="high-risk-icon svg-icon-small">High Risk Indicator. These symbols may prompt you to investigate further.</span>
    </li>
    <li>
        <span class="medium-risk-icon svg-icon-small">Moderate Risk Indicator. These symbols may prompt you to investigate further.</span>
    </li>
    <li>
        <span class="general-info-icon svg-icon-small">General Information Indicator. These symbols inform you that additional information is provided.</span>
    </li>
    <TMPL_IF NAME="LEGEND_DECEASED">
        <li>
            <span class="deceased-icon svg-icon-small">Deceased Indicator.  These symbols inform you that the entity may be deceased.</span>
        </li>
    </TMPL_IF>
    <TMPL_IF NAME="LEGEND_PHONE_RECENT">
        <li>
            <span class="green-check-icon svg-icon-small">The most recent telephone listing as reported by Electronic Directory Assistance.</span>
        </li>   
    </TMPL_IF>
    <TMPL_IF NAME="LEGEND_PHONE_TYPE">
        <li>
            <span class="wireless-phone-icon svg-icon-small">Wireless Phone Indicator. These symbols indicate a cell phone number.</span>
        </li>
        <li>
            <span class="residential-phone-icon svg-icon-small">Residential Phone Indicator. These symbols indicate a residential phone number.</span>
        </li>
        <li>
            <span class="business-phone-icon svg-icon-small">Business Phone Indicator. These symbols indicate a business phone number.</span>
        </li>
        <li>
            <span class="shared-phone-icon svg-icon-small">Shared Phone Indicator. These symbols indicate the phone number may be shared between wireless and landline service.</span>
        </li>
        <li>
            <span class="fax-icon svg-icon-small">FAX Indicator. These symbols indicate a FAX number.</span>
        </li>
        <li>
            <span class="government-icon svg-icon-small">Government Phone Indicator. These symbols indicate a government phone number.</span>
        </li>
    </TMPL_IF>
    <TMPL_IF NAME="LEGEND_ADDL_FEES">
        <li>
            <span class="dollar-green-icon svg-icon-small">Additional Fees Apply.</span>
        </li>
    </TMPL_IF>
</ul>
