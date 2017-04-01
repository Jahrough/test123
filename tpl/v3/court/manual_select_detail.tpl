<!-- Begin manual_select_detail.tpl -->
<TMPL_IF NAME=MANUAL_SELECT_STATE_LOOP>
    <tr class="courttableheader">
        <th width="100%" class="unifont1" colspan="5" align="center"><b>Custom State Searches</b></th>
    </tr>
    <TMPL_LOOP NAME=MANUAL_SELECT_STATE_LOOP>
        <tr class="ctc">
            <td nowrap="1"<TMPL_IF NO_DAYS> colspan="2"</TMPL_IF>><TMPL_VAR INDENT><b><TMPL_VAR NAME=DESC></b></td>
            <TMPL_UNLESS NO_DAYS><td align="center"><TMPL_VAR INDENT>2-14 DAYS</td></TMPL_UNLESS>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR SURCHARGE></td>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
        </tr>
    </TMPL_LOOP>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_COUNTY_LOOP>
    <tr class="courttableheader">
        <th width="100%" class="unifont1" colspan="5" align="center"><b>Custom County Searches</b></th>
    </tr>
    <TMPL_LOOP NAME=MANUAL_SELECT_COUNTY_LOOP>
        <tr class="ctc">
            <td nowrap="1"<TMPL_IF NO_DAYS> colspan="2"</TMPL_IF>><TMPL_VAR INDENT><b><TMPL_VAR NAME=DESC></b></td>
            <TMPL_UNLESS NO_DAYS><td align="center"><TMPL_VAR INDENT>2-14 DAYS</td></TMPL_UNLESS>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR BASE_PRICE></td>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR SURCHARGE></td>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
        </tr>
    </TMPL_LOOP>
</TMPL_IF>
<TMPL_IF NAME=MANUAL_SELECT_FEDERAL_LOOP>
    <tr class="courttableheader">
        <th width="100%" class="unifont1" colspan="5" align="center"><b>Custom Federal District Searches</b></th>
    </tr>
    <TMPL_LOOP NAME=MANUAL_SELECT_FEDERAL_LOOP>
        <tr class="ctc">
            <td nowrap="1"<TMPL_IF NO_DAYS> colspan="2"</TMPL_IF>><TMPL_VAR INDENT><b><TMPL_VAR NAME=DESC></b></td>
            <TMPL_UNLESS NO_DAYS><td align="center"><TMPL_VAR INDENT>2-14 DAYS</td></TMPL_UNLESS>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
            <td align="right">$0.00</td>
            <td align="right"><TMPL_VAR INDENT>$<TMPL_VAR PRICE></td>
        </tr>
    </TMPL_LOOP>
</TMPL_IF>
<!-- End manual_select_detail.tpl -->
