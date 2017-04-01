<select name="OFFENSE_CATEGORY_SO" placeholder="Offenses">
  <!--<option value="" selected>Offenses</option>-->
  <TMPL_LOOP NAME=OFFENSE_CATEGORY_SO_LOOP>
  <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
  </TMPL_LOOP>
</select>