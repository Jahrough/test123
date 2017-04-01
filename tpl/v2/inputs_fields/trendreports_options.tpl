<!-- begin inputs_fields/trendreport_options.tpl -->
<INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_REPORT>">
<INPUT type=hidden NAME="TrendReportsPDF" VALUE="" ID="TrendReportsPDF">
    <!--- Start Show Trend Reports --->
    <TMPL_IF NAME='SHOWTRENDREPORTS'>
        <tr>
            <td valign="top" align="left">
                <span class="moreSearchesHeader" id="title_text"></span>
                <script>write_search_title('<TMPL_VAR NAME='Trend Reports'>');</script>
            </td>
        </tr>
        <tr>
            <td valign="top" align="left">
                <table border="0" cellpadding="2" cellspacing="0">
                    <tr>
                        <td>Easy-to-read PDF reports provide useful information for tracking bankruptcy trends.</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><strong>Bankruptcy Trend Reports</strong><br>Click on the links below to view national average statistical reports for bankruptcy activity over the past 36 months.</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="left" valign="top">
                <table border="0" cellpadding="2" cellspacing="0" width="100%">
                    <tr id="tbsrchhdr">
                        <td width="65%">Reports</td>
                        <td>Last Update</td>
                    </tr>
                    <tr>
                        <td colspan= "1">
                            <img src="<TMPL_VAR NAME='IMGPATH'>/ico_openlink.gif"><A href="javascript:SetPDFOpt('<TMPL_VAR NAME=BANKRUPTCY_FILENAME>');show_report_win('REPORT2/SHOW_TRENDREPORT_PDF');">Bankruptcy Statistics - (data)</A></td>
                            <td><TMPL_VAR BANKRUPTCYSTATS_FILEDATE></td>
                    </tr>
                    <tr>
                        <td colspan= "1" ><img src="<TMPL_VAR NAME='IMGPATH'>/ico_openlink.gif"><A href="javascript:SetPDFOpt('<TMPL_VAR NAME=FILINGPATTERNS_FILENAME>');show_report_win('REPORT2/SHOW_TRENDREPORT_PDF');">Filing Patterns - (graph)</A></td>
                            <td><TMPL_VAR FILINGPATTERNS_FILEDATE></td>
                    </tr>
                    <tr>
                        <td colspan= "1"><img src="<TMPL_VAR NAME='IMGPATH'>/ico_openlink.gif"><A href="javascript:SetPDFOpt('<TMPL_VAR NAME=CHAPTERTRENDS_FILENAME>');show_report_win('REPORT2/SHOW_TRENDREPORT_PDF');">Chapter Trends - (graph)</A></td>
                        <td><TMPL_VAR CHAPTERTRENDS_FILEDATE></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
            <br>
            <font color="#CC3333">NOTE: Reports are in PDF format and require the newest version of Adobe&reg; Acrobat&reg; Reader.  You can download the Adobe Acrobat Reader at </font><a HREF="http://www.adobe.com" target="_blank"><font color="blue">www.adobe.com</font>
            </td>
        </tr>

    </TMPL_IF>
    <!--- End Show Trend Reports --->
<!-- end inputs_fields/trendreports_options.tpl -->
