<script>
    var jsonSections_v4 = [];
    var jsonSearches_v4 = {};
    function init_createGlobalSections_v4() {
        //loop through each section
        jsonSections_v4 = [];
        sectionsJSON.forEach(function(primarySectionObj,i) {
            jsonSections_v4.push({
                enabled: 1,
                section: primarySectionObj.id,          //section id
                label: primarySectionObj.label,         //title text
                icon: primarySectionObj.icon,           //icon class
                active: primarySectionObj.active === 1, //  ???
                dEvt: primarySectionObj.href,           //search event
                section_id: i + 1,                      //  ???
            });
        });
    }
    function init_createGlobalArrays_v4() {
        sectionsJSON2.forEach(function(sectionObj,i){
            var sectionid = sectionObj.sid+"_ps";
            var sectionIndex = i;
            var _section_pos = 1;

            if (sectionIndex !== undefined){
                //jsonSections[sectionIndex].searches = [];
                jsonSections_v4[sectionIndex].searches = [];
            }

            searchesJSON.forEach(function(searchObj){
                var searchName = searchObj.id;
                var nameSplit = searchName.split('_');
                if(nameSplit[0] === sectionObj['li-prefix']){
                    var tempObj = {};
                    if (!searchObj.disabled && !searchObj.deleted) {
                        tempObj.enabled = 1;
                        tempObj.label = searchObj.label;
                        tempObj.path = searchObj.href;
                    } else {
                        tempObj.enabled = 0;
                        tempObj.label = searchObj.label;
                        tempObj.path = "";
                    }
                    if (searchObj["menu-show-group"] || searchObj["menu-hide-group"]) {
                        tempObj.showHide = searchObj["menu-show-group"] ? 0 : 1;
                        tempObj.section = sectionid;
                    }

                    if (searchName !== undefined) {
                        tempObj.id = searchName;
                        tempObj.idx = nameSplit.pop();
                        tempObj.active = typeof(searchObj.active) !== "undefined" && searchObj.active === 1;
                        tempObj.section_pos = _section_pos++;
                        jsonSearches_v4[searchName] = tempObj;

                        //prep_online20_forms_arry(tempObj.path, searchName, data.icon, tempObj.label.trim());
                        if (tempObj.path !== "") {
                            var ol2_evt = tempObj.path.replace(/^[^\(]+\(\'([^\)]+)\'.*$/, "$1");
                            var idx = (searchName.match(/\d+$/))?searchName.match(/\d+$/)[0]:0;
                            online20_icons[idx] = searchObj.icon !== undefined ? searchObj.icon : 'person_icon'; //default fa-user
                            online20_forms[ol2_evt] = { title: searchObj.label, icon: online20_icons[idx] };
                        }

                        if (sectionIndex !== undefined){
                            //jsonSections[sectionIndex].searches.push(searchName);
                            jsonSections_v4[sectionIndex].searches.push(searchName);
                        }
                    }
                    delete tempObj;
                }
            });
        });
    }
</script>