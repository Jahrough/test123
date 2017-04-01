<!-- BEGIN new_choose_process_body.tpl -->
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
      						<input type=radio name=PROCESS_TYPE onclick="javascript:enable_red_flags(1);" value="1"<TMPL_IF 1_CHECKED> CHECKED</TMPL_IF>>1&nbsp;-&nbsp;Consumer InstantID&nbsp;
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
	  					</tr>
	  					<tr>
    						<td class="unifont1">
      						<input type=radio name=PROCESS_TYPE onclick="javascript:enable_red_flags(2);" value="2"<TMPL_IF 2_CHECKED> CHECKED</TMPL_IF>>2&nbsp;-&nbsp;Business InstantID&nbsp;
							</td>
							<td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
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
					<blockquote>
    <TMPL_IF THRESHOLD_LOOP>
    				<select name="THRESHOLD" style="width:300px;" width="10" height="3" size="1">
    <TMPL_LOOP THRESHOLD_LOOP>
        			<option value="<TMPL_VAR VALUE>" <TMPL_IF SELECTED>selected</TMPL_IF>><TMPL_VAR DISPLAY_NAME></option>
    </TMPL_LOOP>
    				</select>
    </TMPL_IF>
            &nbsp;&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Threshold: Select 100% through 80% to set how closely the search terms should match the results. &nbsp;A threshold of 100% means that the search and result has to match exactly. &nbsp;A threshold of 80% means that additional fuzzy search logic will be used to look for spelling and name variations.  &nbsp;The default is 84% match criteria.<br> <br> Flexible matching algorithms are used in searching to reduce false positive hits and take into account name variations. &nbsp;The matching score is displayed in the results with the highest scored records appearing first:<br> <br>Example:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>BIN LADEN</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>1.000</b><br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Name: <b>USAMA BIN LADEN NETWORK</b><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max Match Score: <b>0.866</b><br> <br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 400, FIXX, 260, FIXY, 15, STICKY, CAPTION, 'Global Watchlist Threshold Level', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16"
height="16"></a>
					</blockquote>
					</td>
  				</tr>
			</table>
			</td>
		</tr>
		<tr>
			<td>
			  <table>
				  <tr>
    				<td class="batchpricingheader" colspan="2">&nbsp;<b>Fraud Defender:<br></b></td>
  				</tr>
  				<tr>
    				<td class="unifont1">
	  				<blockquote>
	  				<table>
  						<tr>
    						<td class="unifont1">
      						<input type="checkbox" name="USE_FRAUD_DEFENDER" value="1"<TMPL_IF USE_FRAUD_DEFENDER> CHECKED</TMPL_IF>> Use Fraud Defender<super>&reg;</super></td>
	  					</tr>
	  				</table>
	 	 			  </blockquote>
    				</td>
  				</tr>
				  <tr>
    				<td class="batchpricingheader" colspan="2">&nbsp;<b>Red Flags Rule Report:<br></b></td>
  				</tr>
  				<tr>
    				<td class="unifont1">
	  				<blockquote>
	  				<table>
  						<tr>
    						<td class="unifont1">
      						<input type="checkbox" name="USE_RED_FLAGS_RULE" value="1"<TMPL_IF USE_RED_FLAGS_RULE> CHECKED</TMPL_IF>> Use Red Flags Rule</td>
	  					</tr>
	  				</table>
	 	 			  </blockquote>
    				</td>
  				</tr>
  			</table>
   			</td>
		</tr>
  	</table>
	</td>
</tr>
<script>
javascript:enable_red_flags(<TMPL_IF 1_CHECKED>1<TMPL_ELSE>2</TMPL_IF>);
</script>

<!-- END new_choose_process_body.tpl -->
