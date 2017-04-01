<!-- map/hidden_form.tpl -->
<script language="JavaScript">
function map_copy_data () {
	var search = document.SEARCH;
	var map = document.MAP;

	map.STREET_ADDRESS.value = search.STREET_ADDRESS.value;
	map.ADDRESS.value = search.STREET_ADDRESS.value;
	map.CITY.value = search.CITY.value;
	map.STATE.value = search.STATE.value;
	map.ZIP.value = search.ZIP.value;
	map.ZIP4.value = search.ZIP4.value;
	map.REFERENCE_CODE.value = search.REFERENCE_CODE.value;

}
</script>
<form NAME="MAP" action="<TMPL_VAR NAME=ACTION_MISC>" method="post" target="MapWindow" onsubmit="map_copy_data()">
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<INPUT TYPE="HIDDEN" NAME="STREET_ADDRESS" VALUE="">
<INPUT TYPE="HIDDEN" NAME="ADDRESS" VALUE="">
<INPUT TYPE="HIDDEN" NAME="CITY" VALUE="">
<INPUT TYPE="HIDDEN" NAME="STATE" VALUE="">
<INPUT TYPE="HIDDEN" NAME="ZIP" VALUE="">
<INPUT TYPE="HIDDEN" NAME="ZIP4" VALUE="">
<INPUT TYPE="HIDDEN" NAME="REFERENCE_CODE" VALUE="">
<INPUT TYPE="HIDDEN" NAME="EVENT" VALUE="MAP/CREATE_MAP">
<TMPL_IF NAME="SHOW_GENERIC_FEEDBACK_FORM">
    <INPUT TYPE="HIDDEN" NAME="SOURCE_EVENT_ID" VALUE="<TMPL_VAR NAME=SOURCE_EVENT_ID>">
</TMPL_IF>

<!-- BEGIN This is for having report option on a decision popup -->
<INPUT TYPE="HIDDEN" NAME="KEY_VALUES_STR" VALUE="">
<INPUT TYPE="HIDDEN" NAME="NUMERO" VALUE="">
<!-- END This is for having report option on a decision popup -->
<INPUT TYPE="HIDDEN" NAME="GOOGLE_DISCLAIMER_ACCEPTED" VALUE="<TMPL_VAR NAME=GOOGLE_DISCLAIMER_ACCEPTED>">
<INPUT TYPE="HIDDEN" NAME="GMAP_UNIQUE_ID" VALUE="<TMPL_VAR NAME=GMAP_UNIQUE_ID>">
</form>

<!-- end map/hidden_form.tpl -->

