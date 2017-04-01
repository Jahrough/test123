<!-- not_registered.tpl -->

<TMPL_INCLUDE NAME="v4/features/forgotpassword/header.tpl">
        
        
        <input type="hidden" name="I" value=''>
        <input type=hidden name=FP_INFO value='<TMPL_VAR NAME=FP_INFO>'>

    <div id="wrapper">
    <table id="use_table">
      <tr>
        <td>

	<p class="text12">
	<br><br>
	<h2>Forgot Password</h2>
	<br/><br/>
	</p>

	<p class="text12">

	<TMPL_IF COMPANY>
	<b>Code : FPW10</b>
	<br><br>
	Please contact Customer Support at <TMPL_IF IRB>800.447.2112<TMPL_ELSE>866.277.8407</TMPL_IF> for further assistance.
	<TMPL_ELSE>
	<b>Code : FPW13</b>
        <br/><br/>
	 Please contact Customer Support at <TMPL_IF IRB>800.447.2112<TMPL_ELSE>866.277.8407</TMPL_IF> for further assistance.
	</TMPL_IF>
	<br><br><br>

	</p>

	<p class="text12">

	<input type=button name="CONTINUE" value="Continue" onclick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>')">
	</p>

      </td>
    </tr>
  </table>
</div>

<br/><br/><br/>
<br/><br/><br/>

</form>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>

<!-- end not_registered.tpl -->
