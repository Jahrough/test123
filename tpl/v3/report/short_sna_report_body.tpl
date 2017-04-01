<!-- begin: v3/report/short_sna_report_body.tpl -->
    <div><legend>Report Options</legend></div>
    <div class="row-wrapper grey-border margin-for-footer">
        <table class="options-table">
			<tr>
				<td>
					<table>
						<tr>
						  <td><label for="MED_ONLY"><b>Medical Businesses Only&nbsp;&nbsp;</b></label></td>
						  <td><input type="checkbox" name="MED_ONLY" id="MED_ONLY" value="1" <TMPL_IF MED_ONLY_CHK>CHECKED</TMPL_IF> ></td>
		  			    </tr>
		  		    </table>
		  	    </td>
			</tr>
			<tr>
				<td>
                    <div class="text-and-select">
                        <div class="tas-text">
                            Business Status
                        </div>
                        <div class="tas-select">
							<input type="radio" name="BUS_STATUS" value="A">&nbsp;Active
							<input type="radio" name="BUS_STATUS" value="I">&nbsp;Inactive
							<input type="radio" name="BUS_STATUS" value="ALL" checked>&nbsp;All
                        </div>
                    </div>
		  	    </td>
			</tr>
            <tr>
            	<td>
                    <div class="text-and-select">
                        <div class="tas-text">
                            Degree
                        </div>
                        <div class="tas-select">
						<select name="DEGREE_CUTOFF">
							<option value="0">0</option>
							<option value="1">1</option>
							<option value="1.6">1.6</option>
							<option value="2">2</option>
						</select>
                        </div>
                    </div>
				</td>       
			</tr>
        </table>
    </div>
<!-- end: v3/report/short_sna_report_body.tpl -->
