<!-- begin: manage_account_gather_admin_to_be_info.tpl -->
<div id="A2B_BLOCK" style="display:inline-block; text-align:left;">
<!-- <div id="A2B_BLOCK" style="<TMPL_IF SYSTEMADMINISTRATOR> display:inline-block;<TMPL_ELSE> display:none;</TMPL_IF> text-align:left;"> -->
<fieldset>
    <div align="left" class="unifont1bold"><legend>Personal Data required for Admin-to-be</legend></div>
    <br/>
    <span align="left" class="unifont1boldred"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" >Note: Business address will not be accepted.</span>
    <br/><br/>
    <span align="left" class="unifont1"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="Required"> Home Street Address:</span>
    <INPUT class="nsinputs" TYPE="text" NAME="A2B_ADDR_LINE1" SIZE="25" VALUE="" MAXLENGTH=30 />
    <br/>

    <span align="left" class="unifont1"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="Required"> Home City:</span>
    <INPUT class="nsinputs" TYPE="text" NAME="A2B_ADDR_CITY" SIZE="25" VALUE="" MAXLENGTH=30" />
    <br/>

    <span align="left" class="unifont1"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="Required"> Home State:</span>
    <INPUT class="nsinputs" TYPE="text" NAME="A2B_ADDR_STATE" SIZE="2" VALUE="" MAXLENGTH=2" />
    <br/>

    <span align="left" class="unifont1"><img border="0" width="11" height="10" src="<TMPL_VAR NAME=IMGPATH>/star.gif" alt="Required"> Home Zip Code:</span>
    <INPUT class="nsinputs" TYPE="text" NAME="A2B_ADDR_POSTALCODE" SIZE="25" VALUE="" MAXLENGTH=10" />
    <br/>

      <span align="left" class="unifont1">&nbsp;Show Additional Information:
        <a id="iiddownicon" href="javascript:check_display_addtl_spii('T')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_down.gif" hspace="4"/></a>
        <a id="iidupicon" style="display:none;" href="javascript:check_display_addtl_spii('F')" /><img src="<TMPL_VAR NAME=IMGPATH>/ico_information_up.gif" hspace="4"/></a>
      </span>


    <div id="A2B_ADDTL_INFO" style="<TMPL_IF SYSTEMADMINISTRATOR> display:inline-block;<TMPL_ELSE> display:none;</TMPL_IF> text-align:left;">
    <fieldset>
    <span align="left" class="unifont1">DOB (mm/dd/yyyy):</span>
    <INPUT class="nsinputs" TYPE="text" NAME="A2B_DOB" SIZE="15" VALUE="" MAXLENGTH=10 />
    <br/>

    <span align="left" class="unifont1">SSN (first 5 digits):</span>
    <INPUT class="nsinputs" TYPE="text" NAME="A2B_SSN" SIZE="15" VALUE="" MAXLENGTH=5 />
    <br/>
    </fieldset>
    </div>
</fieldset>
</div>

<!-- end: manage_account_gather_admin_to_be_info.tpl -->
