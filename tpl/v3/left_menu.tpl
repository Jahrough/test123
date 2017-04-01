<div class="menu">
                <div>
                    <a href="javascript:myacc_v3('<TMPL_VAR MYA_1_EVT>');">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_MYACCURINT>selected</TMPL_IF>">
                        <div class="myaccMoreIcon_sprite"></div>
                    </div>
                    <div>MY ACCURINT</div>
                    </a>
                </div>
                <div>
                    <a href="javascript:send_event('SEARCH/SHOW_ADV');">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_SEARCH>selected</TMPL_IF>">
                        <div class="myaccPeopleIcon_sprite"></div>
                    </div>
                    <div>PEOPLE <TMPL_IF NAME=IM_ON_SEARCH>H</TMPL_IF></div>
                    </a>
                </div>
                <div>
                    <a href="javascript:send_event('SEARCH/SHOW_BUS');">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_BUS_SEARCH>selected</TMPL_IF>">
                        <div class="myaccBusinessesIcon_sprite"></div>
                    </div>
                    <div>BUSINESS</div>
                    </a>
                </div>
                <div>
                    <a href="javascript:send_event('SEARCH/<TMPL_IF DELETE_CUSTOM_DA_WIRELESS>SHOW_DA_BASIC<TMPL_ELSE>SHOW_DA_WIRELESS</TMPL_IF>');">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_DA_SEARCH>selected</TMPL_IF>">
                        <div class="myaccPhonesIcon_sprite"></div>
                    </div>
                    <div>PHONES</div>
                    </a>
                </div>

                <div>
                    <a href="javascript:send_event('SEARCH/SHOW_COMBINED_MVR');">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_ASSET_SEARCH>selected</TMPL_IF>">
                        <div class="myaccAssetsIcon_sprite"></div>
                    </div>
                    <div>ASSETS</div>
                    </a>
                </div>
 
                <TMPL_UNLESS DELETE_CUSTOM_ATACRAIDS>
                <TMPL_IF ALLOW_ATACRAIDS_SSO>
                <TMPL_UNLESS DISABLE_ATACRAIDS_SSO>
                <div>
                    <a href="javascript:show_post_popup('SEARCH/SHOW_ATACRAIDS_DISCLAIMER','ATACRAIDSWin','900','580',1,1,1,1,1,0);">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_ANALYSIS>selected</TMPL_IF>">
                        <div class="myaccAnalysisIcon_sprite"></div>
                    </div>
                    <div>ANALYTICS</div>
                    </a>
                </div>
                </TMPL_UNLESS>
                </TMPL_IF>
                </TMPL_UNLESS>

                <div>
                    <a href="javascript:send_event('SEARCH/SHOW_LICENSE');">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_LICENSE_SEARCH>selected</TMPL_IF>">
                        <div class="myaccLicensesIcon_sprite"></div>
                    </div>
                    <div>LICENSES</div>
                    </a>
                </div>

                <div>
                    <a href="javascript:send_event('SEARCH/SHOW_CRIM');">
                    <div class="menuIcon <TMPL_IF NAME=IM_ON_LEGAL_SEARCH>selected</TMPL_IF>">
                        <div class="myaccCourtsIcon_sprite"></div>
                    </div>
                    <div>COURTS</div>
                    </a>
                </div>

</div>
