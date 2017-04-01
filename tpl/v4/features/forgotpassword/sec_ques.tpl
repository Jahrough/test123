<!-- begin: sec_ques.tpl -->

<input type=hidden name="PROCESS" value="1">
<input type=hidden name="LOGINID" value="<TMPL_VAR LOGINID>">
<input type=hidden name="FPTINFO" value="<TMPL_VAR FPTINFO>">

<div class="row"></div>
<div class="row"></div>
<div class="row"></div>
<td width="30">&nbsp; &nbsp;</td>
<td width="400">
<div class="row pull-left">
<strong>&nbsp;&nbsp;Please answer your security question before continuing</strong>
</div>
<div class="row"></div>
<div class="row"></div>
<div class="row"></div>

<div class="row pull-left">
     <strong>&nbsp;&nbsp;Security Question:&nbsp;</strong><TMPL_VAR SECQUES>
</div>
<div class="row">
   <div class="input col col-8"> 
     <label>
       <input type="text" id="ANSWER" class="form-control"  name="ANSWER" placeholder="Security Answer" maxlength=60 AUTOCOMPLETE="off">
       <span class="tooltip">Security Answer</span>
     </label>
   </div>
</div>
<TMPL_IF NAME=ERROR_MESSAGE>
   <div><em class="invalid"><TMPL_VAR NAME=ERROR_MESSAGE></em></div> <br>
</TMPL_IF>
<div class="row"></div>
<div class="row"></div>
<div class="row"></div>

<!-- end: sec_ques.tpl -->
