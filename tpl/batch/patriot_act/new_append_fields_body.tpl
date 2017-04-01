<!-- BEGIN new_append_fields_body.tpl -->

<table border="1" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
	<tr>
		<td>
		<table border="0" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
  			<tr>
    			<td class="batchpricingheader" colspan="2">&nbsp;<b>Threshold Level:<BR></b></td>
  			</tr>
  			<tr>
            	<td class="smallfont1" colspan="2">
                <blockquote>
    <TMPL_IF THRESHOLD_LOOP>
                    <select name="THRESHOLD" style="width:300px;" width="10" height="3" size="1">
    <TMPL_LOOP THRESHOLD_LOOP>
                    <option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>selected</TMPL_IF>><TMPL_VAR DISPLAY_NAME></option>
    </TMPL_LOOP>
                    </select>
    </TMPL_IF>

			&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Threshold: Select 100% through 80% to set how closely the search terms should match the results. &nbsp;A threshold of 100% means that the search and result has to match exactly. &nbsp;A threshold of 80% means that additional fuzzy search logic will be used to look for spelling and name variations. &nbsp;The default is 84% match criteria.<br> <br> Flexible matching algorithms are used in searching to reduce false positive hits and take into account name variations. &nbsp;The matching score is displayed in the results with the highest scored records appearing first:<br> <br>Example:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>BIN LADEN</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>1.000</b><br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>USAMA BIN LADEN NETWORK</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>0.866</b><br> <br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Threshold Level', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
				</blockquote>
				</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		<table border="0" cellpadding="5" cellspacing="0" width="600" bordercolor="#000000">
			<tr>
    			<td class="batchpricingheader" colspan="2">&nbsp;<b>Watch Lists:<BR></b></td>
  			</tr>

  			<tr>
    			<td class="smallfont1" colspan="2">
				<blockquote>
	<input type="radio" name="WATCHLIST" value="true" <TMPL_IF watchlist-true>checked</TMPL_IF>> OFAC<br><br>
	<input type="radio" name="WATCHLIST" value="false" <TMPL_IF watchlist-false>checked</TMPL_IF>> OFAC and Other Watch Lists
	&nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Watchlist: You can also choose to only search the Office of Foreign Asset Control List (OFAC), which includes the Palestinian Legislative Council (PLC) List, by checking the OFAC Search Only box. &nbsp;When searching OFAC only, your results may also contain aliases for an individual.<br><br>Results may include: Full Name, Address, Sourcxe, and Remoarks (e.g., Name Type, Other Names, Date of Birth, Expiration Date, Place of Birth, Vessel Owner and Vessel Type).<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 60, FIXY, 205, STICKY, CAPTION, 'Watch Lists', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
				<blockquote>
				</td>
  			</tr>
		</table>
    	</td>
  	</tr>
</table>

<!-- END new_append_fields_body.tpl -->
