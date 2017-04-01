<TMPL_UNLESS NEW_WIN>
<ul id="nav-fav-bar" class="nav<TMPL_IF MAIN_MENU> hidden</TMPL_IF>">
    <li class="srchHome">
        <div class="btn-group">
            <button id="home-button" class="dropdown-toggle home-icon svg-icon-small" onclick="javascript:send_portal_event('SEARCH/SHOW_MENU',true);">
                <span class="tooltip centered">Home</span>
            </button>
            <button id="search-menu-button" data-toggle="dropdowncustom" data-target="#srchHome-dropdown">
                Search Menu
                <span class="fa fa-caret-down"></span>
            </button>
            <div id="srchHome-dropdown" class="dropdown-menu"></div>
        </div>
    </li>            
    <li id="nav-fav-sel">        
        <div class="btn-group">
            <button id="nav-fav-select" data-toggle="dropdown" class="dropdown-toggle">
                <span class="btnText favorites-star-red-filled svg-icon-small">
                    <TMPL_IF WEB20_FAVS>
                        Favorites
                    <TMPL_ELSE>
                        Frequent
                    </TMPL_IF>
                </span>
                <span class="fa fa-caret-down"></span>
            </button>
            <ul id="nav-fav-dropdown" class="dropdown-menu">
                <li>
                    <a href="#" onClick="javascript:refresh_favoritesBar(this); return false;">Favorites</a>
                </li>
                <li>
                    <a href="#" onClick="javascript:refresh_favoritesBar(this); return false;">Frequent</a>
                </li>
            </ul>
        </div>
    </li>
    <li id="nav-fav-viewall">
        <button class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
            <span class="more-actions"></span>
        </button>
        <ul class="dropdown-menu dropdown-menu-right tab-dropdown anim-fadeInDown">
            <li role="presentation" class="dropdown-header">
                Favorite Searches 
            </li>
        </ul>
    </li>
</ul>
</TMPL_UNLESS>