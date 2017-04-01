     <!-- Analysis -->
     <TMPL_IF NAME=SECURITY_COMPANY>
     <TMPL_IF SHOW_IDM_MANAGE_COMPANY>
       <fieldset>
         <span class="unifont1bold"><legend>Analytics</legend></span>
         <table border="0" cellpadding="0" cellspacing="0" width="95%">
           <TR>
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;Identity Management Dashboard:&nbsp;&nbsp;
               <a id="idmdownicon"  style="display:none;" href="javascript:showhideClass('IDMDashGroup','idmupicon','idmdownicon','display','')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_down.gif" hspace="4"/></a>
               <a id="idmupicon"  href="javascript:showhideClass('IDMDashGroup','idmupicon','idmdownicon','display','none')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_up.gif" hspace="4"/></a>
             </td>
             <td width="25%" align="left">&nbsp;</td>
           </TR>
           <!-- Dashboard on temporary hold ---
           <TR class="IDMDashGroup" id="idminquiryheatmap">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Inquiry Heatmap:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_INQ_HEATMAP" VALUE='1' <TMPL_IF NAME=IDM_INQ_HEATMAP>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_INQ_HEATMAP" VALUE='0' <TMPL_UNLESS NAME=IDM_INQ_HEATMAP>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           --- Dashboard on temporary hold -->
           <TR class="IDMDashGroup" id="idmyageoutcome">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Usage/Outcome:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_USAGE_OUTCOME" VALUE='1' <TMPL_IF NAME=IDM_USAGE_OUTCOME>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_USAGE_OUTCOME" VALUE='0' <TMPL_UNLESS NAME=IDM_USAGE_OUTCOME>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR class="IDMDashGroup" id="idmquizscore">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Quiz Score:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_QUIZ_SCORE" VALUE='1' <TMPL_IF NAME=IDM_QUIZ_SCORE>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_QUIZ_SCORE" VALUE='0' <TMPL_UNLESS NAME=IDM_QUIZ_SCORE>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR class="IDMDashGroup" id="idmtransactiondetail">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Transaction Detail:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_TRANS_DETAIL" VALUE='1' <TMPL_IF NAME=IDM_TRANS_DETAIL>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_TRANS_DETAIL" VALUE='0' <TMPL_UNLESS NAME=IDM_TRANS_DETAIL>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <!-- Dashboards on temporary hold ---
           <TR class="IDMDashGroup" id="idminquirypurpose">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Inquiry Permissible Purpose:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_INQ_PURPOSE" VALUE='1' <TMPL_IF NAME=IDM_INQ_PURPOSE>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_INQ_PURPOSE" VALUE='0' <TMPL_UNLESS NAME=IDM_INQ_PURPOSE>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR class="IDMDashGroup" id="idmtrisoutstate">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;TRIS Out of State:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_TRIS_OUT_STATE" VALUE='1' <TMPL_IF NAME=IDM_TRIS_OUT_STATE>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_TRIS_OUT_STATE" VALUE='0' <TMPL_UNLESS NAME=IDM_TRIS_OUT_STATE>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           --- Dashboards on temporary hold -->
           <TR class="IDMDashGroup" id="idmeffectiveness">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Question Effectiveness:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_QUESTION_EFFECTIVE" VALUE='1' <TMPL_IF NAME=IDM_QUESTION_EFFECTIVE>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_QUESTION_EFFECTIVE" VALUE='0' <TMPL_UNLESS NAME=IDM_QUESTION_EFFECTIVE>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <!-- Dashboards on temporary hold ---
           <TR class="IDMDashGroup" id="idmzipoutcome">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;ZIP Outcome Pace:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_ZIP_OUTCOME" VALUE='1' <TMPL_IF NAME=IDM_ZIP_OUTCOME>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_ZIP_OUTCOME" VALUE='0' <TMPL_UNLESS NAME=IDM_ZIP_OUTCOME>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR class="IDMDashGroup" id="idmsection8">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Section 8:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_SECTION8" VALUE='1' <TMPL_IF NAME=IDM_SECTION8>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_SECTION8" VALUE='0' <TMPL_UNLESS NAME=IDM_SECTION8>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR class="IDMDashGroup" id="idmfoodstamps">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Foodstamps:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_FOODSTAMPS" VALUE='1' <TMPL_IF NAME=IDM_FOODSTAMPS>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_FOODSTAMPS" VALUE='0' <TMPL_UNLESS NAME=IDM_FOODSTAMPS>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR>
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;Business Analytics Dashboard:&nbsp;&nbsp;
               <a id="idmbusdownicon" style="display:none;" href="javascript:showhideClass('IDMBusDashGroup','idmbusupicon','idmbusdownicon','display','')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_down.gif" hspace="4"/></a>
               <a id="idmbusupicon" href="javascript:showhideClass('IDMBusDashGroup','idmbusupicon','idmbusdownicon','display','none')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_up.gif" hspace="4"/></a>
             </td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr><td>&nbsp;</td></tr>
             </tr>
             </table>
           </TR>
           <TR class="IDMBusDashGroup" id="idmbusindtaxpayer">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Indiana Business Taxpayer:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_BUS_IND_TAXPAYER" VALUE='1' <TMPL_IF NAME=IDM_BUS_IND_TAXPAYER>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_BUS_IND_TAXPAYER" VALUE='0' <TMPL_UNLESS NAME=IDM_BUS_IND_TAXPAYER>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR class="IDMBusDashGroup" id="idmbusiowataxpayer">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Iowa Business Taxpayer:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_BUS_IOWA_TAXPAYER" VALUE='1' <TMPL_IF NAME=IDM_BUS_IOWA_TAXPAYER>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_BUS_IOWA_TAXPAYER" VALUE='0' <TMPL_UNLESS NAME=IDM_BUS_IOWA_TAXPAYER>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           <TR class="IDMBusDashGroup" id="idmbusjulydemo">
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;Business Hierarchy Graph:</td>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
               <td><INPUT TYPE=RADIO NAME="IDM_BUS_HIERARCHY" VALUE='1' <TMPL_IF NAME=IDM_BUS_HIERARCHY>CHECKED</TMPL_IF>></td>
               <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
               <td><INPUT TYPE=RADIO NAME="IDM_BUS_HIERARCHY" VALUE='0' <TMPL_UNLESS NAME=IDM_BUS_HIERARCHY>CHECKED</TMPL_UNLESS>></td>
               <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
           </TR>
           --- Dashboards on temporary hold -->
         </table>
       </fieldset>
     </TMPL_IF>
     </TMPL_IF>

