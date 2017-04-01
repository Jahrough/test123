<!-- payments/payment_bottom.tpl -->

	</td>
	</tr>
	  <tr>
	    <td align="center" colspan="2"><img border="0" width="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
	  </tr>
      </table>
    </td>
  </tr>	
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

</div>

<TMPL_IF NAME="ERROR_MSG">
    <script>alert('<TMPL_VAR NAME=ERROR_MSG>\n');</script>
</TMPL_IF>

<TMPL_IF NAME="ERROR_MSG_LIST">
    <script>
    var errortext = '';
    <TMPL_LOOP NAME="ERROR_MSG_LIST">
	errortext += '<TMPL_VAR NAME=MSG>\n';
    </TMPL_LOOP>
    alert(errortext);
    </script>
</TMPL_IF>

</form>
</body>
</html>
<!-- END payments/payment_bottom.tpl -->
