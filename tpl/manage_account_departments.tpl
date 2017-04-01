	      <TMPL_IF NAME="DEPARTMENTS">
                <tr>
                  <td class="unifont1" align="left" width="200">Department:</td>
                  <td align="left" width="200">
		    <select id="department" name="DEPARTMENT" onchange="show_other_dept(this)">
		      <TMPL_LOOP NAME="DEPARTMENTS">
			<option<TMPL_IF NAME='DEPT_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='DEPT_ID'>"><TMPL_VAR NAME='DEPT_DESC'></option>
		      </TMPL_LOOP>
		    </select>
                  </td>
                </tr>
                <tr id="other_dept_row">
                  <td class="unifont1" align="left" width="200">Other Department:</td>
                  <td align="left" width="200"><INPUT class="nsinputs" id="other_dept" TYPE="text" NAME="OTHER_DEPT" SIZE="25" VALUE="<TMPL_VAR NAME=OTHER_DEPT>" MAXLENGTH=30></td>
                </tr>
		<script type="text/javascript">show_other_dept();</script>
	      </TMPL_IF>
