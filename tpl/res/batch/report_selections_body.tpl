<!-- BEGIN report_selections_body.tpl -->

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
        <td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="return_options(0);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="wizardcounter" align="right"><b><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CoverageWindow',420,350,0,0,0,1,1,0,'','coverage/rate_evasion_coverage');">Coverage</a>&nbsp;</b></td>
  </tr>
  <tr>
    <td align="center" class="batchbanner" colspan="2"><b>Select Return Options</b></td>
  </tr>
<!-- BEGIN -->
 
</table>

<table border="1" cellpadding="10" cellspacing="0" width="600" bordercolor="#000000">
  <tr>
    <td align=center>
    <table border="0" cellpadding="0" cellspacing="0" width="500">
      <tr>
        <td colspan="2">
	<table border="0" cellpadding="2" cellspacing="0" width="500">
	  <!--<tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption1" value="1"<TMPL_IF NAME=resoption1> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Identity Verification</td>
	  </tr>-->
    <input type="hidden" name="resoption1" value="1">
	  <tr>
	    <td width="1%" align="center" class="smallfont1">(default)</td>
	    <td width="99%" class="smallfont1">Identity Verification&nbsp;<a href="javascript:void(0);" onClick="return_options(1);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
	  <tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption2" value="1"<TMPL_IF NAME=resoption2> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Matching Index&nbsp;<a href="javascript:void(0);" onClick="return_options(2);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
	  <tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption3" value="1"<TMPL_IF NAME=resoption3> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Previous Addresses&nbsp;<a href="javascript:void(0);" onClick="return_options(3);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
	  <tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption4" value="1"<TMPL_IF NAME=resoption4> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Reverse Phone&nbsp;<a href="javascript:void(0);" onClick="return_options(4);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
	  <tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption5" value="1"<TMPL_IF NAME=resoption5> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Driver License&nbsp;<a href="javascript:void(0);" onClick="return_options(5);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
	  <tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption6" value="1"<TMPL_IF NAME=resoption6> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Motor Vehicle Registrations&nbsp;<a href="javascript:void(0);" onClick="return_options(6);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
          <!-- no branded titles
	  <tr>                                                                                                                          <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption7" value="1"<TMPL_UNLESS ALLOW_BRANDED_TITLES> DISABLED<TMPL_ELSE><TMPL_IF NAME=resoption7> CHECKED</TMPL_IF></TMPL_UNLESS>></td>
	    <td width="99%" class="smallfont1"><TMPL_UNLESS ALLOW_BRANDED_TITLES><a class="inputlinklabelred" href="javascript:void(0);" onClick="alert('You do not currently have access to the Branded Title Search. To obtain access please call Customer Service at 1-866-277-8407')">Branded Titles</a><TMPL_ELSE>Branded Titles</TMPL_UNLESS>&nbsp;<a href="javascript:void(0);" onClick="return_options(7);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a><TMPL_UNLESS HIDE_PRICES>&nbsp;Cost of $1.00 per VIN supplied is charged for Branded Titles</TMPL_UNLESS></td>
	  </tr>
          -->
	  <tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption8" value="1"<TMPL_IF NAME=resoption8> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Additional Drivers&nbsp;<a href="javascript:void(0);" onClick="return_options(8);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
	  <tr>
	    <td width="1%" align="center" class="smallfont1"><input type="checkbox" name="resoption9" value="1"<TMPL_IF NAME=resoption9> CHECKED</TMPL_IF>></td>
	    <td width="99%" class="smallfont1">Other Potential Additional Drivers&nbsp;<a href="javascript:void(0);" onClick="return_options(9);"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
	  </tr>
	</table>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>  
<table>
  <tr><td>&nbsp;</td></tr> 
  <tr>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>
<!-- END report_selections_body.tpl -->
