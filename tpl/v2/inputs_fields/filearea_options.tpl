<!-- begin tcol/inputs_fields/filearea_options.tpl -->
<!--- Start Show Filearea options  --->
        <tr>
            <td valign="top" align="left">
                <span class="moreSearchesHeader" id="title_text"></span>
                <script>write_search_title('<TMPL_VAR NAME='File Area'>');</script>
            </td>
        </tr>
    <TMPL_IF NAME='DISABLE_BANKO_FILE_UPLOAD'>
		<tr>
			<td align="center"><b>Note:</b> You do not have permission to access this product.  Please call your Account Manager</td>
		</tr>
		<tr>
			<td align="center">to update your contract.  If you do not know who your Account Manager is, <td>
		</tr>
		<tr>
			<td align="center">please call for assistance at 1-866-277-8407<td>
		</tr>
		<tr><td>&nbsp;</td></tr>
    <TMPL_ELSE>
        <tr>
            <td align="left" valign="top">
                <tr>
                    <td colspan= "1">
			<IFRAME src="<TMPL_VAR NAME="FILE_AREA_SITE">?usercode=<TMPL_VAR NAME="LOGINID">&id=<TMPL_VAR NAME="SESSION_ID">" frameborder="0" scrolling="auto" width="100%" height="600px">
				<p>IFRAME not loading</p>
			</IFRAME>
                </tr>
            </td>
        </tr>
    </TMPL_IF>
<!--- End Show Filearea options  --->
<!-- end tcol/inputs_fields/filearea_options.tpl -->
