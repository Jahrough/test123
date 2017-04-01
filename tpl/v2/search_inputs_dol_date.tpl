<!-- begin search_inputs_dol_date.tpl -->
                <td><b><label for="DOL_DATE">&nbsp;DOL:&nbsp;</label><TMPL_IF NAME="SHOW_DOL_REQUIRED"><span class=unifont1boldred>*</span></TMPL_IF></b></td>
                
                <TMPL_IF SOCIALMEDIA_SEARCH>
                <td style="font-size: 9pt;" align="center" valign="middle"><input id="DOL_DATE" type=text tabindex="192" size="16" maxlength="8" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"></td>
                <TMPL_ELSE>
                <td style="font-size: 9pt;" align="center" valign="middle"><input id="DOL_DATE" type=text tabindex="92" size="16" maxlength="8" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"></td>
                </TMPL_IF>
                
                <TMPL_IF NAME="SHOW_DOL_TIME">
                <td><b><label for="DOL_TIME">&nbsp;Loss Time:&nbsp;</label></b></td>
                <td class="nsinputs">
                <input type="text" name="TIME_HOURS" id="TIME_HOURS" tabindex="1" size="3" maxlength="255" value="<TMPL_VAR NAME=TIME_HOURS>" onBlur="" onkeyup=''>:<input type="text" name="TIME_MINUTES" id="TIME_MINUTES" tabindex="1" size="3" maxlength="255" value="<TMPL_VAR NAME=TIME_MINUTES>" onBlur="" onkeyup=''> <SELECT NAME="TIME_AM_PM">  
                     <OPTION VALUE="AM">AM
                     <OPTION VALUE="PM">PM
                   </SELECT> 
                </td>
                </TMPL_IF>
<!-- end search_inputs_dol_date.tpl -->

