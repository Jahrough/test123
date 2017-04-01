<TMPL_INCLUDE NAME="application_input_radio_groups.tpl">
<form id="mform" action="#" method="post"  onsubmit="javascript:return false;">

<div id="search-form-fields" class="col col-7">
    <div style="display:none" id="indicator_imgages_preloaded">
        <img id="indicator_img_red" src="<tmpl_var NAME=IMGPATH>/red_ball.png" width="32" height="32" alt="" />
        <img id="indicator_img_green" src="<tmpl_var NAME=IMGPATH>/green_ball.png" width="32" height="32" alt="" />
    </div>

        <input type="hidden" name="MYTASK" value="<TMPL_VAR NAME=MYTASK_LIST_ORDER_ID>">

            <div class="search-form-col col-xs-12 col-sm-12 col-md-8 col-lg-8" id="mform-div">

                <fieldset class="wb-left-fieldset">
                <b><tmpl_var name='MYTASK_TYPE'> Information </b> <hr/><br/>

                <TMPL_LOOP NAME="SECTIONS">
                    <tmpl_if SUBSTART> <b>Search Status & Additional Information</b><hr><br/></tmpl_if>
                    <TMPL_UNLESS NAME="SECTION_HIDDEN">
                        <hr>
                        <div class="row">
                            <section class="col col-6">
                                <span style="margin-bottom: 5px; font-weight: bold">
                                <tmpl_if MANUAL> <span class="round">M</span> <TMPL_VAR NAME=SECTION_LABEL> &nbsp;&nbsp;&nbsp;&nbsp; This is a Manual Mode Search
                                <tmpl_else>
                                    <img id="<TMPL_VAR NAME=SECTION_NAME>" src="<tmpl_var NAME=IMGPATH>/red_ball.png"  alt="yn" />&nbsp;&nbsp;&nbsp;&nbsp;
                                    <span class='mname'><TMPL_VAR NAME=SECTION_LABEL></span>  &nbsp;&nbsp;&nbsp; -- </span> <TMPL_VAR IMESG> 
                                </tmpl_if>
                                
                                <TMPL_IF NAME="SECTION_LABEL2">
                                    <div style="margin-left: 40px; font-size: 0.7em; margin-top: -8px"><TMPL_VAR NAME="SECTION_LABEL2">   

                                    </div>
                                </TMPL_IF>
                            </section>
                        </div>
                        <TMPL_INCLUDE NAME="mytask/mytask_radio_groups.tpl">  
                        <br/>
                    </TMPL_UNLESS>
                    


                    <TMPL_LOOP NAME="ROWS">
                        <div class="row">
                            <TMPL_LOOP NAME="ROW"><TMPL_INCLUDE NAME="../application_input_fields.tpl"></TMPL_LOOP>
                        </div>
                    </TMPL_LOOP>
                    <br/><br/>
                </TMPL_LOOP>
                </fieldset>
            </div>
</div>

<div class="col col-3" id="search-options">
    <div class="row">
        <div class="input col col-10">
            <label>
                <input type="text" id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="32"  placeholder="Reference ID">
                <span class="tooltip">Reference ID </span> 
            </label>
        </div>
        <div id="REFERENCE_CODE_CRITERIA" class="col col-10">
            <span id="ref_code_criteria" class="textGray hidden">The Reference ID must contain only valid characters. </span>
        </div>
    </div>
    <hr><br>
    <tmpl_loop name='sections'>
        <tmpl_include NAME="application_input_options.tpl"> 
        <tmpl_include NAME="mytask/mytask_input_options.tpl">  
    </tmpl_loop>
    <div class="panel panel-danger">
        <div class="panel-heading">
            <h4 class="panel-title">Show Instructions</h4>
            <span id='shhelp' class="pull-right clickable cursor-pointer"><i class="glyphicon glyphicon-chevron-up"></i></span>
        </div>
        <div class="panel-body">
            <h6 id='excol'  class="pull-right cursor-pointer"><span>Expand</span> All &nbsp;&nbsp;
                <span class="pull-right"><i class="glyphicon glyphicon-chevron-down"></i></span> 
            </h6>
            <tmpl_loop name='sections'>
                <b><tmpl_var SECTION_LABEL></b><br/>
                <p class='more'><tmpl_var HELP></p>
            </tmpl_loop>
        </div>
    </div>    

<div class="col col-7" id='portal-search-buttons'>
    <div class="pull-right">
        <input type="button" class="btn btn-danger" id="searchBtn" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="if(!validateForm()){ return false;}else{ show_loading(); send_event('<TMPL_VAR NAME=SEARCH_EVENT>');}">

        <input type="button" class="btn btn-clear" onClick="javascript:web20_clear_all();return false;" value="Clear"/>
    </div>    
</div>        

</form>


<script type="text/javascript">

var rules = JSON.parse('<TMPL_VAR RULES>');
var typeHash = {
        phone      :  ['PHONE'],
        apn        :  ['PARCEL'],
        name       :  ['LAST_NAME','FIRST_NAME'],
        nameSt     :  ['LAST_NAME','FIRST_NAME','STATE'],
        address    :  ['STREET_ADDRESS','CITY','STATE','ZIP'], 
        nameAdd    :  ['LAST_NAME','FIRST_NAME','STREET_ADDRESS','CITY','STATE','ZIP'],
        nameSsnAdd :  ['LAST_NAME','FIRST_NAME','STREET_ADDRESS','CITY','STATE','ZIP','SSN'],
        regn       :  ['REG_NUMBER']
};

$(function(){

    $('#mform-div :input').change( function() {redGreen(); });

    $("input[type='radio'][name^='phone-input-group']").click(function(e){handlePhoneOptions(e,this)});
    $("input[type='radio'][name^='prop-input-group']").click(function(e){handlePropOptions(e,this)});
    $("input[type='radio'][name^='dea-input-group']").click(function(e){handleDeaOptions(e,this)});

    if( radioGroupSelections('phone', 'phone-input-group', 'name' ) ) { toggle('phone','hide'); }
    if( radioGroupSelections('prop',  'prop-input-group',  'address')){ toggle('apn',  'hide'); }
    if( radioGroupSelections('dea',   'dea-input-group',   'name' ) ) { toggle('regn', 'hide'); }
    $('.mname').each(function(i){$(this).text(decode( $(this).text()  ))});

    removeDuplicateFormSettings(); //right side checkboxes
    handleHelpPanel();
  
    
});   

function validateForm(){
    var v = web20_validate();
    for(i in rules){
        if($('#'+i).length && $('#'+i).attr('src').indexOf('red') !=-1){
            alert('Please ensure that all search sections are green by typing in needed inputs');
            return false;
        };
    }
    return true;
    /*var v = true;
    for (k in rules){
        v = web20_validate(k);
    }
    return v;
    */
}
function handleHelpPanel(){
    //$(document).on('click', '.panel-heading span.clickable', function(e){
    $('#shhelp').on('click',  function(e){
    var $this = $(this);
    if(!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
        $this.parent().find('h4').text('Show Instructions');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
        $this.parent().find('h4').text('Hide Instructions');
    }
    })
    $('#shhelp').click();

    applyMoreLessLogic();
    applyExpColAll();
}

function applyExpColAll(){

    $('#excol').on('click', function(){
        if($(this).is(':contains("Expand")')){
            $('.morelink').click();
            $(this).find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
            $('#excol > span:first').text('Collapse');
        }else{
            $('.more').click();
            $(this).find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
            $('#excol > span:first').text('Expand');
        }
    });
}

function applyMoreLessLogic(){
    var showChar = 240;  
    var ellipsestext = "...";
    var moretext = "View more >";
    var lesstext = "View less";
    

    $('.more').each(function() {
        var content = $(this).html();
 
        if(content.length > showChar) {
            var c = content.substr(0, showChar);
            var h = content.substr(showChar, content.length - showChar);
            var html = c + '<span class="moreellipses">' + ellipsestext+ '&nbsp;</span><span class="morecontent"><span>' + h + '</span>&nbsp;&nbsp;<a href="" class="morelink">' + moretext + '</a></span>';
            $(this).html(html);
        }
    });
 
    $(".morelink").click(function(){
        if($(this).hasClass("less")) {
            $(this).removeClass("less");
            $(this).html(moretext);
        } else {
            $(this).addClass("less");
            $(this).html(lesstext);
        }
        $(this).parent().prev().toggle();
        $(this).prev().toggle();
        return false;
    });
}

function removeDuplicateFormSettings(){
    var pres = {};
    $('label[class="checkbox-toggle input"][for="SINGLE_CSZ"]').remove();
    $('label[class="checkbox-toggle input"][for="SINGLE_NAME"]').remove();

    $('label[class="checkbox-toggle input"]').each(function(){
        var txt = $(this).text();
        (pres[txt])?$(this).remove():pres[txt] = true;
    });
    var len = $('h3:contains("Form Settings")').length;
    var f = $('h3:contains("Form Settings")');
    for(var i =1;i<len;i++){
        $(f[i]).remove();
    }
    $('<br/><br/>').insertBefore('h3')
}

function redGreen(){
    function green(id){ if($('#'+id).length) $('#'+id).attr('src', $('#'+id).attr('src').replace('red','green'));}
    function red(id){  if($('#'+id).length) $('#'+id).attr('src', $('#'+id).attr('src').replace('green','red'));}
    function inspect(r,s,type){ 
        var done = 1;
        if( type in r[s]){
            $.each(r[s][type], function(i,val){if(! $('#'+val).val() ){done = 0;}})
        } 
        //console.log('result is '+ done + ' for '+ s + ' and ' +type);
        return done;
    }

    for(search in rules){
        if(inspect(rules, search, '1')){
            green(search);
        }else if('2' in rules[search]){
            red(search);
            (inspect(rules, search, '2'))?green(search):red(search);
        }else{
            red(search);
        }
    }
}


function radioGroupSelections(type, typeGroup, expectedValue){
    var retval = true;
    $.each( $("input:radio[name^='" + typeGroup + "']:checked"), function(i,v){ if($(v).data('idx') != expectedValue ){retval = false;return} } );
    return retval;
}


function toggle(type, show){
    for (var i = 0; i < typeHash[type].length; i++) {
        var fid = typeHash[type][i];
        if (show == 'show' && $('#'+fid).length) {
            $('#'+fid).show() 
        } else {
            $('#'+fid).hide();
        }
    }
}

function canBeHidden(type, currentSearchType){
    var ignore = {
        phoneType : ['PHONE_FINDER_REPORT_SEARCH','DA_WIRELESS_SEARCH','PHONE_LOOKUP_SEARCH' ],
        propType  : ['PORTAL_LOCATION_SEARCH','PROP_HISTORY_REPORT_SEARCH','PROP_HISTORY_PLUS_REPORT_SEARCH'],
        crimType  : ['CRIM_SEARCH'],
        deaType   : ['DEA_SEARCH']
    };
    for (var searches in rules){
        if( ignore[currentSearchType].indexOf(searches) != -1 ) continue;
        for( var f in typeHash[type]){
            var fid = typeHash[type][f];
            if('1' in rules[searches]  &&  rules[searches]['1'].indexOf(fid) != -1) return false;   
            if('1a' in rules[searches] && rules[searches]['1a'].indexOf(fid) != -1) return false;
            if('2' in rules[searches]  &&  rules[searches]['2'].indexOf(fid) != -1) return false;
            if('2a' in rules[searches] && rules[searches]['2a'].indexOf(fid) != -1) return false;
        }
    }
    return true;
}

function checkRadioStateAndDo(type, typeGroup, toBeChecked, toBeHidden, toBeShown){
    if(radioGroupSelections(type, typeGroup, toBeChecked )){ 
            toggle(toBeHidden,'hide'); 
            toggle(toBeShown,'show'); 
    }
}

function checkOtherSearchesAndDo(fieldsFromOtherSearches, currentField, currentSearchType){
    if(canBeHidden(fieldsFromOtherSearches, currentSearchType))  
    toggle(fieldsFromOtherSearches,'hide'); 
    toggle(currentField,'show');
}

function handlePhoneOptions(e, parent){
    var clickedType = $(parent).data('idx');
    var sec  = $(parent).data('sec');
    switch(clickedType){
        case 'phone' : checkOtherSearchesAndDo('nameSsnAdd', 'phone', 'phoneType'); break;
        case 'name'  : checkRadioStateAndDo('phone', 'phone-input-group', 'name', 'phone', 'nameSsnAdd' ); break;
    }
}  

function handlePropOptions(e, parent){
    var clickedType = $(parent).data('idx');
    var sec  = $(parent).data('sec');

    if(sec == 'PORTAL_LOCATION_SEARCH'){
        switch(clickedType){
           case 'name'     : checkOtherSearchesAndDo('address', 'nameSt' , 'propType'); break;
           case 'address'  : checkOtherSearchesAndDo('nameSt', 'address' , 'propType'); break;
        }
    }else{
        switch(clickedType){
           case 'apn'      : checkOtherSearchesAndDo('address', 'apn' , 'propType'); break;
           case 'address'  : checkRadioStateAndDo('prop', 'prop-input-group', 'address', 'apn', 'address' ); break;
        }
    }

}

function handleDeaOptions(e, parent){
    var clickedType = $(parent).data('idx');
    var sec  = $(parent).data('sec');
    switch(clickedType){
        case 'regn' :  checkOtherSearchesAndDo('name', 'regn', 'deaType'); break;
        case 'name'  : checkRadioStateAndDo('dea', 'dea-input-group', 'name', 'regn', 'name' ); break;
    }
}
</script>



