<div class="formfields">

    <tmpl_if MULTIPLE_BILLGROUPS>
        <input type=hidden name="ACTIVE_BILLGROUP_NAME" value="">
            <!-- billgroup selection -->
            We have determined that you have the ability to administer multiple billgroups and/or multiple products.  Please make your selection as appropriate.
            <p>
            </p><div class="form_label"><label for="billgroup">Billgroup</label>:</div>
            <div class="form_field">
                <select name="billgroupdata" id="billgroupdata" title="Billgroup">
                    <TMPL_LOOP NAME=BILLGROUPLOOP>
                        <option value="<TMPL_VAR NAME=CompanyId>" <TMPL_IF NAME=Selected>selected</TMPL_IF>><TMPL_VAR NAME=CompanyName></option>
                    </TMPL_LOOP>
                </select>

                <a class="submitBtn" href="javascript:set_active_billgroup();" title="Select Billgroup">
                    Select
                </a>                        
            </div>
            <div class="clear"></div>


        <tmpl_else>
            <div class="form_label">Billgroup:</div>
            <div class="form_field">
                <span class="urlGroup">
                    <TMPL_LOOP NAME=BILLGROUPLOOP>
                        <TMPL_VAR NAME=CompanyName>
                    </TMPL_LOOP>
                </span>
            </div>
            <div class="clear"></div>
    </tmpl_if>


    <TMPL_IF IS_ADMIN_REPORTING>
        <TMPL_INCLUDE NAME=myaccount/reports/report_extra_form_inputs.tpl>  
    </TMPL_IF>
            
</div>
