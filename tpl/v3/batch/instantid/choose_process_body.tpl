<fieldset>
    <table>
        <tr>
            <td align="center" class="batchbanner"><br><b>Choose InstantID Process</b></td>
        </tr>
        <TMPL_IF FREE_TRIAL_CREDITS>
            <tr>
                <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
            </tr>
        </TMPL_IF>
        <tr>
            <td>
                <table border="1" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">

                    <tr>
                    <td>
                    <table border="0" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
                    <tr>
                        <td class="batchpricingheader" colspan="2">&nbsp;<b>Select the InstantID process you want your data to utilize:<BR></b></td>
                    </tr>
                    <tr>
                        <td class="unifont1">
                            <blockquote>
                                <table>
                                    <tr>
                                        <td class="unifont1">
                                            <input type=radio name=PROCESS_TYPE value="1"<TMPL_IF 1_CHECKED> CHECKED</TMPL_IF>>1&nbsp;-&nbsp;Consumer InstantID&nbsp;
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="unifont1">
                                        <input type=radio name=PROCESS_TYPE value="2"<TMPL_IF 2_CHECKED> CHECKED</TMPL_IF>>2&nbsp;-&nbsp;Business InstantID&nbsp;
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </blockquote>
                        </td>
                    </tr>
                    </table>
                    </td>
                </tr>
                <tr>
                    <td class="unifont1">
                        <table border="0" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
                            <tr>
                                <td class="batchpricingheader" colspan="2">&nbsp;<b>Global Watchlist Threshold Level:<BR></b></td>
                            </tr>
                            <tr>
                                <td class="smallfont1" colspan="2">
                                    <select name="threshold" style="width:300px;" width="10" height="3" size="1">
                                        <option value="80" <TMPL_IF threshold-80>selected</TMPL_IF>>80%</option>
                                        <option value="82" <TMPL_IF threshold-82>selected</TMPL_IF>>82%</option>
                                        <option value="84" <TMPL_IF threshold-84>selected</TMPL_IF>>84%</option>
                                        <option value="86" <TMPL_IF threshold-86>selected</TMPL_IF>>86%</option>
                                        <option value="88" <TMPL_IF threshold-88>selected</TMPL_IF>>88%</option>
                                        <option value="90" <TMPL_IF threshold-90>selected</TMPL_IF>>90%</option>
                                        <option value="92" <TMPL_IF threshold-92>selected</TMPL_IF>>92%</option>
                                        <option value="94" <TMPL_IF threshold-94>selected</TMPL_IF>>94%</option>
                                        <option value="96" <TMPL_IF threshold-96>selected</TMPL_IF>>96%</option>
                                        <option value="98" <TMPL_IF threshold-98>selected</TMPL_IF>>98%</option>
                                        <option value="100" <TMPL_IF threshold-100>selected</TMPL_IF>>100%</option>
                                    </select>
                                    &nbsp;&nbsp;
                                    <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Threshold: Select 100% through 80% to set how closely the search terms should match the results. &nbsp;A threshold of 100% means that the search and result has to match exactly. &nbsp;A threshold of 80% means that additional fuzzy search logic will be used to look for spelling and name variations.  &nbsp;The default is 84% match criteria.<br> <br> Flexible matching algorithms are used in searching to reduce false positive hits and take into account name variations. &nbsp;The matching score is displayed in the results with the highest scored records appearing first:<br> <br>Example:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>BIN LADEN</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>1.000</b><br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>USAMA BIN LADEN NETWORK</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>0.866</b><br> <br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 260, FIXY, 15, STICKY, CAPTION, 'Global Watchlist Threshold Level', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');">
                                        <img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16">
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>
            </td>
        </tr>
    </table>
</fieldset>

<!-- BEGIN select_output_format_body.tpl -->

<!-- END select_output_format_body.tpl -->
