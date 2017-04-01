<!DOCTYPE html>
<html lang="en">
    <head>
        <TMPL_INCLUDE NAME="../includes_mytasks.tpl">
        <style>
            #widget-grid .fa {
            margin-top:10px;
            }
        </style>
    </head>
        <body class="menu-on-top">
        <TMPL_INCLUDE NAME="../header.tpl">

        <div id="main" role="main" style="margin-top: 0px!important;">

            <TMPL_INCLUDE NAME="top_navigation.tpl">

            <!-- actual start of the create mytask part -->
        <section id="widget-grid" class="">

                <div class="col-xs-12 col-sm-9 col-md-9 col-lg-9">
                    <h1 class="page-title">
                        <!-- PAGE HEADER -->
                        <i class="fa-fw fa fa-user"></i>
                        <i class="fa-fw fa fa-desktop"></i>&nbsp; Show myTask  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onClick="javascript:send_event('SEARCH/SHOW_MENU'); return false;">Return to Home >> </a>

                    </h1>
                </div>

        </section>


            <!-- begin ACTUAL content -->



<div role="content" style="display: block;">

    <div style="display:none" id="indicator_imgages_preloaded">
        <img id="indicator_img_red" src="<tmpl_var NAME=IMGPATH>/red_ball.png" width="32" height="32" alt="" />
        <img id="indicator_img_green" src="<tmpl_var NAME=IMGPATH>/green_ball.png" width="32" height="32" alt="" />
    </div>

    <form id="show-run-form" action="#" method="post" class="smart-form" onsubmit="javascript:return false;">

        <input type="hidden" name="MYTASK" value="<TMPL_VAR NAME=MYTASK_LIST_ORDER_ID>">

        <div class="widget-body">

            <div class="search-form-col col-xs-12 col-sm-12 col-md-8 col-lg-8" id="show-run-form-div">

                <fieldset class="wb-left-fieldset">
                
                <TMPL_LOOP NAME="SECTIONS">

                    <TMPL_UNLESS NAME="SECTION_HIDDEN">
                        <div class="row">
                            <section class="col col-6">
                                <div style="margin-bottom: 5px; font-weight: bold"><img id="section_indicator_<TMPL_VAR NAME=SECTION_NAME>" class="section_indicator" src="<tmpl_var NAME=IMGPATH>/red_ball.png" width="32" height="32" alt="section indicator" />&nbsp;<TMPL_VAR NAME=SECTION_LABEL></div>
                                <TMPL_IF NAME="SECTION_LABEL2">
                                    <div style="margin-left: 40px; font-size: 0.7em; margin-top: -8px"><TMPL_VAR NAME="SECTION_LABEL2"></div>
                                </TMPL_IF>
                            </section>
                        </div>
                    </TMPL_UNLESS>

                    <TMPL_LOOP NAME="ROWS">

                        <div class="row">

                            <TMPL_LOOP NAME="ROW">
                                <TMPL_INCLUDE NAME="application_input_fields.tpl">
                            </TMPL_LOOP>

                        </div>

                    </TMPL_LOOP>

                </TMPL_LOOP>

                </fieldset>

                <footer>
                    <button type="submit" class="btn btn-danger" id='submitBtn'>
                        Continue
                    </button>
                    <button type="submit" class="btn" id='cancelBtn'>
                        Cancel
                    </button>
                </footer>

            </div>

        </div>

        <input type='hidden' name='EVENT' value="MYTASK/SHOW_RUN">

    </form>

</div>



            <!-- end ACTUAL content -->


        </div>


<script type="text/javascript">
var sections_json = '{"Person":{"FAP_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY","ZIP","DOB"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"IDENTITY_REPORT_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"PHONE_FINDER_REPORT_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY"],"2":["LAST_NAME","FIRST_NAME","STATE"],"select":["PHONE"]},"PHONE_LOOKUP_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE"],"select":["PHONE"]},"DA_WIRELESS_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["PHONE"],"1a":["STREET_ADDRESS","CITY","STATE"]},"OFAC_SEARCH":{"1":["LAST_NAME","FIRST_NAME","OFAC_SEARCHTYPE"],"1a":["OFAC_THRESHOLD"]},"CONCEALED_WEAPON_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"LICENSE_SEARCH":{"1":["LICENSE_NUMBER"],"3":["SSN"],"2":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE"]},"DEA_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"2":["REG_NUMBER"]},"FAA_PILOT_SEARCH":{"1":["LAST_NAME","FIRST_NAME"]},"FIREARMS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"HUNTING_LICENSE_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"2":["SSN"],"1a":["STATE"]},"MARRIAGE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE"]},"PAW_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE","CITY"],"select":["COMPANY_NAME"]},"PROF_LICENSE_SEARCH":{"1":["SSN"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"VOTER_REGISTRATION_SEARCH":{"1":["SSN"],"2":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE"]},"EMAIL_SEARCH":{"1":["SSN"],"2":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE"]},"FAB_SEARCH":{"1":["COMPANY_NAME"],"1a":["STATE"]},"DAB_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["COMPANY_NAME"],"1a":["STATE"]},"EXPERIAN_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"FEIN_SEARCH":{"1":["COMPANY_NAME","FEIN"],"1a":["STATE"]},"DAB_WOMEN_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE","STATE"]},"DAB_PRIVATE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"LEXIS_CORP_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"HOOVER_COMPANY_CAPSULES_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"MERGERSTAT_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["DATE_DROP"]},"SEC_FILINGS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE","PHONETICS"]},"SEC_SEC_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"SEC_DEL_SEARCH":{"1":["COMPANY_NAME"],"1a":["STATE"]},"FICTIOUS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"S_AND_P_CORP_DECISIONS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"GUIDESTAR_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE","COMPANY_NAME"],"2":["EIN"]},"THOMSON_DIRECTORIES_SEARCH":{"1":["COMPANY_NAME"],"1a":["STATE"]},"PORTAL_LOCATION_SEARCH":{"1":["STREET_ADDRESS","CITY","STATE","ZIP"]},"REAL_PROPERTY_SEARCH":{"1":["STREET_ADDRESS","CITY","STATE","ZIP","CURRONLY"],"select":["LAST_NAME","FIRST_NAME","STATE","CITY"]},"PROP_HISTORY_PLUS_REPORT_SEARCH":{"1":["STREET_ADDRESS","CITY","STATE","ZIP","FORCE_PARCEL"]},"PROP_HISTORY_REPORT_SEARCH":{"1":["STREET_ADDRESS","CITY","STATE","ZIP","FORCE_PARCEL"]},"DL_REG_SEARCH":{"1":["SSN"],"2":["LAST_NAME","FIRST_NAME","CITY","STATE"]},"AIRCRAFT_SEARCH":{"1":["LAST_NAME","FIRST_NAME"]},"MERCHANT_VESSEL_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"1a":["STATE"]},"BLJ_SEARCH":{"1":["SSN","COMPANY_NAME"],"2":["LAST_NAME","FIRST_NAME","STATE"],"select":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"UCC_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["COMPANY_NAME"],"1a":["STATE"]},"US_CIVIL_CRIMINAL_FILINGS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE"]},"STATE_CIVIL_CRIMINAL_FILINGS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"CRIM_SEARCH":{"1":["LAST_NAME","FIRST_NAME","DOB","STATE"]},"FORECLOSURE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"JURY_VERDICTS_AND_SETTLEMENTS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"ACCIDENT_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"1a":["CITY"]},"PORTAL_SANCTIONS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"SEXPREDATOR_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"1a":["DOB"]},"BUS_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE"],"1a":["ARTICLE_WORDS","DATE_DROP"]},"NEG_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE"],"1a":["ARTICLE_WORDS","DATE_DROP"]},"DO_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","SOURCE"],"1a":["CITY","ARTICLE_WORDS","DATE_DROP"]},"BANK_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"CANADIAN_PHONES_SEARCH":{"1":["PHONE"],"select":["LAST_NAME","FIRST_NAME"]},"ALLCOMPANY_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE","PHONETICS"],"1a":["ARTICLE_WORDS","DATE_DROP"]}},"Location":{"FAP_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE"],"1a":["STREET_ADDRESS"]},"IDENTITY_REPORT_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE"],"1a":["STREET_ADDRESS"]},"PHONE_FINDER_REPORT_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE"],"select":["PHONE"],"1a":["STREET_ADDRESS"]},"PHONE_LOOKUP_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE"],"select":["PHONE"],"1a":["STREET_ADDRESS","ZIP"]},"DA_WIRELESS_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["PHONE"],"1a":["STREET_ADDRESS","STATE"]},"CONCEALED_WEAPON_SEARCH":{"1":["SSN","STREET_ADDRESS","STATE"],"1a":["LAST_NAME","FIRST_NAME"]},"LICENSE_SEARCH":{"1":["STREET_ADDRESS","STATE","LICENSE_NUMBER"],"3":["LAST_NAME","FIRST_NAME"]},"DEA_SEARCH":{"1":["STREET_ADDRESS","STATE","COMPANY_NAME"],"3":["LAST_NAME","FIRST_NAME"],"2":["REG_NUMBER"]},"FAA_PILOT_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE"]},"FIREARMS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS"],"2a":["STATE"],"2":["COMPANY_NAME"],"1a":["STATE","ZIP"]},"HUNTING_LICENSE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS"],"2":["SSN"],"1a":["STATE"]},"PAW_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS"],"2":["COMPANY_NAME"],"1a":["STATE"]},"PROF_LICENSE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS"],"2":["SSN"],"1a":["STATE"]},"VOTER_REGISTRATION_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS"],"2":["SSN"],"1a":["STATE"]},"EMAIL_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS"],"2":["SSN"],"1a":["STATE"]},"FAB_SEARCH":{"1":["STREET_ADDRESS","STATE"],"1a":["COMPANY_NAME"]},"FICTIOUS_SEARCH":{"1":["STREET_ADDRESS","STATE"],"2":["LAST_NAME","FIRST_NAME"],"1a":["COMPANY_NAME"]},"PORTAL_LOCATION_SEARCH":{"1":["STREET_ADDRESS","STATE","ZIP"]},"REAL_PROPERTY_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP"],"2":["COMPANY_NAME"]},"PROP_HISTORY_PLUS_REPORT_SEARCH":{"1":["STREET_ADDRESS","STATE","ZIP","FORCE_PARCEL"]},"PROP_HISTORY_REPORT_SEARCH":{"1":["STREET_ADDRESS","STATE","ZIP","FORCE_PARCEL"]},"DL_REG_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP"],"2":["SSN"]},"AIRCRAFT_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP"]},"MERCHANT_VESSEL_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP"]},"BLJ_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP","COMPANY_NAME"],"2":["SSN"]},"UCC_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP","COMPANY_NAME"]},"CRIM_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP"]},"FORECLOSURE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP","COMPANY_NAME"]},"SEXPREDATOR_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","STATE","ZIP"],"1a":["DOB"]},"BUS_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE"],"1a":["ARTICLE_WORDS","DATE_DROP"]},"NEG_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE"],"1a":["ARTICLE_WORDS","DATE_DROP"]},"CANADIAN_PHONES_SEARCH":{"1":["STREET_ADDRESS","STATE","ZIP","PHONE"],"2":["LAST_NAME","FIRST_NAME"]}},"Business":{"FAP_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"IDENTITY_REPORT_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"PHONE_FINDER_REPORT_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY"],"2":["LAST_NAME","FIRST_NAME","STATE"],"select":["PHONE"]},"PHONE_LOOKUP_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE"],"select":["PHONE"]},"DA_WIRELESS_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["PHONE"],"1a":["STREET_ADDRESS","CITY","STATE"]},"OFAC_SEARCH":{"1":["LAST_NAME","FIRST_NAME","OFAC_SEARCHTYPE"],"1a":["OFAC_THRESHOLD"]},"CONCEALED_WEAPON_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"LICENSE_SEARCH":{"1":["LICENSE_NUMBER"],"3":["SSN"],"2":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE"]},"DEA_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"2":["REG_NUMBER"]},"FAA_PILOT_SEARCH":{"1":["LAST_NAME","FIRST_NAME"]},"FIREARMS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"HUNTING_LICENSE_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"2":["SSN"],"1a":["STATE"]},"MARRIAGE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE"]},"PAW_SEARCH":{"1":["COMPANY_NAME"],"select":["LAST_NAME","FIRST_NAME","STATE"],"1a":["STREET_ADDRESS","CITY","STATE"]},"PROF_LICENSE_SEARCH":{"1":["SSN","COMPANY_NAME"],"2":["LAST_NAME","FIRST_NAME","STATE"],"1a":["STREET_ADDRESS","CITY","STATE"]},"VOTER_REGISTRATION_SEARCH":{"1":["SSN"],"2a":["STREET_ADDRESS","CITY"],"2":["LAST_NAME","FIRST_NAME","STATE"]},"EMAIL_SEARCH":{"1":["SSN"],"2":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE"]},"FAB_SEARCH":{"1":["COMPANY_NAME"],"1a":["STATE"]},"DAB_SEARCH":{"1":["COMPANY_NAME"],"select":["LAST_NAME","FIRST_NAME","STATE"],"1a":["STATE"]},"EXPERIAN_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"STATEWIDE_BUS_SEARCH":{"1":["COMPANY_NAME","STATE"]},"FEIN_SEARCH":{"1":["COMPANY_NAME","FEIN"],"1a":["STATE"]},"DAB_WOMEN_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE","STATE"]},"DAB_PRIVATE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"LEXIS_CORP_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"HOOVER_COMPANY_CAPSULES_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"MERGERSTAT_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["DATE_DROP"]},"SEC_FILINGS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE","PHONETICS"]},"SEC_SEC_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"SEC_DEL_SEARCH":{"1":["COMPANY_NAME"],"1a":["STATE"]},"FICTIOUS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"S_AND_P_CORP_DECISIONS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"GUIDESTAR_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STATE","COMPANY_NAME"],"2":["EIN"]},"THOMSON_DIRECTORIES_SEARCH":{"1":["COMPANY_NAME"],"1a":["STATE"]},"PORTAL_LOCATION_SEARCH":{"1":["STREET_ADDRESS","CITY","STATE","ZIP"]},"REAL_PROPERTY_SEARCH":{"1":["LAST_NAME","FIRST_NAME","STREET_ADDRESS","CITY","STATE","ZIP","COMPANY_NAME"],"1a":["STATE"]},"PROP_HISTORY_PLUS_REPORT_SEARCH":{"1":["STREET_ADDRESS","CITY","STATE","ZIP","FORCE_PARCEL"]},"PROP_HISTORY_REPORT_SEARCH":{"1":["STREET_ADDRESS","CITY","STATE","ZIP","FORCE_PARCEL"]},"DL_REG_SEARCH":{"1":["SSN","COMPANY_NAME"],"2":["LAST_NAME","FIRST_NAME","CITY","STATE"],"1a":["STATE"]},"AIRCRAFT_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"MERCHANT_VESSEL_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE","STATE"]},"BLJ_SEARCH":{"1":["SSN","COMPANY_NAME"],"2":["LAST_NAME","FIRST_NAME","STATE"],"select":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"UCC_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["COMPANY_NAME"],"1a":["STATE"]},"US_CIVIL_CRIMINAL_FILINGS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","SOURCE"]},"STATE_CIVIL_CRIMINAL_FILINGS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"CRIM_SEARCH":{"1":["LAST_NAME","FIRST_NAME","DOB","STATE"]},"FORECLOSURE_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"],"1a":["STATE"]},"JURY_VERDICTS_AND_SETTLEMENTS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"ACCIDENT_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"1a":["CITY"]},"PORTAL_SANCTIONS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"SEXPREDATOR_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"1a":["DOB"]},"BUS_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["COMPANY_NAME"]},"NEG_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["COMPANY_NAME"]},"DO_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME"]},"BANK_NEWS_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME"]},"CANADIAN_PHONES_SEARCH":{"1":["LAST_NAME","FIRST_NAME"],"select":["PHONE"]},"ALLCOMPANY_SEARCH":{"1":["LAST_NAME","FIRST_NAME","COMPANY_NAME","PHONETICS"]}}}';

var sections_json_parsed = JSON.parse(sections_json);

function check_form_sections_completeness() {
    $('#show-run-form-div [class=section_indicator]').each( function() {

        var section_name = $(this).attr('id').substring(18); //-- this is to remove leading "section_indicator_";
        var current_section_json_parsed = sections_json_parsed["Person"][section_name];

        // console.log( 'section started: ' + section_name ); /////// debugging awilson

        var array_1 = "1" in current_section_json_parsed ? current_section_json_parsed["1"] : [];
        if ( "1a" in current_section_json_parsed ) { array_1 = array_1.concat(current_section_json_parsed["1a"]) }

        var array_2 = "2" in current_section_json_parsed ? current_section_json_parsed["2"] : [];
        if ( "2a" in current_section_json_parsed ) { array_2 = array_2.concat(current_section_json_parsed["2a"]) }

        // alert(JSON.stringify(array_1) + "\n" + JSON.stringify(array_2) + "\n" + JSON.stringify(current_section_json_parsed)); ////////// debugging awilson

        var flag_complete_1 = array_1.length ? true : false;
        for ( i = 0; i < array_1.length; ++i ) {
            if ( ! ( ( $('#show-run-form [id="' + array_1[i] + '"]').filter(':input').length ) && ( $('#show-run-form [id="' + array_1[i] + '"]').filter(':input').val().trim() ) ) ) {
                flag_complete_1 = false;
                break;
            }
        }

        var flag_complete_2 = array_2.length ? true : false;
        for ( i = 0; i < array_2.length; ++i ) {
            if ( ! ( ( $('#show-run-form [id="' + array_2[i] + '"]').filter(':input').length ) && ( $('#show-run-form [id="' + array_2[i] + '"]').filter(':input').val().trim() ) ) ) {
                flag_complete_2 = false;
                break;
            }
        }

        if ( flag_complete_1 || flag_complete_2 ) {
            $(this).attr( 'src', $('#indicator_imgages_preloaded #indicator_img_green').attr('src') );
        } else {
            $(this).attr( 'src', $('#indicator_imgages_preloaded #indicator_img_red').attr('src') );
        }

         // console.log( 'section finished: ' + section_name ); /////// debugging awilson

    } );
}

// on any form field change
$('#show-run-form-div :input').change( function() {
    check_form_sections_completeness();
});

// on document ready (page completely loaded)
$(document).ready( function() {
    check_form_sections_completeness();
});


// main js logic that is applied after document has been loaded completely
$(document).ready(function(){

    $('#cancelBtn').click(function(e){
        send_event('SEARCH/SHOW_MENU');
    });

    $('#submitBtn').click(function(e){
        send_event('MYTASK/RUN');
    });

});

</script>




<!-- extra debugging stuff - - awilson
<br clear="all" /><br /><br />

<pre>

<b>TASK:</b>
<TMPL_VAR NAME="awilson-task">


</pre>
extra debugging stuff - - awilson -->


        <TMPL_INCLUDE NAME="footer.tpl">
    </body>
</html>


