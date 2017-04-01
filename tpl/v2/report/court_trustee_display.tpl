        <TMPL_IF COURT_INFO_LOOP>
			<tr>
				<td ><b>Court Information</b></td>
			</tr>
			<tr>
				<td align="left" nowrap>&nbsp;District</td>
				<td align="left" nowrap>Address</td>
				<td align="left" nowrap>City</td>
				<td align="left" nowrap>State</td>
				<td align="left" nowrap>Zip</td>
				<td align="left" nowrap>Phone Number</td>
			</tr>	
			<TMPL_LOOP COURT_INFO_LOOP>
				<tr>
					<TD align="left" wrap valign="top" width="25%">&nbsp;<TMPL_VAR COURT_DISTRICT></TD>
					<TD align="left" nowrap valign="top" width="20%"><TMPL_IF COURT_ADDR1><TMPL_VAR COURT_ADDR1>&nbsp;</TMPL_IF><TMPL_IF COURT_ADDR2><br />&nbsp;<TMPL_VAR COURT_ADDR2></TMPL_IF></TD>
					<TD align="left" nowrap valign="top" width="15%"><TMPL_VAR COURT_CITY></TD>
					<TD align="left" nowrap valign="top" width="10%"><TMPL_VAR COURT_STATE></TD>
					<TD align="left" nowrap valign="top" width="10%"><TMPL_VAR COURT_ZIP></TD>
					<TD align="left" nowrap valign="top" width="15%"><TMPL_VAR COURT_PHONE></TD>
				</tr>
			</TMPL_LOOP>


        </TMPL_IF>

        <TMPL_IF TRUSTEE_INFO_LOOP>

            <tr>
                <td colspan="6" align="center"><div id="lineVertRedDot"></div></td>
            </tr>
			<tr>
				<td colspan="2"><b>Trustee Information</b></td>
			</tr>
			<tr>
				<td align="left" nowrap>&nbsp;Trustee Name</td>
				<td align="left" nowrap>Address</td>
				<td align="left" nowrap>City</td>
				<td align="left" nowrap>State</td>
				<td align="left" nowrap>Zip</td>
				<td align="left" nowrap>Phone Number</td>
			</tr>	
			<TMPL_LOOP TRUSTEE_INFO_LOOP>
				<tr>
					<TD align="left" nowrap valign="top" width="25%">&nbsp;<TMPL_VAR TRUSTEE_NAME></TD>
					<TD align="left" nowrap valign="top" width="20%"><TMPL_VAR TRUSTEE_ADDR1></TD>
					<TD align="left" nowrap valign="top" width="15%"><TMPL_VAR TRUSTEE_CITY></TD>
					<TD align="left" nowrap valign="top" width="10%"><TMPL_VAR TRUSTEE_STATE></TD>
					<TD align="left" nowrap valign="top" width="10%"><TMPL_VAR TRUSTEE_ZIP></TD>
					<TD align="left" nowrap valign="top" width="15%"><TMPL_VAR TRUSTEE_PHONE></TD>
				</tr>
			</TMPL_LOOP>

        </TMPL_IF>
