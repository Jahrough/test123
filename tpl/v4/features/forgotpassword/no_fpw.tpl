<!-- no_fpw.tpl -->

<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
 	    
	    
	    <input type="hidden" name="I" value=''>
	    <input type=hidden name=FP_INFO value='<TMPL_VAR NAME=FP_INFO>'>
<table>
  <tr>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <td width="15">&nbsp; &nbsp;</td>
          <td width="700">
          <div class="row"></div>
          <div class="row"></div>
          <div class="text pull-left">
             The password recovery feature is not available for this ID.
          </div>
          <div class="row"></div>
          <div class="text pull-left">
             Please contact the LexisNexis® Customer Support Department at (866) 277-8407 and provide them with the following code - FPW12.
          </div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <div class="row"></div>
          <center>
          <div class="row">
               <button class="btn btn-danger" type="button" name="CLOSE" onCLick="send_event('LOGIN/LOGIN', '<TMPL_VAR NAME=ACTION>');">Continue</button>
          </div>
          </center>
          <td width="100">
  </tr>
</table>

<TMPL_INCLUDE NAME="v4/features/forgotpassword/footer.tpl">

<!-- end no_fpw.tpl -->
