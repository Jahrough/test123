                        <br><br>
             <li>Choose your Accurint theme (Click on the images below to see sample screens).<br/>After clicking Save Preferences, the new theme will be applied the next time you run a search.</li>
                        <span id="active_themes" style="display:block;border:1px solid #D8D8D8;margin-top:10px;background:white;width:88%;">
                        <table width="100%" border="0">
                        <tr>
                         <TMPL_IF COL>
                                <td align="center" width="25%"><a href="javascript:void(0);" alt="View sample Default theme" title="View sample Default theme" onClick="show_user_themes('1');"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th1.gif"></a></td>
                                <td align="center" width="25%"><a href="javascript:void(0);" alt="View sample Classic Accurint theme" title="View sample Classic Accurint theme" onClick="show_user_themes('2');"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th2.gif"></a></td>
                                <td align="center" width="25%"><a href="javascript:void(0);" alt="View sample Black n' Tan theme" title="View sample Black n' Tan theme" onClick="show_user_themes('3');"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th3.gif"></a></td>
                                <td align="center" width="25%"><a href="javascript:void(0);" alt="View sample Blue n' Tan theme" title="View sample Blue n' Tan theme" onClick="show_user_themes('4');"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th4.gif"></a></td>
                        <TMPL_ELSE>
                                <td align="center" width="25%"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th1.gif"></td>
                                <td align="center" width="25%"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th2.gif"></td>
                                <td align="center" width="25%"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th3.gif"></td>
                                <td align="center" width="25%"><img width="100" height="100" border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ac_th4.gif"></td>
                        </TMPL_IF>
                        </tr>

                        <tr class="smalllabel">
                                <td align="center"><label for="ut1"><b>Default</b></label></td>
                                <td align="center"><label for="ut2"><b>Classic Accurint<b></label></td>
                                <td align="center"><label for="ut3"><b>Black n' Tan</b></label></td>
                                <td align="center"><label for="ut4"><b>Blue n' Tan</b></label></td>
                        </tr>

                        <tr>
                                <td align="center"><input type="radio" name="user_theme" id="ut1" value=1 <TMPL_IF NAME=user_theme-1>CHECKED</TMPL_IF>></td>
                                <td align="center"><input type="radio" name="user_theme" id="ut2" value=2 <TMPL_IF NAME=user_theme-2>CHECKED</TMPL_IF>></td>
                                <td align="center"><input type="radio" name="user_theme" id="ut3" value=3 <TMPL_IF NAME=user_theme-3>CHECKED</TMPL_IF>></td>
                                <td align="center"><input type="radio" name="user_theme" id="ut4" value=4 <TMPL_IF NAME=user_theme-4>CHECKED</TMPL_IF>></td>
                        </tr>
                        </table>
                        </span>

