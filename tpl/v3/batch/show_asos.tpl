<!-- BEGIN show_asos.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<style>
    table.display{
        border-left: 1px solid #BCBEC0;
        border-right: 1px solid #BCBEC0;
    }
</style>

<INPUT TYPE=HIDDEN NAME=EVENT>
<INPUT TYPE=HIDDEN NAME=STATE_DROPBOX_SELECTED ID=STATE_DROPBOX_SELECTED>


<div class="fieldset-title">Advanced Sex Offender Solution (ASOS)</div>
<fieldset class="batchFieldset">
<table style="width:100%;">
    <thead style="display: none">
      <tr>
        <th aria-label="Main">&nbsp;</th>
      </tr>
    </thead>
    <table border="0" cellspacing="0" width="750">
        <thead style="display: none">
          <tr>
            <th aria-label="Advanced Sex Offender Solution">&nbsp;</th>
            <th aria-label="Instructions">&nbsp;</th>
          </tr>
        </thead>
        <tr>
            <td class="unifont1bold">Advanced Sex Offender Solution (ASOS)</td>
            <td class="unifont1bold" colspan="3">To download a state file:</td>
        </tr>
        <tr>
            <td style="vertical-align: top;">
                <br>
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
           
                <input class="btn red-btn" type="submit" name="Find" value="Find" onclick="javascript:send_event('BATCH/SHOW_ASOS')" id="" title="" />
            </td>
            <td class="smallfont1" colspan="3"><br>
                1) Click on the name of the desired file.<br>
                2) In the "File Download" window that opens click "[Save]".<br>
                3) In the "Save As" window, select a location to save the file and click "[Save]".<br>
                4) When the file has been saved, the window will close and the ASOS file screen will be displayed again.
            </td>
       </tr>
       <tr>
         <td class="smallfont1">
            <br>You have <TMPL_VAR FILE_COUNT> files available for download.</td>
         <td class="smallfont1" colspan="3">
            <br>The files on this screen can be downloaded as many times as needed.</td>
       </tr>
   </table>
<table id="asosDataTables">
    <thead>
        <tr>
            <th id="col_name" width="25%">File Name</th>
            <th id="col_state" width="25%">State</th>
            <th id="col_date" width="25%">Date / Time</th>
            <th id="col_size" width="25%">Size</th>
        </tr>
    </thead>
    <tbody>
        <TMPL_LOOP ASOS_LOOP >
            <tr class="<TMPL_VAR BG_COLOR>">
                <td headers="col_name"><a title="Open or Save excel file" class="batchLnk" href="<TMPL_VAR ACTION_BATCH>?<TMPL_VAR LINK>" ><TMPL_VAR FILENAME></a></td>
                <td headers="col_state"><TMPL_VAR STATE></td>
                <td headers="col_date"><TMPL_VAR DATE_TIME></td>
                <td headers="col_size"><TMPL_VAR SIZE></td>
            </tr>
        </TMPL_LOOP>
    <tbody>
</table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a title="Back button" class="btn darkgrey-btn" href="javascript:show_batch_event('BATCH/SERVICES')">
            Back
        </a>
    </div>
</div>



</div>
</div>
</div>
<TMPL_INCLUDE NAME="batch/batch_footer.tpl">

<!-- END show_asos.tpl -->
