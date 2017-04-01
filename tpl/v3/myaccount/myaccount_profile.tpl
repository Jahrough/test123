<!-- begin myaccount_profile.tpl -->
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row pd15">
            <div>
                <TMPL_INCLUDE NAME="myaccount/myaccount_profile_data.tpl">
            </div>
        </div>
        <TMPL_IF NAME="MYACCOUNT_COMPANY_TREE">
            <div class="section-row">
                <div>
                    <TMPL_INCLUDE NAME=myaccount/myaccount_company_tree.tpl>
                </div>
            </div>
        </TMPL_IF>
    </div>
</div>
<!-- end myaccount_profile.tpl -->
