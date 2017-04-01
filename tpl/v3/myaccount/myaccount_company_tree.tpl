<!-- begin myaccount_company_tree.tpl -->
<input type="HIDDEN" name="ACTIVE_COMPANY_ID">
<fieldset>
    <div>
        <legend>Please select the company to manage:</legend>
    </div>
    <div class="section-row" style="margin-top:35px;margin-bottom:35px;">
        <TMPL_VAR NAME="TREE">
    </div>
    <div class="section-row child-divs-left">
        <div>
            <TMPL_IF NAME="ACTIVE_COMPANY_ID">
                <a href="#" class="eclink btn darkgrey-btn" onClick="collapseTree('company_tree');expandToItem('company_tree','<TMPL_VAR NAME="ACTIVE_COMPANY_ID">'); return false;">Reset</a>&nbsp;&nbsp;&nbsp;
            </TMPL_IF>
            <a href="#" class="eclink btn darkgrey-btn" onClick="expandTree('company_tree'); return false;">Expand All</a>&nbsp;&nbsp;&nbsp;
            <a href="#" class="eclink btn darkgrey-btn" onClick="collapseTree('company_tree'); return false;">Collapse All</a>&nbsp;&nbsp;&nbsp;
        </div>
    </div>
</fieldset>
<!-- end myaccount_company_tree.tpl -->
