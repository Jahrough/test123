<!-- BEGIN v3/batch/deceasedperson/append_fields_body.tpl -->
<div class="fieldset-title">Append Fields</div>
    <fieldset class="batchFieldset">

        <table>
            <tr>
                <td class="batchsubheader">
                    Select Special Processing Options
                </td>
            </tr>
            <tr>
                <td>&nbsp;<b>Return Optional Deceased Person Fields: <img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt=""><BR></b></td>
            </tr>

            <tr>
                <td><input type="checkbox" name="phonesplusoutput" value="1" <TMPL_VAR NAME=phonesplusoutput> onClick="">Return Phones Plus Type Code, Phones Plus Carrier, and Phones Plus Carrier Location&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This option will append phone type codes (B - Business, R - Residential, M - Mobile, U - Unknown), carrier and carrier location provided by the Phones Plus phone.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Phones Plus Fields', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
            </tr>

            <tr>
                <td>&nbsp;<b>Return Different Phone Append:<BR></b></td>
            </tr>

            <tr>
                <td><input type="checkbox" name="newphonesonly" value="1" <TMPL_VAR NAME=newphonesonly> onClick="">Return a phone number which differs from any provided phone number&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>This option will append a phone number only if it does not match an input phone number provided for the subject.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Return Different Phone', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
            </tr>
        </table>

    <TMPL_UNLESS HIDE_PRICES>
            <table>
             <tr>
             <td colspan="2"><BR><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="">Pricing for Phones Plus is $0.50 per hit.
             </td>                                           
             </tr>
            </table>
    </TMPL_UNLESS>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_UNLESS SHOW_BATCH_UPDATE>DECEASEDPERSONBATCH/DEFINE_FILE<TMPL_ELSE>BATCH/SERVICES</TMPL_UNLESS>')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:show_batch_event('DECEASEDPERSONBATCH/SAVE_APPEND_FIELDS')">
            Next
        </a>
    </div>
</div>
<!-- END v3/batch/deceasedperson/append_fields_body.tpl -->