<!-- BEGIN show_asos.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<link href="<TMPL_VAR NAME='CSSPATH'>/bar.css" rel="stylesheet" type="text/css" />
<INPUT TYPE=HIDDEN NAME=EVENT>
<INPUT TYPE=HIDDEN NAME=STATE_DROPBOX_SELECTED ID=START_DROPBOX_SELECTED>

<div align="center">

<div id="results1">
<div id="mainbody1">

   <table border="0" cellspacing="0" width="750">
       <tr>
         <td class="unifont1bold" align="left" nowrap="nowrap">Advanced Sex Offender Solution (ASOS)</td>
         <td class="unifont1bold" align="left" nowrap="nowrap">To download a state file:</td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td>
         
         </td>
         <td></td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td>
           <br />
            <select name="STATE_DROPBOX" id="STATE_DROPBOX" onChange="javascript:var obj = 
            document.getElementById('STATE_DROPBOX');
            document.getElementById('STATE_DROPBOX_SELECTED').value = obj.selectedIndex; 
            ">
                <option value="">All States... </option>
                <TMPL_LOOP STATE_DROPBOX_LOOP>
                    <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                </TMPL_LOOP>
            </select>

           <TMPL_VAR STATE_DROPBOX>
           
           <input type="submit" name="Find" value="Find" onclick="javascript:send_event('BATCH/SHOW_ASOS')" id="" title="" />
         </td>
         <td class="smallfont1" align="left" nowrap="nowrap"><br />1) Click on the name of the desired file.</td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td></td>
         <td class="smallfont1" align="left" nowrap="nowrap">2) In the "File Download" window that opens click "[Save]".</td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td></td>
         <td class="smallfont1" align="left" nowrap="nowrap">3) In the "Save As" window, select a location to save the file and click "[Save]".</td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td></td>
         <td class="smallfont1" align="left">4) When the file has been saved, the window will close and the ASOS file screen will be displayed again.</td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td class="smallfont1" width="35%" nowrap="nowrap"><br />You have <TMPL_VAR FILE_COUNT> files available for download.</td>
         <td class="smallfont1" align="left" nowrap="nowrap"><br />The files on this screen can be downloaded as many times as needed.</td>
         <td></td>
         <td></td>
       </tr>
       <tr>
         <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="3" border="0"></td>
         <td></td>
         <td></td>
         <td></td>
       </tr>
   </table>

   <table id="resultscontent" class="resultstable text10" cellspacing="0" width="750">
     <thead>
       <tr>
       
       
       </td>


       </tr>
       <tr>
         <td width="25%">File Name</td>
         <td width="25%">State</td>
         <td width="25%">Date / Time</td>
         <td width="25%">Size</td>
       </tr>
     </thead>
     <tbody>
       <tr>
         <td class="unifont2" align="center">
           <TMPL_LOOP ASOS_LOOP >
              <tr class="<TMPL_VAR BG_COLOR>">
                <td class="unifont2"><a href="<TMPL_VAR ACTION_BATCH>?<TMPL_VAR LINK>" ><TMPL_VAR FILENAME></a></td>
                <td><TMPL_VAR STATE></td>
                <td><TMPL_VAR DATE_TIME></td>
                <td><TMPL_VAR SIZE></td>
              </tr>
           </TMPL_LOOP>
         </td>
       </tr>
     <tbody>
</table>

</div>
</div>

<TMPL_UNLESS CSAML_LOGIN>
<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/SERVICES')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>
</TMPL_UNLESS>

<BR><BR>

</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END show_asos.tpl -->
