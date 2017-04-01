<TMPL_IF NAME=DA_WIRELESS_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-1" name="phone-input-group-1" checked="checked"  data-idx="name" data-sec='DA_WIRELESS_SEARCH'>
            <span>Search using SSN or Name/Address</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-2" name="phone-input-group-1"  data-idx="phone" data-sec='DA_WIRELESS_SEARCH'>
            <span>Search using Phone Number</span>
        </label>
    </div>
</TMPL_IF>
<TMPL_IF NAME=PHONE_FINDER_REPORT_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-3" name="phone-input-group-2" checked="checked"  data-idx="name" data-sec='PHONE_FINDER_REPORT_SEARCH'>
            <span>Search using SSN or Name/Address</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-4" name="phone-input-group-2"  data-idx="phone"  data-sec='PHONE_FINDER_REPORT_SEARCH'>
            <span>Search using Phone Number</span>
        </label>
    </div>
</TMPL_IF>
<TMPL_IF NAME=PHONE_LOOKUP_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-5" name="phone-input-group-3" checked="checked"  data-idx="name"  data-sec='PHONE_LOOKUP_SEARCH'>
            <span>Search using SSN or Name/Address</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-6" name="phone-input-group-3"  data-idx="phone" data-sec='PHONE_LOOKUP_SEARCH'>
            <span>Search using Phone Number</span>
        </label>
    </div>
</TMPL_IF>
<TMPL_IF NAME=CANADIAN_PHONE_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-13" name="phone-input-group-4" checked="checked"  data-idx="name"  data-sec='CANADIAN_PHONE_SEARCH'>
            <span>Search using Name</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-14" name="phone-input-group-4"  data-idx="phone" data-sec='CANADIAN_PHONE_SEARCH'>
            <span>Search using Phone Number</span>
        </label>
    </div>
</TMPL_IF>


<TMPL_IF NAME=PROP_HISTORY_REPORT_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-7" name="prop-input-group-1" checked="checked"  data-idx="address" data-sec='PROP_HISTORY_REPORT_SEARCH'>
            <span>Find by Address</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-8" name="prop-input-group-1"  data-idx="apn" data-sec='PROP_HISTORY_REPORT_SEARCH'>
            <span>Find by APN</span>
        </label>
    </div>
</TMPL_IF>
<TMPL_IF NAME=PROP_HISTORY_PLUS_REPORT_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-9" name="prop-input-group-2" checked="checked"  data-idx="address" data-sec='PROP_HISTORY_PLUS_REPORT_SEARCH'>
            <span>Find by Address</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-10" name="prop-input-group-2"  data-idx="apn"  data-sec='PROP_HISTORY_PLUS_REPORT_SEARCH'>
            <span>Find by APN</span>
        </label>
    </div>
</TMPL_IF>
<TMPL_IF NAME=PORTAL_LOCATION_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-11" name="prop-input-group-3" checked="checked"  data-idx="name"  data-sec='PORTAL_LOCATION_SEARCH'>
            <span>Find by Name</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-12" name="prop-input-group-3"  data-idx="address" data-sec='PORTAL_LOCATION_SEARCH'>
            <span>Find by Address</span>
        </label>
    </div>
</TMPL_IF>
<TMPL_IF NAME=DEA_SEARCH>
    <p class='col-md-offset-1'>Select the type of search.</p>
    <div class='row col-md-offset-1 col-md-6'>
        <label >
            <input type="radio" id="input-group-15" name="dea-input-group-1" checked="checked"  data-idx="address" data-sec='DEA_SEARCH'>
            <span>Find by Name</span>
        </label>
    </div>
    <div class='row col-md-offset-1 col-md-6'>
        <label>
            <input type="radio" id="input-group-16" name="dea-input-group-1"  data-idx="regn"  data-sec='DEA_SEARCH'>
            <span>Find by Registration</span>
        </label>
    </div>
</TMPL_IF>