<!DOCTYPE html>
<!-- BEGIN v3/batch/gov/new_services.tpl -->
<html>
    <head>
        <title>Batch</title>
        <TMPL_INCLUDE NAME="batch/batch_includes.tpl">
        <script>
            close_x = new Image();
            close_x.src = "/bps/images/closex.gif";
        </script>
        <style>
            body{background:#fff;}
        </style>
        <script language="JavaScript">
            // Banner counters
            var b0num = 0;
            var b1num = 0;

            function open_banner(b) {
                var content = new Array(b0[b0num]['url']);
                var width = new Array(b0[b0num]['width']);
                var height = new Array(b0[b0num]['height']);
                var name = new Array(b0[b0num]['name']);
                general_win(content[b],name[b],width[b],height[b],0,0,0,1,1,0);
            }

            // Left Banner Info
            var b0 = new Array ({ 
                image:'<TMPL_VAR NAME=IMGPATH>/main/enhanced_phones_batch_banner.gif',
                url:'<TMPL_VAR NAME=HTMLPATH>/col/enhanced_phones_batch_popup.html',
                width:'425',
                height:'300',
                name:'ProgressivePhones' 
            });
        </script>
            
    </head>

    <body onUnLoad="closewaitwin();" leftmargin="0" marginwidth="0" topmargin="0" marginheight="0">
        <TMPL_INCLUDE NAME="batch/header_info.tpl">
        <input type="hidden" name="EVENT">
                <div class="myaccount-section-title">Batch Services</div>
                <div class="myaccount-containers">
                    <div class="sections">
                        <div class="section-row">
                            <fieldset class="batchMenu">
                                <!-- START -->
                                <table border="0" width="600">
                                    <tr>
                                        <td class="unifont1" align="center" colspan="2"><b>Flexible, Quick, and Cost-Effective Source for All Your Unique Agency Needs</b><br><br></td>
                                    </tr>
                                    <tr>
                                        <td class="unifont1"<TMPL_UNLESS SHOW_AHAS_BATCH> colspan="2"</TMPL_UNLESS>>
					Batch Services help you locate subjects, increase contact rates, and speed workflow by using one of the industry's largest and most current contact and locate databases.
                                        </td>
                                        <TMPL_IF SHOW_AHAS_BATCH>
                                            <td>
                                                <td align="right"><a href="javascript:open_banner(0);"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/main/enhanced_phones_batch_banner.gif" width="280" height="50" border="0" name="plink0"></a></td>
                                            </td>
                                        </TMPL_IF>
                                    </tr>
                                    <tr>
                                        <td valign="middle" class="unifont1" colspan="2">
                                            <br>
                                                <table cellspacing="0" cellpadding="0">
                                                    <tr>
                                                    <td align="center">
                                                    <TMPL_UNLESS IS_RESELLER>
                                                        <table cellspacing="0" cellpadding="4">
                                                            <tr>
                                                                <td style="padding-left: 30px;">
                                                                    <table cellpadding="4" cellspacing="1" <TMPL_IF SHOW_BATCH_UPDATE>width="480"</TMPL_IF>
                                                                        <TMPL_UNLESS SHOW_BATCH_UPDATE>
                                                                            <TMPL_IF IS_BATCH_ADMIN>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey">
                                                                                        <TMPL_UNLESS DISABLE_BATCH>
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_post_popup('RECOVERSCORE3BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">
                                                                                                RecoverScore v3
                                                                                            </a>
                                                                                        <TMPL_ELSE>
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">RecoverScore</span>
                                                                                        </TMPL_UNLESS>
                                                                                    </td>
                                                                                </tr>
                                                                            </TMPL_IF>
                                                                        </TMPL_UNLESS>
                                                                        <TMPL_IF SHOW_BATCH_UPDATE>
                                                                            <TMPL_UNLESS DISABLE_DEC_PERSON_ONL_BATCH>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                        <i>&bull;</i>
                                                                                        <a class="mainmenu batchLnk" href="javascript:show_batch_event('DECEASEDPERSONBATCH/START_BATCH');">Deceased Person Batch</a>&nbsp;
                                                                                        <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The Deceased Person Batch allows a user to run a search on a subject by LexID, name, and/or social security number to determine if and when they passed away as well as verify subject name, social security number, date of birth, and last known address.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Deceased Person Batch', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                                                                            <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More information">
                                                                                        </a>
                                                                                    </td>
                                                                                </tr>
                                                                            <TMPL_ELSE>
                                                                                <TMPL_UNLESS HIDE_DISABLED>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">Deceased Person Batch</span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_UNLESS>
                                                                        </TMPL_IF>
                                                                        <TMPL_IF SHOW_BATCH_UPDATE>
                                                                            <TMPL_UNLESS DISABLE_ADV_PERSON_ONL_BATCH>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                        <i>&bull;</i>
                                                                                        <a class="mainmenu batchLnk" href="javascript:show_batch_event('ADVANCEDPERSONBATCH/START_BATCH');">Advanced Person Batch</a>&nbsp; <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The Advanced Person Batch enables users to locate personal identifiable information on subjects including full name, social security number, date of birth, up to three addresses with phone numbers, and deceased information.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, ' Advanced Person Batch', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                                                                                    </td>
                                                                                </tr>
                                                                            <TMPL_ELSE>          
                                                                                <TMPL_UNLESS HIDE_DISABLED>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">Advanced Person Batch</span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_UNLESS>
                                                                            <TMPL_IF ALLOW_ASOS_BATCH>
                                                                                <TMPL_UNLESS DISABLE_ASOS_BATCH>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_batch_event('BATCH/SHOW_ASOS');">Advanced Sex Offender Solution (ASOS)</a>&nbsp; <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The LexisNexis&#174; Advanced Sex Offender Solution (ASOS) offers a nationwide tracking system on movement and other information relating to registered and non-compliant sex offenders. The web-based solution provides weekly comprehensive reporting for sex offenders in counties you are monitoring&#8212;where they have moved from and to along with best known contact information.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Advanced Sex Offender Solution (ASOS)', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_IF>
                                                                        </TMPL_IF>
                                                                        <TMPL_IF SHOW_BATCH_UPDATE>
                                                                                <TMPL_UNLESS DISABLE_PEOPLE_ONL_BATCH>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                            <TMPL_UNLESS DISABLE_BATCH>
                                                                                                <TMPL_IF SHOW_BATCH_UPDATE>
                                                                                                    <i>&bull;</i>
                                                                                                    <a class="mainmenu batchLnk" href="javascript:show_batch_event('BATCH/START_UPDATE_BATCH');">People Batch (including Address and Phone searches)</a>&nbsp; <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This process uses the Accurint linking technology to attempt to find addresses and phone numbers associated with the subject. Available settings allow users to only get new/different information than what has been provided as well as property information for up to 5 addresses.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'People Batch (including Address and Phone searches)', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                                                                                                <TMPL_ELSE>
                                                                                                    <i>&bull;</i>
                                                                                                    <a class="mainmenu batchLnk" href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People Batching (including Address and Phone searches)</a>
                                                                                                </TMPL_IF>
                                                                                            <TMPL_ELSE>
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">People Batching (including Address and Phone Searches)</span>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    </tr>
                                                                                <TMPL_ELSE>
                                                                                    <TMPL_UNLESS HIDE_DISABLED>
                                                                                        <tr>
                                                                                            <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">People Batch (including Address and Phone searches)</span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </TMPL_UNLESS>
                                                                                </TMPL_UNLESS>
                                                                            <TMPL_IF SHOW_PHONES_PLUS_BATCH>
                                                                                <TMPL_UNLESS IRS>
                                                                                    <TMPL_UNLESS DISABLE_PHONES_PLUS_ONL_BATCH>
                                                                                        <tr>
                                                                                            <TMPL_IF SHOW_BATCH_UPDATE>
                                                                                                <td valign="top" align="left" class="smallfont1grey">
                                                                                                    <TMPL_UNLESS DISABLE_BATCH>
                                                                                                        <i>&bull;</i>
                                                                                                        <a class="mainmenu batchLnk" href="javascript:show_batch_event('PHONESPLUSBATCH/START_BATCH');">Phones Plus Batch</a>&nbsp;
                                                                                                        <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br> Access approximately 787.2 million records not currently found in Electronic Directory Assistance. These numbers may include cell phone and non-published numbers, providing yet another alternative to find otherwise difficult to locate subjects.<br><br>The minimum input criteria required for the Phones Plus Batch includes one the following:&nbsp; subject full name and social security number; subject full name, street address, city, state; OR subject full name, street address, zip code.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Phones Plus Batch', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                                                                                            <img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                                                                                                        </a>
                                                                                                    </TMPL_UNLESS>
                                                                                                </td>
                                                                                            <TMPL_ELSE>
                                                                                                <td valign="top" align="left" class="smallfont1grey">
                                                                                                    <TMPL_UNLESS DISABLE_BATCH>
                                                                                                        <i>&bull;</i>
                                                                                                        <a class="mainmenu batchLnk" href="javascript:show_post_popup('PHONESPLUSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phones Plus</a>
                                                                                                    <TMPL_ELSE>
                                                                                                        <i class="disabled">&bull;</i>
                                                                                                        <span class="batchLnk-disabled">Phone Plus</span>
                                                                                                    </TMPL_UNLESS>
                                                                                                </td>
                                                                                            </TMPL_IF>
                                                                                        </tr>
                                                                                    <TMPL_ELSE>          
                                                                                        <TMPL_UNLESS HIDE_DISABLED>
                                                                                            <tr>
                                                                                                <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                    <i class="disabled">&bull;</i>
                                                                                                    <span class="batchLnk-disabled">Phones Plus Batch</span>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </TMPL_UNLESS>
                                                                                    </TMPL_UNLESS>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_IF>
                                                                        </TMPL_IF>
                                                                        <TMPL_IF SHOW_PHONES_BATCH>
                                                                            <TMPL_UNLESS DISABLE_PHONE_ADDR_ONL_BATCH>
                                                                                <tr>
                                                                                    <TMPL_IF SHOW_BATCH_UPDATE>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <TMPL_UNLESS DISABLE_BATCH>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:show_batch_event('PHONEBATCH/START_BATCH');">Waterfall Phones and Address</a>&nbsp; <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This process allows customers to choose to return multiple or single phone numbers, set the level of matching to be used and return only new/unique phone information than what has been provided.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Waterfall Phones and Address', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                                                                                    <img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                                                                                                </a>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    <TMPL_ELSE>
                                                                                        <td nowrap valign="top" align="left" class="smallfont1grey">
                                                                                            <TMPL_UNLESS DISABLE_BATCH>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:show_post_popup('PHONEBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');" onClick="">
                                                                                                    Waterfall Phones and Address
                                                                                                </a>
                                                                                            <TMPL_ELSE>
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">Waterfall Phones and Address</span>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    </TMPL_IF>
                                                                                </tr>
                                                                            <TMPL_ELSE>          
                                                                                <TMPL_UNLESS HIDE_DISABLED>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">Waterfall Phones and Address</span>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_UNLESS>
                                                                        </TMPL_IF>
                                                                        <TMPL_IF SHOW_BATCH_UPDATE>
                                                                            <TMPL_IF SHOW_RT_PHONES_BATCH>
                                                                                <TMPL_UNLESS DISABLE_RT_PHONES_ONL_BATCH>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_batch_event('RTPHONESBATCH/START_BATCH');">Real-Time Phones Batch</a>&nbsp;
                                                                                            <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The Real-Time Phones batch searches for data that will help government and law enforcement determine subjects\' names and location based on phone number and address queries including phone type, phone status, carrier details, and porting information to allow for contact to be made with operating companies for case investigations, including issuing subpoenas when necessary. <br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Real-Time Phones Batch', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                                                                                <img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                                                                                            </a>
                                                                                        </td>
                                                                                    </tr>
                                                                                <TMPL_ELSE>
                                                                                    <TMPL_UNLESS HIDE_DISABLED>
                                                                                        <tr>
                                                                                            <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">Real-Time Phones Batch</span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </TMPL_UNLESS>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_IF>
                                                                            <TMPL_IF SHOW_RT_MVR_BATCH>
                                                                                <TMPL_UNLESS DISABLE_RT_MVR_ONL_BATCH>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_batch_event('RTMVRBATCH/START_BATCH');">Real-Time Motor Vehicle Registration Batch</a>&nbsp;
                                                                                            <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>The Motor Vehicle Registration Batch searches motor vehicle registration records including real-time data to return registration information such as name, address, expiration date, vehicle identification number (VIN), plate number and vehicle description.  Available search options allow users to perform VIN, plate/state or name and address searches.  Users will also have the option to return the most current address and phone number for the registrant as well as the option to return registrations for a specific date or a specified number of years. <br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Motor Vehicle Registration Batch', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                                                                                <img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                                                                                            </a>
                                                                                        </td>
                                                                                    </tr>
                                                                                <TMPL_ELSE>          
                                                                                    <TMPL_UNLESS HIDE_DISABLED>
                                                                                        <tr>
                                                                                            <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">Real-Time Motor Vehicle Registration Batch</span>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </TMPL_UNLESS>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_IF>
                                                                        </TMPL_IF>
                                                                        <TMPL_IF SHOW_BATCH_UPDATE>
                                                                            <TMPL_UNLESS DISABLE_REVERSE_PHONE_APPEND>
                                                                                <TMPL_UNLESS IRS>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_batch_event('BATCH/START_PHONE_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Reverse Phone Append</a>&nbsp; <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This process allows customers to run a query on a ten-digit phone number to find the current name and address associated with that phone number. Reverse Phone append also allows for de-duping to allow customers to only get back different information than what they may already have.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Reverse Phone Append Batch', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                                                                                <img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                                                                                            </a>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <TMPL_IF SHOW_INSTANT_ID_BATCH>
                                                                                        <TMPL_UNLESS DISABLE_INSTANT_ID_ONL_BATCH>
                                                                                            <tr> 
                                                                                                <td valign="top" align="left" class="smallfont1grey">
                                                                                                    <i>&bull;</i>
                                                                                                    <a class="mainmenu batchLnk" href="javascript:show_batch_event('INSTANTIDBATCH/CHOOSE_PROCESS');">InstantId Batch (Consumers or Businesses)</a>&nbsp;
                                                                                                    <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>InstantID quickly searches billions of public records, alerting you to potential data mis-keys, which are often mistaken for fraudulent data. It automatically offers you alternative addresses, telephone numbers and Social Security Numbers (SSN). InstantID combines verification, validation and risk detection processes to instantly authenticate consumer and business identities, spot potential fraud or identity theft, and automatically flag discrepancies found in an applicant\'s data. <br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'InstantId Batch (Consumers and Business)', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                                                                                        <img alt="More Information" src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                                                                                                    </a>
                                                                                                </td>
                                                                                            </tr>
                                                                                        <TMPL_ELSE>          
                                                                                            <TMPL_UNLESS HIDE_DISABLED>
                                                                                                <tr>
                                                                                                    <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                        <i class="disabled">&bull;</i>
                                                                                                        <span class="batchLnk-disabled">InstantId Batch (Consumers or Businesses)</span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </TMPL_UNLESS>
                                                                                        </TMPL_UNLESS>
                                                                                    </TMPL_IF>
                                                                                </TMPL_UNLESS>
                                                                            <TMPL_ELSE>
                                                                                <TMPL_UNLESS HIDE_DISABLED>
                                                                                    <TMPL_UNLESS IRS>
                                                                                        <tr>
                                                                                            <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">Reverse Phone Append</span>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <TMPL_IF SHOW_INSTANT_ID_BATCH>
                                                                                            <TMPL_UNLESS DISABLE_INSTANT_ID_ONL_BATCH>
                                                                                                <tr>
                                                                                                    <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                        <i class="disabled">&bull;</i>
                                                                                                        <span class="batchLnk-disabled">InstantId Batch (Consumers or Businesses)</span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            <TMPL_ELSE>          
                                                                                                <TMPL_UNLESS HIDE_DISABLED>
                                                                                                    <tr>
                                                                                                        <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                            <i class="disabled">&bull;</i>
                                                                                                            <span class="batchLnk-disabled">InstantId Batch (Consumers or Businesses)</span>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </TMPL_UNLESS>
                                                                                            </TMPL_UNLESS>
                                                                                        </TMPL_IF>
                                                                                    </TMPL_UNLESS>
                                                                                </TMPL_UNLESS>
                                                                            </TMPL_UNLESS>
                                                                        </TMPL_IF>
                                                                        <TMPL_UNLESS SHOW_BATCH_UPDATE>
                                                                            <TMPL_IF IS_BATCH_ADMIN>
                                                                                <TMPL_IF SHOW_PHONES_PLUS_BATCH>
                                                                                    <!-- DISABLE_PHONES_PLUS_ONL_BATCH -->
                                                                                    <TMPL_UNLESS DISABLE_PHONES_PLUS_ONL_BATCH>
                                                                                        <tr>
                                                                                            <td valign="top" align="left" class="smallfont1grey">
                                                                                                <TMPL_UNLESS DISABLE_BATCH>
                                                                                                    <i>&bull;</i>
                                                                                                    <a class="mainmenu batchLnk" href="javascript:show_post_popup('PHONESPLUSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Phones Plus</a>
                                                                                                <TMPL_ELSE>
                                                                                                    <i class="disabled">&bull;</i>
                                                                                                    <span class="batchLnk-disabled">Phone Plus</span>
                                                                                                </TMPL_UNLESS>
                                                                                            </td>
                                                                                        </tr>
                                                                                    <TMPL_ELSE>
                                                                                        <TMPL_UNLESS HIDE_DISABLED>
                                                                                            <tr>
                                                                                                <td valign="top" align="left" class="smallfont1grey" nowrap="nowrap">
                                                                                                    <i class="disabled">&bull;</i>
                                                                                                    <span class="batchLnk-disabled">Phones Plus Batch</span>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </TMPL_UNLESS>
                                                                                    </TMPL_UNLESS>
                                                                                </TMPL_IF>
                                                                                <TMPL_IF SHOW_PATRIOT_ACT_BATCH>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <TMPL_UNLESS DISABLE_BATCH>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:show_post_popup('OFACBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">USA PATRIOT Act</a>
                                                                                            <TMPL_ELSE>
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">USA PATRIOT Act</span>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_IF>
                                                                                <TMPL_IF SHOW_INSTANT_ID_BATCH>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <TMPL_UNLESS DISABLE_BATCH>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:show_post_popup('INSTANTIDBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">InstantID</a>
                                                                                            <TMPL_ELSE>
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">InstantID</span>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_IF>
                                                                            </TMPL_IF>
                                                                        </table>
                                                                </td>
                                                                <td width="30%" valign="top" align="left">
                                                                    <table cellpadding="4" cellspacing="1">
                                                                        <TMPL_IF SHOW_SURE_PLACEMENT_BATCH>
                                                                            <TMPL_IF COL>
                                                                                <TMPL_IF IS_BATCH_ADMIN>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <TMPL_UNLESS DISABLE_BATCH>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People</a>
                                                                                            <TMPL_ELSE>
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">People</span>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_IF>
                                                                            <TMPL_ELSE>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey">
                                                                                        <TMPL_UNLESS DISABLE_BATCH>
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_post_popup('BATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">People</a>
                                                                                        <TMPL_ELSE>
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">People</span>
                                                                                        </TMPL_UNLESS>
                                                                                    </td>
                                                                                </tr>
                                                                            </TMPL_IF>
                                                                        </TMPL_IF>
                                                                        <TMPL_IF IS_BATCH_ADMIN>
                                                                            <TMPL_IF SHOW_SURE_CONTACT_BATCH>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey">
                                                                                        <TMPL_UNLESS DISABLE_BATCH>
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_post_popup('SURECONTACTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SureContact</a>
                                                                                        <TMPL_ELSE>
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">SureContact</span>
                                                                                        </TMPL_UNLESS>
                                                                                    </td>
                                                                                </tr>
                                                                            </TMPL_IF>
                                                                            <TMPL_IF SHOW_SURE_PLACEMENT_BATCH>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey">
                                                                                        <TMPL_UNLESS DISABLE_BATCH>
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_post_popup('SUREPLACEMENTBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">SurePlacement</a>
                                                                                        <TMPL_ELSE>
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">SurePlacement</span>
                                                                                        </TMPL_UNLESS>
                                                                                    </td>
                                                                                </tr>
                                                                            </TMPL_IF>
                                                                            <TMPL_IF SHOW_RECOVER_SCORE_BATCH>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey">
                                                                                        <TMPL_UNLESS DISABLE_BATCH>
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_post_popup('RECOVERSCOREBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">RecoverScore</a>
                                                                                        <TMPL_ELSE>
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">RecoverScore</span>
                                                                                        </TMPL_UNLESS>
                                                                                    </td>
                                                                                </tr>
                                                                            </TMPL_IF>
                                                                            <TMPL_IF SHOW_BUS_COLLECTIONS_BATCH>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey">
                                                                                        <TMPL_UNLESS DISABLE_BATCH>
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_post_popup('BATCH/BUS_DUEX_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business Collections</a>
                                                                                        <TMPL_ELSE>
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">Business Collections</span>
                                                                                        </TMPL_UNLESS>
                                                                                    </td>
                                                                                </tr>
                                                                            </TMPL_IF>
                                                                        </TMPL_IF>
                                                                    </table>
                                                                </td>
                                                                <td width="30%" valign="top" >
                                                                    <table cellpadding="4" cellspacing="1">
                                                                        <TMPL_IF IS_BATCH_ADMIN>
                                                                            <TMPL_IF SHOW_BUS_BATCH>
                                                                                <tr>
                                                                                    <td valign="top" align="left" class="smallfont1grey">
                                                                                        <TMPL_UNLESS DISABLE_BATCH>
                                                                                            <i>&bull;</i>
                                                                                            <a class="mainmenu batchLnk" href="javascript:show_post_popup('BATCH/BUS_START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Business Batch</a>
                                                                                        <TMPL_ELSE>
                                                                                            <i class="disabled">&bull;</i>
                                                                                            <span class="batchLnk-disabled">Business Batch</span>
                                                                                        </TMPL_UNLESS>
                                                                                    </td>
                                                                                </tr>
                                                                            </TMPL_IF>
                                                                        </TMPL_IF>
                                                                        <TMPL_IF SHOW_CUSTOM_BATCH>
                                                                            <tr>
                                                                                <td valign="top" align="left" class="smallfont1grey">
                                                                                    <TMPL_UNLESS DISABLE_BATCH>
                                                                                        <i>&bull;</i>
                                                                                        <a class="mainmenu batchLnk" href="javascript:show_post_popup('CUSTOMBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Custom</a>
                                                                                    <TMPL_ELSE>
                                                                                        <i class="disabled">&bull;</i>
                                                                                        <span class="batchLnk-disabled">Custom</span>
                                                                                    </TMPL_UNLESS>
                                                                                </td>
                                                                            </tr>
                                                                        </TMPL_IF>
                                                                    </TMPL_UNLESS>
                                                                            <TMPL_UNLESS SHOW_BATCH_UPDATE>
                                                                                <TMPL_IF IS_BATCH_ADMIN>
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <TMPL_UNLESS DISABLE_WATCHDOG>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:show_post_popup('WATCHDOG/START','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Accurint Watchdog</a>
                                                                                            <TMPL_ELSE>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:general_win('<TMPL_VAR NAME=HTMLPATH>/watchdog/watchdog_ad.html','WatchDogPopupWin','550','',0,0,0,1,1,0);void(0);")>Accurint Watchdog</a>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_IF>
                                                                                <TMPL_IF SHOW_CRIMINAL_RECORDS_BATCH>          
                                                                                    <tr>
                                                                                        <td valign="top" align="left" class="smallfont1grey">
                                                                                            <TMPL_UNLESS DISABLE_BATCH>
                                                                                                <i>&bull;</i>
                                                                                                <a class="mainmenu batchLnk" href="javascript:show_post_popup('CRIMRECORDSBATCH/START_BATCH','BatchWin',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Criminal Records</a>
                                                                                            <TMPL_ELSE>
                                                                                                <i class="disabled">&bull;</i>
                                                                                                <span class="batchLnk-disabled">Criminal Records</span>
                                                                                            </TMPL_UNLESS>
                                                                                        </td>
                                                                                    </tr>
                                                                                </TMPL_IF>
                                                                            </TMPL_UNLESS>
                                                                        </TMPL_UNLESS>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                            <br>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="unifont1" colspan="2">Improve productivity and increase efficiency by processing thousands of records at a time to investigate people and businesses.&nbsp; Flexible search options and multi-sourced data help you locate subjects and their assets quickly and cost-effectively.<br><br></td>
                                    </tr>
                                </table>
                                <!-- END -->
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div> 
<TMPL_INCLUDE NAME="batch/batch_footer.tpl"> 
<!-- END v3/batch/gov/new_services.tpl -->
