<!-- begin: uid_capt.tpl -->

<input type=hidden name="PROCESS" value="1">
<input type=hidden name="_K" value="<TMPL_VAR NAME=_K>">
<input type=hidden name="_SK" value="<TMPL_VAR NAME=_SK>">
<input type=hidden name=_ST value=''>

    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <td width="15">&nbsp; &nbsp;</td>
    <td width="400">
    <div class="row pull-left">
     <strong>&nbsp;&nbsp;Please enter your User ID to begin resetting your password.</strong>
    </div>
    <div class="row"></div>
    <div class="row">
      <div class="input col col-6">
        <label>
          <input type="text" id="LOGINID" class="form-control" autocomplete="off"  name="LOGINID" placeholder="ID">
          <span class="tooltip">ID</span>
        </label>
      </div>
    </div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row pull-left">&nbsp;&nbsp;
       <IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:">
       &nbsp;&nbsp;<span class="unifont1"><a href="#" class="verification" onClick="javascript:sound_win(); return false;">Listen to Characters</a></span>
    </div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
      <div class="input col col-6">
        <label>
          <input type="text" id="_T" name="_T" class="form-control" autocomplete="off" placeholder="Security Code" maxlength="24">
          <span class="tooltip">Enter the sequence of numbers displayed above.</span>
        </label>
      </div>
    </div>
    <TMPL_IF NAME=ERROR_MESSAGE>
       <div><em class="invalid"><TMPL_VAR NAME=ERROR_MESSAGE></em></div> <br>
    </TMPL_IF>
    <div class="row"> </div>
<!-- end: uid_capt.tpl -->
