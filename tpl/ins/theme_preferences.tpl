                        <br><br>
             <li><font color="red"><b>NEW!&nbsp;</b></font>Choose your Accurint theme.<br/>After clicking Save Preferences the new theme will be applied the next time you run a search.</li>
                        <span id="active_themes" style="display:block;border:1px solid #D8D8D8;margin-top:10px;background:white;width:88%;">
                        <table width="100%" border="0">
                        <tr>
                                <td align="center" width="25%"><img width="100" height="70" border="1" src="<TMPL_VAR NAME=IMGPATH>/v2/blue_round.gif"></td>
                                <td align="center" width="25%"><img width="100" height="70" border="1" src="<TMPL_VAR NAME=IMGPATH>/v2/blue_square.gif"></td>
                                <td align="center" width="25%"><img width="100" height="70" border="1" src="<TMPL_VAR NAME=IMGPATH>/v2/red_round.gif"></td>
                                <td align="center" width="25%"><img width="100" height="70" border="1" src="<TMPL_VAR NAME=IMGPATH>/v2/red_square.gif"></td>
                        </tr>

                        <tr class="smalllabel">
                                <td align="center"><label for="ut1"><b>Blue Round (Default)<b></label></td>
                                <td align="center"><label for="ut2"><b>Blue Square</b></label></td>
                                <td align="center"><label for="ut3"><b>Red Round</b></label></td>
                                <td align="center"><label for="ut4"><b>Red Square</b></label></td>
                        </tr>

                        <tr>
                                <td align="center"><input type="radio" name="user_theme" id="ut1" value=1 <TMPL_IF NAME=user_theme-1>CHECKED</TMPL_IF>></td>
                                <td align="center"><input type="radio" name="user_theme" id="ut2" value=2 <TMPL_IF NAME=user_theme-2>CHECKED</TMPL_IF>></td>
                                <td align="center"><input type="radio" name="user_theme" id="ut3" value=3 <TMPL_IF NAME=user_theme-3>CHECKED</TMPL_IF>></td>
                                <td align="center"><input type="radio" name="user_theme" id="ut4" value=4 <TMPL_IF NAME=user_theme-4>CHECKED</TMPL_IF>></td>
                        </tr>
                        </table>
                        </span>

