<div class="col-xs-3 portfolio-item">
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
        <!-- Favorites -->
        <div class="panel panel-default">
            <div class="favheader" role="tab" id="headingOne">
                <h2 class="panel-title section-header favorites-star-white svg-icon-normal">
                    <a data-toggle="collapse" data-parent="#accordion" href="#sidebar_pod_1" aria-expanded="false" aria-controls="collapseOne" class="collapsed">Favorite Searches</a>
                </h2>
                <a href="#" onclick="javascript:get_show_my_favs(); return false;" class="panel-header-link">Edit</a>
            </div>
            <div id="sidebar_pod_1" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true">
                <div class="panel-body" id="myfavlinks_ps_widget">
                </div>
            </div>
        </div>
        <!-- Frequent -->
        <div class="panel panel-default">
            <div class="panel-heading" role="tab" id="headingTwo">
                <h3 class="section-header panel-title frequent-star normal-size svg-icon-small">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#sidebar_pod_2" aria-expanded="false" aria-controls="collapseTwo">Frequent Searches</a>
                </h3>
                <a href="#" onclick="javascript:display_clear_freqs_dialog(); return false;" class="panel-header-link">Reset</a>
            </div>
            <div id="sidebar_pod_2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false">
                <div class="panel-body" id="myfreqlinks_ps_widget">
                </div>
            </div>
        </div>
        <!-- myTasks -->
        <TMPL_UNLESS NAME="MYTASKS_DISABLED">
        <div class="panel panel-default show-overflow">
            <div class="panel-heading" role="tab" id="headingThree">
                <h3 class="section-header panel-title normal-size my-tasks-icon svg-icon-normal">
                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#sidebar_pod_3" aria-expanded="false" aria-controls="collapseTwo">myTasks</a>
                </h3>
                <button type="button" data-toggle="dropdown" class="btn dropdown dropdown-toggle panel-header-link btn-link no-padding no-border">
                    Options
                    <span class="fa fa-caret-down"></span>
                </button>
                <ul id="nav-mytask-dropdown" class="dropdown-menu dropdown-menu-right">
                    <li>
                        <a href="#" onClick="javascript:createMytask(this); return false;">Create new myTask</a>
                    </li>
                    <li>
                        <a href="#" onClick="javascript:manageMytask(this); return false;">Manage myTasks</a>
                    </li>
                </ul>
            </div>
            <div id="sidebar_pod_3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
                <div class="panel-body" id="mytasklinks_ps_widget">
                </div>
            </div>
        </div>
        </TMPL_UNLESS>
        <!-- Start Page -->
        <div class="panel panel-default join-panel">
            <div id="start-page" class="start_page_icon">
                <TMPL_INCLUDE NAME="start_page.tpl">
            </div>
        </div>
        <!-- Education -->
        <div id="education_panel" class="panel panel-default join-panel">
            <div class="panel-heading">
                <h4 class="section-header panel-title education-icon">
                    <span>Education &amp; Training</span>
                </h4>
            </div>
            <div class="panel-body no-padding-top">
                <a href="mailto:CustomerEducation@LexisNexis.com" target="_blank">Email Education &amp; Training</a>
                <br/>
                <a href="https://learn.lexisnexis.com/lexisnexis/user_register.aspx" target="_blank">
                    Visit Learning Resource Center
                    <span class="external_link_icon svg-icon-tiny"></span>
                </a>
                <br/>
                <span>Call Education &amp; Training:<br/>(800) 201-6411</span>
            </div>
        </div>
    </div>
</div>
<!-- main menu  v4/main_menu_search_category.tpl-->
<TMPL_INCLUDE NAME="main_menu_search_category.tpl">
<!-- End  v4/main_menu_search_category.tpl-->
<!-- Announcements -->
<div class="col-xs-2">
    <div class="announcements-link" id="announcements_widget" data-widget-editbutton="false" data-widget-colorbutton="false" data-widget-deletebutton="false" data-widget-fullscreenbutton="false" data-widget-togglebutton="false">             
        <a onclick="javascript:void(0);" class="announcements_icon" href="#">Announcements</a>
    </div>
    <TMPL_IF NAME=WEB20_BANNER_IMG>
    <a href="<TMPL_VAR NAME=WEB20_BANNER_HREF>" target="_blank">            
        <img id="BannerAd" src="<TMPL_VAR NAME=IMGPATH>/BANNERS/<TMPL_VAR NAME=WEB20_BANNER_IMG>" alt="Banner Ad"/><!-- TODO: the img and banner should be changed to proper value or generated based on current ad. -->
    </a> 
    </TMPL_IF>           
</div>
