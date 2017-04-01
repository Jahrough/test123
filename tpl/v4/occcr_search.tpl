<!-- ========================== OCCCR SEARCH FORM ========================== -->

<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
<!-- ============= JavaScript ============= -->
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/occcr_search.js"></script>


<!-- ============= Top Notice ============= -->
<div id="StepOneInstructions">
	<span class="stepOneInstructions1">* Entry Required.  </span>
	<span class="stepOneInstructions3"></span>
	<span class="stepOneInstructions2"> Additional Fees Apply</span>
	<span class="stepOneInstructions1">. Please see </span>
   <span class="stepOneInstructions4"><a href="javascript:void(0);" data-helpid = "OCCCR_FEES"><u>Fee Notice</u></a></span>
</div>

<!-- ============= Step One Area ============= -->
<div id="StepOneArea">
    <!-- Start Step 1============= -->
	<div id="StepOneHeader">
	   Subject Information
	</div>
	
	<div id="StepOneFields">
		<div class="row fieldsDivPadding">
			<div class="input col col-3">
				<label>
					<input autocomplete="off" type="text" name="ssn" id="ssn" maxlength="11" tabindex="5" placeholder="SSN *" class="form-control">
					<span class="tooltip">
						SSN *<span class="font-10"> (e.g. 123456789, 123-45-6789, 123 45 6789, 6789)</span>
					</span> 
				</label>
			</div>
		</div>
		<div class="row fieldsDivPadding">
			<div class="input col col-3">
				<label>
					<input type="text" id="lname" name="lname" maxlength="35" tabindex="6" value="" placeholder="Last Name *" class="form-control">
					<span class="tooltip">Last Name *</span> 
				</label>
			</div>
			<div class="input col col-3">
				<label>
					<input type="text" id="fname" name="fname" maxlength="35" tabindex="7" value="" placeholder="First Name *" class="form-control">
					<span class="tooltip">First Name *</span> 
				</label>
			</div>
			<div class="input col col-3">
				<label>
					<input type="text" id="mname" name="mname" maxlength="35" tabindex="8" value="" placeholder="Middle or Initial" class="form-control">
					<span class="tooltip">Middle or Initial</span> 
				</label>
			</div>
		</div>
		<div class="additional-info"> 
			<font color="#CCCCCC">Note: Enter only one name per field.</font> 
		</div>
		<div class="row fieldsDivPadding">
			<div class="input col col-6">
				<label>
					<input type="text" id="street" name="street" maxlength="35" tabindex="9" value="" placeholder="Street *" class="form-control">
					<span class="tooltip">Street *</span> 
				</label>
			</div>
		</div>
		<div class="row fieldsDivPadding">
			<div class="input col col-3">
				<label>
					<input type="text" id="city" name="city" maxlength="35" tabindex="10" value="" placeholder="City *" class="form-control">
					<span class="tooltip">City *</span> 
				</label>
			</div>
			<div class="input col col-3">
				<label>
					<select id="state1" name="state" tabindex="11" class="form-control">
						<option id="emptystates1" />
					</select>
					<span class="tooltip">State *</span>
				</label>
			</div>
			<div class="input col col-1">
				<label>
					<input type="text" id="zip" name="zip" maxlength="10" value="" tabindex="12" class="form-control" placeholder="Zip *">
					<span class="tooltip">
					   Zip *
					   <br />
					   <span class="font-10">(ex. 00000 or 00000-0000)</span>
					</span>
				</label>
			</div>
		</div>
		<div class="row fieldsDivPadding">
			<div class="input col col-3">
				<label>
					<input type="text" id="dob" name="dob" maxlength="10" value="" tabindex="13" placeholder="Date of Birth *" class="form-control">
					<span class="tooltip">
						Date of Birth * 
						<br />
						<span class="font-10">(mm/dd/yyyy)</span>
					</span> 
				</label>
			</div>
		</div>
		<div class="row fieldsDivPadding">
			<div class="input col col-3">
				<label>
					<select name="daterange" id="daterange1" tabindex="16" class="form-control">
						<option value="7" selected="selected">Previous Seven Years</option>
                        <option value="10">Previous Ten Years $$</option>
					</select>
					<span class="tooltip">Date Range</span>
					</span> 
				</label>
			</div>
		</div>
		<br />
		<br />
		<div class="row stepXBottoms">
			<button type="button" id="SubjectContinue" class="continue-btn" >Continue</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" id="SubjectReset" class="reset-btn" >Clear</button>&nbsp;
			<button type="button" id="ContactCancel" class="reset-btn hide" >Cancel Changes</button>
		</div>

    </div> <!-- StepOneFields -->

</div>

<!-- ============= Step Two Area ============= -->
<div id="StepTwoArea">

    <div id="StepTwoHeader">
        <strong>Counties and Search Types</strong>
    </div>
	
	<div id="StepTwoSelection" style="clear:both;padding:10px;">
		<input id="select-by-cityandstate" type="radio" checked="checked" name="Search-Type" onclick="javascript:ShowSearchInputs(1);">Search for counties using City and State<br />
		<input id="select-by-state" type="radio" name="Search-Type" onclick="javascript:ShowSearchInputs(2);">Search for counties by State<br />
		<input id="select-by-zip" type="radio" name="Search-Type" onclick="javascript:ShowSearchInputs(3);">Search for counties using Zip Code<br />
    </div>
	
    <div id="StepTwoFields">
		<br />
		<div id="searchbycitystate" class="row fieldsDivPadding">
			<div class="input col col-3">
				<label>
					<input type="text" id="city2" name="city2" maxlength="35" placeholder="City, State" class="form-control">
					<span class="tooltip">City*, State</span> 
				</label>
			</div>
			<div class="input col col-3">
				<label>
					<select id="state2" name="state2" class="form-control">
						<option id="emptystates2" />
					</select>
					<span class="tooltip">State*</span>
				</label>
			</div>
			<div class="input col col-1">
				<button type="button" id="LookupCityState" class="reset-btn" >Add for Search</button>
			</div>
		</div>
		<div id="searchbystate" class="row fieldsDivPadding nodisplay">
			<div id="displaycounties" class="input col col-3">
				<label>
					<input type="text" id="county3" name="county3" disabled="disabled" value="" placeholder="County, State" class="form-control">
					<span class="tooltip">County, State</span> 
				</label>
			</div>
			<div class="input col col-3">
				<label>
					<select id="state3" name="state3" class="form-control">
						<option id="emptystates3" />
					</select>
					<span class="tooltip">State*</span>
				</label>
			</div>
			<div class="input col col-1">
				<button type="button" id="LookupCountyState" class="reset-btn" >Add for Search</button>
			</div>
		</div>
		<div id="searchbyzip" class="row fieldsDivPadding nodisplay">
			<div class="input col col-3">
				<label>
					<input type="text" id="zip2" name="zip2" placeholder="Zip" class="form-control">
					<span class="tooltip">Zip*</span> 
				</label>
			</div>
			<div class="input col col-3">
				<button type="button" id="LookupZip" class="reset-btn" >Add for Search</button>
			</div>
		</div>
		<div id="missingMessage" class="row fieldsDivPadding nodisplay">
			<span><font color="#ff0000">• Missing required information</font></span> 
		</div>
		<br />
		<br />
		
		<table cellspacing="0" class="maintblborders" id="searchselection">
			<tr>
				<td align="center"><strong>Civil Upper</strong></td>
				<td align="center"><strong>Civil Lower</strong></td>
				<td align="center"><strong>Criminal</strong></td>
				<td align="center"><strong>County</strong></td>
				<td align="center"><strong>State</strong></td>
			</tr>
		</table>
		
		<div id="loading"> 
		   <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt="In Progress Indicator"/> Loading...
		</div>
		<br />
		<br />
		<div id="StepTwoLinks" class="row stepXBottoms">
			<button type="button" id="GoPreviousStepOne" class="reset-btn" >&#60;&nbsp;Previous</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" id="EnterContact" class="continue-btn" >Continue</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" id="ClearCounties" class="reset-btn" >Clear</button>
			<button type="button" id="SelectCoCancel" class="reset-btn hide" >Cancel Changes</button>
		</div>
	
	</div>
</div>

<!-- ============= Step Three Area ============= -->
<div id="StepThreeArea">
    
	<div id="StepThreeHeader">
		Contact Information
	</div>

    <div id="StepThreeFields">
		<div class="row step3notice">
			<span class="smallgray">Enter your contact information below. When the status of your order changes, notifications will be sent
               to the email address you enter below. Your phone number is required and can be useful if we need to
               contact you regarding the order, such as if additional information is required.</span>
			<br />
		</div>
	
		<div class="row fieldsDivPadding">
			<div class="input col col-6">
				<label>
					<input type="text" id="email1" name="email1" maxlength="35" tabindex="12" placeholder="*E-mail Address" class="form-control">
					<span class="tooltip">*E-mail Address</span> 
				</label>
			</div>
		</div>
		<div id="missingMessageEmail1" class="row fieldsDivPadding nodisplay">
			<span><font color="#ff0000">• Missing required information</font></span> 
		</div>
		<div class="row fieldsDivPadding">
			<div class="input col col-6">
				<label>
					<input type="text" id="email2" name="email2" maxlength="35" tabindex="12" placeholder="*Verify E-mail Address" class="form-control">
					<span class="tooltip">*Verify E-mail Address</span> 
				</label>
			</div>
		</div>
		<div id="missingMessageEmail2" class="row fieldsDivPadding nodisplay">
			<span><font color="#ff0000">• Missing required information</font></span> 
		</div>
		<div class="row fieldsDivPadding">
			<div class="input col col-6">
				<label>
					<input type="text" id="phone" name="phone" maxlength="35" tabindex="12" placeholder="*Phone Number" class="form-control">
					<span class="tooltip">*Phone Number</span> 
				</label>
			</div>
		</div>
		<div id="missingMessagePhone" class="row fieldsDivPadding nodisplay">
			<span><font color="#ff0000">• Missing required information</font></span> 
		</div>
		<br />
		<br />
		<div id="ordersubmitted" class="row stepXBottoms">
			<button type="button" id="GoPreviousStepTwo" class="reset-btn" >&#60;&nbsp;Previous</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" id="ReviewOrder" class="continue-btn" >Continue</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" id="ClearContact" class="reset-btn" >Clear</button>
			<button type="button" id="ContactCancel" class="reset-btn hide" >Cancel Changes</button>
		</div>
    </div>

</div>

<!-- ============= Step Four Area ============= -->
<div id="StepFourArea">
	<br />
	<div id="StepFourHeader">
		Confirm Order Details and Submit Order
	</div>
	<br />
	<div id="StepOneSummaryHeader">
		<strong>Subject Information</strong>&nbsp;(<a href="#" id="SubjectInfoEdit">Edit</a>)
	</div>
	<hr width="98%">
	<div id="StepOneSummary">
		<table cellspacing="2" class="maintblnoborders" id="cpmain">
			<tr>
              <td class="labelCell">SSN: </td>
              <td class="noborders" id="ssntd"></td>
			</tr>
			<tr>
              <td class="labelCell">Name: </td>
              <td class="noborders" id="nametd"></td>
			</tr>
			<tr>
              <td class="labelCell">Address: </td>
              <td class="noborders" id="addr1td"></td>
			</tr>
			<tr>
              <td class="labelCell">&nbsp;</td>
              <td class="noborders" id="addr2td"></td>
			</tr>
			<tr>
              <td class="labelCell">DOB: </td>
              <td class="noborders" id="dobtd"></td>
			</tr>
			<tr>
              <td class="labelCell">Date Range: </td>
              <td class="noborders" id="daterangetd"></td>
			</tr>
			<tr>
              <td class="labelCell">Reference ID: </td>
              <td class="noborders" id="refidtd"></td>
			</tr>
		</table>
    </div> <!-- StepOneSummary -->
	<br />
	<div id="StepTwoCountySummaryHeader">
		<strong>Counties and Search Types</strong>&nbsp;(<a href="#" id="CountyInfoEdit">Edit</a>)
	</div>
	<hr width="98%">
	<div align="left" id="StepTwoCountySummary">
		<table class="feetblborders" id="countyfees">
			<tr>
				<td style="width:20%" align="center">
					<strong>County</strong>
				</td>
				<td style="width:10%" align="center">
					<strong>State</strong>
				</td>
				<td style="width:45%" align="center">
					<strong>Search Type</strong>
				</td>
				<td style="width:15%" align="center">
					<strong>Estimated Completion</strong>
				</td>
				<td style="width:10%" align="center">
					<strong>Fee</strong>
				</td>
			</tr>
		</table>
    </div>
	<br />
	<div id="StepThreeContactSummaryHeader">
		<strong>Contact Information</strong>&nbsp;(<a href="#" id="ContactInfoEdit">Edit</a>)
	</div>
	<hr width="98%">
	<div id="StepThreeContactSummary">
		<table cellspacing="0" class="maintblnoborders" id="cpmain">
			<tr>
              <td class="labelCell">Email Address: </td>
              <td class="noborders" id="emailtd"></td>
			</tr>
			<tr>
              <td class="labelCell">Phone: </td>
              <td class="noborders" id="phonetd"></td>
			</tr>
		</table>
    </div>
	<br />
	<br />
	<div id="ordersubmitted" class="row stepXBottoms">
		<button type="button" id="SubmitOrder" class="continue-btn" >Submit Order</button>&nbsp;
	</div>

</div>

<div id="StepFiveArea">
	
	<div id="StepFiveHeader">
		Order Successfully Created
	</div>
	<br /> 
	<div>
		<div id="loading1"> 
		   <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt="In Progress Indicator"/> <strong>Please waiting ...</strong>
		</div>
		Order&nbsp;<span id="order_num_list"></span>&nbsp;have/has been created successfully.
	</div>
    <br /> 
	<div class="step5notice">
		Please visit the <a href="javascript:send_portal_event('SEARCH2/SHOW_OCCCR_RESULTS');" id="OfflineResult">Offline Results</a> page to view a list of all submitted and processed requests
	</div>
	<br />
	<br />
	<div id="orderdone" class="row stepXBottoms">
		<button type="button" id="OrderDoneBtn" class="continue-btn" >Done</button>&nbsp;
	</div>
	
</div>
