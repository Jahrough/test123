<!-- did_sec_ques.tpl -->

<TMPL_INCLUDE NAME="v4/features/forgotpassword/header.tpl">
 	    
	    
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
    <td width="550">
    <div class="row"></div>
    <div class=" pull-left">
     Your temporary password has been emailed to the address we have on file for you.
    </div>
    <div class="row"></div>
    <div class=" pull-left">
     If you don't receive your temporary password, please call LexisNexis® Customer Support at 1-866-277-8407,
    </div>
    <div class="row"></div>
    <div class=" pull-left">
     or contact your Local System Administrator.<br><br>
    </div>
    <div class="row"></div>
    <div class="row"></div>
    <div class=" pull-left">
     When you sign in, you will be prompted to change your password.
    </div>
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
    <td width="250">
  </tr>
</table>

<TMPL_INCLUDE NAME="v4/features/forgotpassword/footer.tpl">

<!-- end did_sec_ques.tpl -->
