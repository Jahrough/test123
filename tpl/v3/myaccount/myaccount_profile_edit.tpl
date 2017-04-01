<!-- begin myaccount/myaccount_profile_edit.tpl -->
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<noscript>Your browser does not support JavaScript!</noscript>
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row side-pd150">
            <fieldset>
                <div>
                    <legend>Company Edit Options</legend>
                </div>
                <div class="section-row pd15">
                    <span class="warningmessage" style="font-weight:normal;padding-top: 10px;display: block;margin-top: 10px;">Please be advised that other Administrators on the account also have the ability to submit change requests.  You should allow 1-2 business days for your request to be processed.  You can email <a class="myaccLnk bold" href="mailto:LNPOC.request@lexisnexis.com">LNPOC.request@lexisnexis.com</a> and check the status if your request is not processed within the 1-2 business day timeframe.</span>
                </div>
                <table class="mgt15">
                    <tr>
                        <td>
                            <table class="listed-inputs">
                                <tbody>
                                    <tr>
                                        <td>
                                            <b>Company ID:</b>
                                        </td>
                                        <td>
                                            <TMPL_VAR NAME=C_COMPANYID>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b><label for="comp_name">Company Name:</label> </b>
                                            <TMPL_VAR NAME=C_COMPANYNAME>
                                        </td>
                                        <td>
                                            <input id="comp_name" placeholder="Company Name" type="text" name="COMPANYNAME">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <b>Contact Name: </b>
                                            <TMPL_VAR NAME=C_MAINNAME>
                                        </td>
                                        <td>
                                            <label for="con_frst_name" style="display: none">first name</label>
                                            <input id="con_frst_name" placeholder="First Name" type="text" name="CONTACT_FIRST_NAME"><br>
                                            <label for="con_mdl_name" style="display: none">middle name</label>
                                            <input id="con_mdl_name" placeholder="Middle Name" type="text" name="CONTACT_MIDDLE_NAME"><br>
                                            <label for="con_lst_name" style="display: none">last name</label>
                                            <input id="con_lst_name" placeholder="Last Name" type="text" name="CONTACT_LAST_NAME"><br>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="listed-inputs">
                                <tr>
                                    <td colspan="2">
                                        <b>Physical Address</b>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="addr1">Address 1: </label></b>
                                        <TMPL_VAR NAME='C_ADDR_LINE1'>
                                    </td>
                                    <td>
                                        <input id="addr1" placeholder="Street Address" type="text" name="MAIN_ADDR_LINE1">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="addr2">Address 2:</label> </b>
                                        <TMPL_VAR NAME='C_ADDR_LINE2'>
                                    </td>
                                    <td>
                                        <input id="addr2" placeholder="Street Address 2" type="text" name="MAIN_ADDR_LINE2">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="adr_cty">City:</label> </b>
                                        <TMPL_VAR NAME=C_ADDR_CITY>
                                    </td>
                                    <td>
                                        <input id="adr_cty" placeholder="City" type="text" name="MAIN_ADDR_CITY">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="MAIN_ADDR_STATE">State:</label> </b>
                                        <TMPL_VAR NAME=C_ADDR_STATE>
                                    </td>
                                    <td>
                                        <input id="MAIN_ADDR_STATE" placeholder="State" type="text" name="MAIN_ADDR_STATE" size="2" maxlength="2">
                                        <div class="helpQtn" onClick="modal_states('MAIN_ADDR_STATE');">
                                            <div class="pickerIcon"></div>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="zip">Zip:</label> </b>
                                        <TMPL_VAR NAME=C_ADDR_POSTALCODE>
                                    </td>
                                    <td>
                                        <input id="zip" placeholder="Zip" type="text" name="MAIN_ADDR_POSTALCODE">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <b><label for="ph">Phone:</label> </b>
                                        <TMPL_VAR NAME=C_PHONE_VOICE1>
                                    </td>
                                    <td>
                                        <input id="ph" placeholder="Phone" type="text" name="MAIN_PHONE_VOICE1">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <div class="section-row child-divs-left mgt15">
                    <div>
                        <a class="btn grey-btn" href="javascript:send_event('MYACCOUNT/SHOW_PROFILE');">Back</a>
                    </div>
                    <div class="mgl10">
                        <a class="btn red-btn" href="javascript:send_event('MYACCOUNT/UPDATE_PROFILE');" onClick="return validate();">Submit</a>
                    </div>
                    <div class="mgl10">
                        <a class="btn darkgrey-btn" href="javascript:document.MYACCOUNT.reset()">Clear</a>
                    </div>
                </div>
            </fieldset>
        </div> 
    </div>    
</div>    
            
<input type="hidden" name="NEW_CONTACT" value="<TMPL_IF NAME=C_MAINNAME>0<TMPL_ELSE>1</TMPL_IF>">
<!-- end myaccount/myaccount_profile_edit.tpl -->
