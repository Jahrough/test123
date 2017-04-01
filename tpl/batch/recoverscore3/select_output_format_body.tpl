<!-- BEGIN select_output_format_body.tpl -->
  <tr>
    <td align="center" class="batchbanner"><br><b>Choose Output Format</b></td>
  </tr>

  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td class="unifont1">
	  <BR>
	  <b>Select the format in which you want your data to be returned:<BR></b>
	  Note: The format of the output file determines availability of output fields.
	  <blockquote>
	  <table>
	  <tr>
    	<td class="unifont1">
      	<input type=radio name=OUTPUT_TYPE value="1"<TMPL_IF 1_CHECKED> CHECKED</TMPL_IF>>1&nbsp;-&nbsp;Comma Delimited Output File&nbsp;
		</td>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="<TMPL_VAR NAME=HLPPATH>/batch/comma_test_appended.csv" target="_batch_sample"><img border="0" width="79" height="13" src="<TMPL_VAR NAME=IMGPATH>/BATCH/view_sample.gif"></a> 
		</td>
	  </tr>
	  <tr>
    	<td class="unifont1">
      <input type=radio name=OUTPUT_TYPE value="2"<TMPL_IF 2_CHECKED> CHECKED</TMPL_IF>>2&nbsp;-&nbsp;Microsoft Word Output File&nbsp;
		</td>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="<TMPL_VAR NAME=HLPPATH>/batch/sample_how_to.rtf" target="_batch_sample"><img border="0" width="79" height="13" src="<TMPL_VAR NAME=IMGPATH>/BATCH/view_sample.gif"></a> 
		</td>
	  </tr>
	  <tr>
    	<td class="unifont1">
      <input type=radio name=OUTPUT_TYPE value="3"<TMPL_IF 3_CHECKED> CHECKED</TMPL_IF>>3&nbsp;-&nbsp;HTML Output File&nbsp;
		</td>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="<TMPL_VAR NAME=HLPPATH>/batch/sample_how_to.html" target="_batch_sample"><img border="0" width="79" height="13" src="<TMPL_VAR NAME=IMGPATH>/BATCH/view_sample.gif"></a> 
		</td>
	  </tr>
	  <tr>
    	<td class="unifont1">
      <input type=radio name=OUTPUT_TYPE value="4"<TMPL_IF 4_CHECKED> CHECKED</TMPL_IF>>4&nbsp;-&nbsp;Adobe Acrobat (pdf) Output File&nbsp;
		</td>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;<a href="<TMPL_VAR NAME=HLPPATH>/batch/sample_how_to.pdf" target="_batch_sample"><img border="0" width="79" height="13" src="<TMPL_VAR NAME=IMGPATH>/BATCH/view_sample.gif"></a> 
		</td>
	  </tr>
	  <TMPL_UNLESS ONLINE>
	  <tr>
    	<td class="unifont1">
      <input type=radio name=OUTPUT_TYPE value="5"<TMPL_IF 5_CHECKED> CHECKED</TMPL_IF>>5&nbsp;-&nbsp;Predefined Output Layout&nbsp;
		</td>
		<td>
			&nbsp;&nbsp;&nbsp;&nbsp;
		  	<select name="OUTPUT_LAYOUT" onChange="OUTPUT_TYPE[4].checked=true">
			  <option value=""></option>
			  <TMPL_IF LAYOUTS_LOOP>
			  <TMPL_LOOP LAYOUTS_LOOP>
			  	<option value="<TMPL_VAR output_format_name>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR output_format_name></option>
			  </TMPL_LOOP>
			  </TMPL_IF>
			</select>
		</td>
	  </tr>
	  </TMPL_UNLESS>
	  </table>
	  </blockquote>
	  1 - Comma delimited files are created for use by Microsoft Excel or other programs which can read a file with a comma separating each field. Since limitations exist for the number of output fields that can exist in a comma delimited file, the number of fields to be appended to your output file is limited in this option. One record is returned for each input record supplied.<P>

	  2 - Choosing the Microsoft Word output file creates an RTF file format that is readable by Microsoft Word or other programs capable of reading RTF files. Results are returned in zipped files containing up to 50 records each, with the records separated by page breaks.<P>

	  3 - Choosing the HTML output file creates an HTML file format that is viewable by your computer's Internet browser. HTML is the major language of the Internet's World Wide Web. Results are returned in zipped files containing up to 50 records each, with the records separated by page breaks.<P>

	  4 - Choosing the Adobe Acrobat output file creates a PDF file format that is viewable by Adobe Acrobat. PDF files are portable across a broad range of hardware. Results are returned in zipped files containing up to 50 records each, with the records separated by page breaks.<P>
    </td>
  </tr>
<!-- END select_output_format_body.tpl -->
