<div class="option-row">
    <legend>
        <TMPL_UNLESS HIDE_PRICES>
            &nbsp;Base Report Price:&nbsp;&nbsp;$<TMPL_VAR NAME="base-report-price">
        <TMPL_ELSE>
            &nbsp;Base Report Features
        </TMPL_UNLESS>
    </legend>
</div>
<div class="row-wrapper grey-border">

<!-- Begin short_report_body.tpl-->
<table class="options-table">
    <thead style="display: none">
      <tr>
        <th aria-label="Options">&nbsp;</th>
      </tr>
    </thead>
    <TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
        <tr>
            <td align="center" colspan="3" class="left-p"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
        </tr>
    </TMPL_IF>


    <tr class="option-row">
        <td style="width:50%;padding-right: 25px;">
            <table class="options-column-table" border="0" cellpadding="0" cellspacing="0" width="100%">
                <thead style="display: none">
                  <tr>
                    <th aria-label="Check box">&nbsp;</th>
                    <th aria-label="Label">&nbsp;</th>
                    <TMPL_UNLESS NAME="HIDE_PRICES"><th aria-label="Included">&nbsp;</th></TMPL_UNLESS>
                  </tr>
                </thead>
            
                <tr>
                    <td class="checkbox-td"><input type="checkbox" id="imposters" name="imposters" value="2" <TMPL_VAR NAME="imposters">></td>
                    <td class="checkbox-label-td"><label for="imposters">&nbsp;Others Using Same SSN&nbsp;&nbsp;</label></td>
                    <TMPL_UNLESS NAME="HIDE_PRICES"><td class="checkbox-label-td lbl-price">Included</td></TMPL_UNLESS>
                </tr>
                <tr>
                    <td class="checkbox-td"><input type="checkbox" id="verify-ssns" name="verify-ssns" value="5" <TMPL_VAR NAME="verify-ssns">></td>
                    <td class="checkbox-label-td"><label for="verify-ssns">&nbsp;Date and Location where SSN Issued&nbsp;&nbsp;</label></td>
                    <TMPL_UNLESS NAME="HIDE_PRICES"><td class="checkbox-label-td lbl-price">Included</td></TMPL_UNLESS>
                </tr>
                <tr>
                    <td class="checkbox-td"><input type="checkbox" id="report-map" name="report-map" value="10" <TMPL_VAR NAME="report-map">></td>
                    <td class="checkbox-label-td"><label for="report-map">&nbsp;Comprehensive Report Summary&nbsp;&nbsp;</label></td>
                    <TMPL_UNLESS NAME="HIDE_PRICES"><td class="checkbox-label-td lbl-price">Included</td></TMPL_UNLESS>
                </tr>
            </table>
        </td>
        <td style="width:50%;">
            <table class="options-column-table" border="0" cellpadding="0" cellspacing="0" width="100%">
                <thead style="display: none">
                  <tr>
                    <th aria-label="Check box">&nbsp;</th>
                    <th aria-label="Label">&nbsp;</th>
                    <TMPL_UNLESS NAME="HIDE_PRICES"><th aria-label="Included">&nbsp;</th></TMPL_UNLESS>
                  </tr>
                </thead>
                <tr>
                    <td class="checkbox-td"><input type="checkbox" id="address-map" name="address-map" value="10" <TMPL_VAR NAME="address-map">></td>
                    <td class="checkbox-label-td"><label for="address-map">&nbsp;Address Summary&nbsp;&nbsp;</label></td>
                    <TMPL_UNLESS NAME="HIDE_PRICES"><td class="checkbox-label-td lbl-price">Included</td></TMPL_UNLESS>
                </tr>
                <TMPL_IF SHOW_EDUCATION_DETAILS>
                    <tr>
                        <td class="checkbox-td"><input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>></td>
                        <td class="checkbox-label-td"><label for="education-map">&nbsp;Possible Education&nbsp;&nbsp;</label></td>
                        <TMPL_UNLESS NAME="HIDE_PRICES"><td class="checkbox-label-td lbl-price">Included</td></TMPL_UNLESS>
                    </tr>
                </TMPL_IF>
                <tr>
                    <td class="checkbox-td"><input type="checkbox" id="processed-header" name="processed-header" value="5" <TMPL_VAR NAME="processed-header">></td>
                    <td class="checkbox-label-td"><label for="processed-header">&nbsp;Include Company Header&nbsp;&nbsp;</label></td>
                    <TMPL_UNLESS NAME="HIDE_PRICES"><td class="checkbox-label-td lbl-price">Included</td></TMPL_UNLESS>
                </tr>
            </table>
        </td>
   </tr>
</table>
</div>
</fieldset>

<fieldset style="width:100%;">
<div>
    <legend>&nbsp;Additional Report Options</legend>
</div>
<div class="row-wrapper grey-border margin-for-footer">
<table class="options-table">
      <thead style="display: none">
        <tr>
          <th aria-label="Options">&nbsp;</th>
        </tr>
      </thead>
      <tr>
        <td style="width:50%;padding-right: 25px;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <thead style="display: none">
            <tr>
              <th aria-label="Check box">&nbsp;</th>
              <th aria-label="Label">&nbsp;</th>
              <TMPL_UNLESS NAME="HIDE_PRICES"><th aria-label="Included">&nbsp;</th></TMPL_UNLESS>
            </tr>
          </thead>
          <tr>
            <td class="checkbox-td"><input type="checkbox" id="associates" name="associates" value="4" <TMPL_VAR NAME="associates"> onClick="change_total(this, <TMPL_VAR NAME='associates-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="associates">&nbsp;Associates&nbsp;&nbsp;</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="associates-price"></TMPL_UNLESS>&nbsp;</td>
          </tr>
          <tr>

        <TMPL_IF DISABLE_ASSESSMENT>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled"><TMPL_UNLESS DELETE_ASSESSMENT>&nbsp;Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS DELETE_ASSESSMENT><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="property-price"></TMPL_UNLESS>&nbsp;</TMPL_UNLESS></td>
        <TMPL_ELSE>
        <TMPL_IF DISABLE_DEEDS>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled"><TMPL_UNLESS DELETE_DEEDS>&nbsp;Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS DELETE_DEEDS><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="property-price"></TMPL_UNLESS>&nbsp;</TMPL_UNLESS></td>
        <TMPL_ELSE>
            <td class="checkbox-td"><input type="checkbox" id="property" name="property" value="11" <TMPL_VAR NAME=property> onClick="change_total(this, <TMPL_VAR NAME='property-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="property">&nbsp;Properties&nbsp;&nbsp;</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="property-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_IF>
        </TMPL_IF>
          </tr>

         <TMPL_UNLESS DELETE_BANKRUPTCY>
          <tr>
         <TMPL_UNLESS DISABLE_BANKRUPTCY>
            <td class="checkbox-td"><input type="checkbox" id="bankruptcy" name="bankruptcy" value="1" <TMPL_VAR NAME="bankruptcy"> onClick="change_total(this, <TMPL_VAR NAME='bankruptcy-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="bankruptcy">&nbsp;Bankruptcy<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Bankruptcy (disabled)</td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="bankruptcy-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

		 <TMPL_UNLESS DISABLE_DEA_RPT_OPT>
		 <TMPL_UNLESS DISABLE_DEA_RPT_OPT_CUSTOM_COMP>
			 <TMPL_UNLESS DELETE_DEA>
			  <tr>
				<TMPL_UNLESS DISABLE_DEA>
				<td class="checkbox-td"><input type="checkbox" id="dea-substances" name="dea-substances" value="1" <TMPL_VAR NAME="dea-substances"> onClick="change_total(this, <TMPL_VAR NAME='dea-substances-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
						<td class="checkbox-label-td"><label for="dea-substances">&nbsp;DEA Controlled Substances</label></td>
						<td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="dea-substances-price"></TMPL_UNLESS>&nbsp;</td>
				<TMPL_ELSE>
				<td class="checkbox-td">&nbsp;</td>
						<td class="checkbox-label-td-disabled">&nbsp;DEA Controlled Substances (disabled)</td>
						<td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="dea-substances-price"></TMPL_UNLESS>&nbsp;</td>
				</TMPL_UNLESS>
			  </tr>
			  </TMPL_UNLESS>
		  </TMPL_UNLESS>
		  </TMPL_UNLESS>

		 <TMPL_UNLESS DISABLE_FED_FIRE_EXP_RPT_OPT>
			 <TMPL_UNLESS DELETE_FIREARMS>
			  <tr>
				<TMPL_UNLESS DISABLE_FIREARMS>
				<td class="checkbox-td"><input type="checkbox" id="firearms" name="firearms" value="1" <TMPL_VAR NAME="firearms"> onClick="change_total(this, <TMPL_VAR NAME='firearms-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
						<td class="checkbox-label-td"><label for="firearms">&nbsp;Federal Firearms and Explosives</label></td>
						<td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="firearms-price"></TMPL_UNLESS>&nbsp;</td>
				<TMPL_ELSE>
				<td class="checkbox-td">&nbsp;</td>
						<td class="checkbox-label-td-disabled">&nbsp;Federal Firearms and Explosives (disabled)</td>
						<td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="firearms-price"></TMPL_UNLESS>&nbsp;</td>
				</TMPL_UNLESS>
			  </tr>
			  </TMPL_UNLESS>
		  </TMPL_UNLESS>


         <TMPL_IF DO_SHOW_PHONES_PLUS>
         <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
          <tr>
        <TMPL_UNLESS DISABLE_DA_WIRELESS>
            <td class="checkbox-td"><input type="checkbox" id="phones-plus" name="phones-plus" value="1" <TMPL_VAR NAME="phones-plus"> onClick="change_total(this, <TMPL_VAR NAME='phones-plus-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="phones-plus">&nbsp;Phones Plus</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="phones-plus-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td align="left" class="checkbox-label-td-disabled">&nbsp;Phones Plus (disabled)</td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="phones-plus-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
          </TMPL_IF>

         <TMPL_UNLESS LE>
         <TMPL_UNLESS GOV>
         <TMPL_UNLESS DELETE_EMAIL>
          <tr>
            <TMPL_UNLESS DISABLE_EMAIL>
            <td class="checkbox-td"><input type="checkbox" id="email-address" name="email-address" value="1" <TMPL_VAR NAME="email-address"> onClick="change_total(this, <TMPL_VAR NAME='email-address-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                    <td class="checkbox-label-td"><label for="email-address">&nbsp;Email Addresses</label></td>
                    <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
            <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
                    <td class="checkbox-label-td-disabled">&nbsp;Email Addresses (disabled)</td>
                    <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
            </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          </TMPL_UNLESS>

        <TMPL_IF ENH_FLAT_RATE_COMP>
          <TMPL_UNLESS DELETE_CUSTOM_EMAIL>
          <TMPL_UNLESS DELETE_EMAIL>
          <tr>
        <TMPL_IF DISABLE_EMAIL>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Email Addresses (disabled)</td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td"><input type="checkbox" id="email-address" name="email-address" value="1" <TMPL_VAR NAME="email-address"> onClick="change_total(this, <TMPL_VAR NAME='email-address-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="email-address">&nbsp;Email Addresses</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="email-address-price"></TMPL_UNLESS>&nbsp;</td>
          </TMPL_IF>
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
         </TMPL_IF>

             <TMPL_UNLESS DELETE_PAW>
              <tr>
                <TMPL_UNLESS DISABLE_PAW>
                <td class="checkbox-td"><input type="checkbox" id="people-at-work" name="people-at-work" value="1" <TMPL_VAR NAME="people-at-work"> onClick="change_total(this, <TMPL_VAR NAME='people-at-work-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                        <td class="checkbox-label-td"><label for="people-at-work">&nbsp;People at Work</label></td>
                        <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="people-at-work-price"></TMPL_UNLESS>&nbsp;</td>
                <TMPL_ELSE>
                <td class="checkbox-td">&nbsp;</td>
                        <td class="checkbox-label-td-disabled">&nbsp;People at Work (disabled)</td>
                        <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="people-at-work-price"></TMPL_UNLESS>&nbsp;</td>
                </TMPL_UNLESS>
              </tr>
              </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_UCC>
          <tr>
        <TMPL_UNLESS DISABLE_UCC>
            <td class="checkbox-td"><input type="checkbox" id="uccs" name="uccs" value="1" <TMPL_VAR NAME="uccs"> onClick="change_total(this, <TMPL_VAR NAME='uccs-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="uccs">&nbsp;UCC Filings</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;UCC Filings (disabled)</td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="uccs-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_CRIM>
          <tr>
        <TMPL_UNLESS DISABLE_CRIM>
            <td class="checkbox-td"><input type="checkbox" id="criminal-records" name="criminal-records" value="1" <TMPL_VAR NAME="criminal-records"> onClick="change_total(this, <TMPL_VAR NAME='criminal-records-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="criminal-records">&nbsp;Possible Criminal Records<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="criminal-records-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Possible Criminal Records (disabled)<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="criminal-records-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_SEXPREDATOR>
          <tr>
        <TMPL_UNLESS DISABLE_SEXPREDATOR>
            <td class="checkbox-td"><input type="checkbox" id="sexpredator" name="sexpredator" value="1" <TMPL_VAR NAME="sexpredator"> onClick="change_total(this, <TMPL_VAR NAME="sexpredator-price">, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="sexpredator">&nbsp;Sexual Offenses<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=sexpredator-price></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Sexual Offenses (disabled)<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=sexpredator-price></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

             <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
             <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
         <TMPL_UNLESS DELETE_JAILBOOKING>
          <tr>
        <TMPL_UNLESS DISABLE_JAILBOOKING>
            <td class="checkbox-td"><input type="checkbox" id="jailbooking" name="jailbooking" value="1" <TMPL_VAR NAME="jailbooking"> onClick="change_total(this, <TMPL_VAR NAME="jailbooking-price">, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"> </td>
            <td class="checkbox-label-td"><label for="jailbooking">&nbsp;Jail Bookings<!-- <TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS>--></label></td>
            <!-- <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=jailbooking-price></TMPL_UNLESS>&nbsp;</td> -->
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Jail Bookings (disabled)<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=jailbooking-price></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
              </TMPL_IF>
          </TMPL_UNLESS>




        </table>
        </td>
        <td style="width:50%;">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <thead style="display: none">
            <tr>
              <th aria-label="Check box">&nbsp;</th>
              <th aria-label="Label">&nbsp;</th>
              <th aria-label="Included">&nbsp;</th>
            </tr>
          </thead>
         <TMPL_UNLESS DELETE_ACCIDENT>
            <TMPL_UNLESS DISABLE_ACCIDENT>
              <TMPL_IF NAME="NAT_ACC_ENABLE">
              <TMPL_UNLESS NAME="INS">
                <tr>
                  <td class="checkbox-td"><input type="checkbox" id="accident" name="accident" value="1" <TMPL_VAR NAME="accident"> onClick="change_total(this, <TMPL_VAR NAME='accident-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);"></td>
                  <td class="checkbox-label-td"><label for="accident">&nbsp;National Motor Vehicle Accidents&nbsp;</label></td>
                  <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
                </tr>
              </TMPL_UNLESS>
              <TMPL_ELSE>
                <tr>
                  <td class="checkbox-td"><input type="checkbox" id="accident" name="accident" value="1" <TMPL_VAR NAME="accident"> onClick="change_total(this, <TMPL_VAR NAME='accident-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);"></td>
                  <td class="checkbox-label-td"><label for="accident">&nbsp;Florida Accidents&nbsp;</label></td>
                  <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
                </tr>
              </TMPL_IF>
            <TMPL_ELSE>
              <TMPL_IF NAME="NAT_ACC_ENABLE">
              <TMPL_UNLESS NAME="INS">
              <tr>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">National Motor Vehicle Accidents (disabled)&nbsp;</td>
                <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
              </tr>
              </TMPL_UNLESS>
              <TMPL_ELSE>
              <tr>
                <td class="checkbox-td">&nbsp;</td>
                <td class="checkbox-label-td-disabled">
                    &nbsp;Florida Accidents (disabled)&nbsp;
                </td>
                <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="accident-price"></TMPL_UNLESS>&nbsp;</td>
              </tr>
              </TMPL_IF>
            </TMPL_UNLESS>
         </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_DL>
          <tr>
        <TMPL_UNLESS DISABLE_DL>
            <td class="checkbox-td"><input type="checkbox" id="driver-license" name="driver-license" value="1" <TMPL_VAR NAME=driver-license> onClick="change_total(this, <TMPL_VAR NAME='driver-license-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="driver-license">&nbsp;Include Driver Licenses Information</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="driver-license-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Include Driver Licenses Information (disabled)</td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="driver-license-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_IF DO_NOT_DISPLAY_COMBINED_MVR>
            <TMPL_UNLESS DO_NOT_DISPLAY_MV>
            <TMPL_UNLESS DELETE_MV>
             <tr>
             <TMPL_UNLESS DISABLE_MV>
                 <td class="checkbox-td"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                 <td class="checkbox-label-td"><label for="motor-vehicles">&nbsp;Include Motor Vehicle(s) Registration</label></td>
                 <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
             <TMPL_ELSE>
                 <td class="checkbox-td">&nbsp;</td>
                 <td class="checkbox-label-td-disabled">&nbsp;Include Motor Vehicle(s) Registration (disabled)</td>
                 <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
             </TMPL_UNLESS>
            </tr>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
        <TMPL_ELSE>
            <tr>
            <TMPL_UNLESS DISABLE_COMBINED_MVR>
              <td class="checkbox-td"><input type="checkbox" id="motor-vehicles" name="motor-vehicles" value="1" <TMPL_VAR NAME="motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='motor-vehicles-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
              <td class="checkbox-label-td"><label for="motor-vehicles">&nbsp;Include Motor Vehicle(s) Registration</label></td>
              <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
            <TMPL_ELSE>
              <td class="checkbox-td">&nbsp;</td>
              <td class="checkbox-label-td-disabled">&nbsp;Include Motor Vehicle(s) Registration (disabled)</td>
              <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
            </TMPL_UNLESS>
            </tr>
        </TMPL_IF>

	      <TMPL_IF INS>
	      <TMPL_UNLESS HIDE_RT_MVR>
	        <TMPL_UNLESS DELETE_RT_MVR>
	        <tr>
		  <TMPL_UNLESS DISABLE_RT_MVR>
		  <td class="checkbox-td"><input type="checkbox" id="rt-motor-vehicles" name="rt-motor-vehicles" value="1" <TMPL_VAR NAME="rt-motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='rt-motor-vehicles-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="checkbox-label-td"><label for="rt-motor-vehicles">&nbsp;Include Real-Time Vehicle(s) Registration</label>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></td>
			<td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="rt-motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		  <TMPL_ELSE>
		  <td class="checkbox-td">&nbsp;</td>
			<td class="checkbox-label-td-disabled">&nbsp;Include Real-Time Vehicle(s) Registration (disabled)</td>
			<td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="rt-motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		  </TMPL_UNLESS>
	        </tr>
	        </TMPL_UNLESS>

	        <tr>
	           <td>&nbsp;</td>
	           <td align="left" class="smallblack">&nbsp;Applicable standalone search price and coverage &nbsp;restrictions will apply. <strong><font color="#ed1c24">&nbsp;NEW!</font></strong></td>
	           <td></td>
	        </tr>
	      </TMPL_UNLESS>
	      </TMPL_IF>

        <TMPL_IF SHOW_ADDED_REPORT_FDN>
          <tr>
            <td class="checkbox-td"><input type="checkbox" name="fdn-network" id="fdn-network" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-network"> onclick="toggleFDNoptions(this);change_total(this,<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);"<TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME='fdn-network'> onclick="toggleFDNoptions(this);change_total(this,<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);"</TMPL_IF></TMPL_IF> ></td>
            <td class="checkbox-label-td"><label for="fdn-network">&nbsp;Include LexisNexis&reg; Fraud Defense Network&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><font color="#ed1c24">&nbsp;NEW!</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="fdn-network-price"></TMPL_UNLESS>&nbsp;</td>
          </tr>
          <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_SUBJECT>
          <TMPL_UNLESS DISABLE_FDN_REPORT_SUBJECT>
          <tr>
            <td class="checkbox-td"><input type="checkbox" name="fdn-subjectonly" id="fdn-subjectonly" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-subjectonly"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-subjectonly"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" </TMPL_IF></TMPL_IF> ></td>
            <td class="checkbox-label-td"><label for="fdn-subjectonly">&nbsp;&nbsp;&nbsp;&nbsp;Fraud Defense Network - Subject Only&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><font color="#ed1c24">&nbsp;</label></td>
            <td />
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          <TMPL_UNLESS DO_NOT_DISPLAY_FDN_REPORT_ALL>
          <TMPL_UNLESS DISABLE_FDN_REPORT_ALL>
          <tr>
            <td class="checkbox-td"><input type="checkbox" name="fdn-associations" id="fdn-associations" value="1" <TMPL_IF NAME="MYACCOUNT_PREFERENCES"><TMPL_VAR NAME="fdn-associations"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" <TMPL_ELSE><TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_VAR NAME="fdn-associations"> onclick="if(checkFDNtopoption(this)){change_total(document.getElementById('fdn-network'),<TMPL_VAR NAME='fdn-network-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL);}" </TMPL_IF></TMPL_IF> ></td>
            <td class="checkbox-label-td"><label for="fdn-associations">&nbsp;&nbsp;&nbsp;&nbsp;Fraud Defense Network - All Associations&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><font color="#ed1c24">&nbsp;</label></td>
            <td />
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>
          <TMPL_UNLESS NAME="MYACCOUNT_PREFERENCES">
            <TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">
              <tr>
                <td colspan="3">
                  <table  border="0" cellpadding="0" cellspacing="4" width="100%">
                      <tr>
                        <td class="checkbox-label-td-disabled">&nbsp;&nbsp;&nbsp;&nbsp;Fraud Defense Network options currently disabled</td>
                      </tr>
                  </table>
                <td>
              <tr>
            </TMPL_IF>
          </TMPL_UNLESS>
        </TMPL_IF>

         <TMPL_UNLESS DELETE_LIEN>
          <tr>
        <TMPL_UNLESS DISABLE_LIEN>
            <td class="checkbox-td"><input type="checkbox" id="liens" name="liens" value="1" <TMPL_VAR NAME="liens"> onClick="change_total(this, <TMPL_VAR NAME='liens-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="liens">&nbsp;Liens and Judgments<TMPL_UNLESS HIDE_PRICES> <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="liens-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Liens and Judgments (disabled)</td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="liens-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_CENSUS>
          <tr>
        <TMPL_UNLESS DISABLE_CENSUS>
            <td class="checkbox-td"><input type="checkbox" id="census-data" name="census-data" value="1" <TMPL_VAR NAME="census-data"> onClick="change_total(this, <TMPL_VAR NAME="census-data-price">, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="census-data">&nbsp;Neighborhood Profile (2010 Census)&nbsp;&nbsp;</label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="census-data-price"></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Neighborhood Profile (disabled)&nbsp;&nbsp;</td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="census-data-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
          

         <TMPL_UNLESS DELETE_PROF_LICENSE>
          <tr>
        <TMPL_UNLESS DISABLE_PROF_LICENSE>
            <td class="checkbox-td"><input type="checkbox" id="professional-licenses" name="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses"> onClick="change_total(this, <TMPL_VAR NAME='professional-licenses-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="professional-licenses">&nbsp;Professional Licenses<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></label></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=professional-licenses-price></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Professional Licenses (disabled)<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="professional-licenses-price"></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>

         <TMPL_UNLESS DELETE_VARIETY_BUNDLE>
          <tr>
        <TMPL_UNLESS DISABLE_VARIETY_BUNDLE>
            <td class="checkbox-td"><input type="checkbox" id="variety-bundle" name="variety-bundle" value="1" <TMPL_VAR NAME="variety-bundle"> onClick="change_total(this, <TMPL_VAR NAME='variety-bundle-price'>, document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
            <td class="checkbox-label-td"><label for="variety-bundle">&nbsp;Supplemental Data Sources</label>&nbsp;<a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','SuplementalData',555,350,0,0,0,0,0,0,'','supplemental_data_sources');">(Click for details)</a><TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=variety-bundle-price></TMPL_UNLESS>&nbsp;</td>
        <TMPL_ELSE>
            <td class="checkbox-td">&nbsp;</td>
            <td class="checkbox-label-td-disabled">&nbsp;Supplemental Data Sources&nbsp;<a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','SuplementalData',309,270,0,0,0,0,0,0,'','supplemental_data_sources');">(Click for details)</a> (disabled)<TMPL_UNLESS HIDE_PRICES>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></TMPL_UNLESS></td>
            <td class="checkbox-label-td-disabled lbl-small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=variety-bundle-price></TMPL_UNLESS>&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
        </table>
        </td>
      </tr>
    <tr>
      <td <TMPL_UNLESS DELETE_RELATIVES>style="width:50%;padding-right: 25px;"<TMPL_ELSE>colspan="2"</TMPL_UNLESS>>
        <div class="row-wrapper">
            <table width="100%">
              <thead style="display: none">
                <tr>
                  <th aria-label="Options">&nbsp;</th>
                </tr>
              </thead>
            
              <tr>
                    <td>
                      <table border="0" cellpadding="0" cellspacing="0" width="100%">
                        <thead style="display: none">
                          <tr>
                            <th aria-label="Check box">&nbsp;</th>
                            <th aria-label="Label">&nbsp;</th>
                            <th aria-label="Included">&nbsp;</th>
                          </tr>
                        </thead>
                      
                      <tr>
                        <td class="checkbox-td"><input type="checkbox" name="neighbors" id="neighbors" value="11" <TMPL_VAR NAME=neighbors>  onClick="change_total(this, <TMPL_VAR NAME=neighbors-price>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                        <td class="checkbox-label-td"><label for="neighbors">&nbsp;Neighbors</label></td>
                        <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="neighbors-price"></TMPL_UNLESS>&nbsp;</td>
                      </tr>
                      <tr>
                        <td colspan="3" class="smallfont1">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label for="neighborhood-count" id="include_neighbors">Include Neighbors for</label>
                        <select name="neighborhood-count" id="neighborhood-count" aria-labelledby="include_neighbors addresses">
                        <option value="1"<TMPL_IF NAME="neighborhood-count-1"> SELECTED</TMPL_IF>>1</option>
                        <option value="2"<TMPL_IF NAME="neighborhood-count-2"> SELECTED</TMPL_IF>>2</option>
                        <option value="3"<TMPL_IF NAME="neighborhood-count-3"> SELECTED</TMPL_IF>>3</option>
                        <option value="4"<TMPL_IF NAME="neighborhood-count-4"> SELECTED</TMPL_IF>>4</option>
                        <option value="5"<TMPL_IF NAME="neighborhood-count-5"> SELECTED</TMPL_IF>>5</option>
                        <option value="6"<TMPL_IF NAME="neighborhood-count-6"> SELECTED</TMPL_IF>>6</option>
                        <option value="7"<TMPL_IF NAME="neighborhood-count-7"> SELECTED</TMPL_IF>>7</option>
                        <option value="8"<TMPL_IF NAME="neighborhood-count-8"> SELECTED</TMPL_IF>>8</option>
                        <option value="9"<TMPL_IF NAME="neighborhood-count-9"> SELECTED</TMPL_IF>>9</option>
                        <option value="10"<TMPL_IF NAME="neighborhood-count-10"> SELECTED</TMPL_IF>>10</option>
                        </select>
                        <span id="addresses">Address(es)</span>
                        </td>
                       </tr>
                       <tr>
                                <td>&nbsp;</td>
                        <td align="left" class="smallblack">
                        <label for="neighbor-count" id="include">Include</label>
                        <select name="neighbor-count" id="neighbor-count" aria-labelledby="include each_address">
                        <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED</TMPL_IF>>2</option>
                        <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED</TMPL_IF>>3</option>
                        <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED</TMPL_IF>>4</option>
                        <option value="5"<TMPL_IF NAME="neighbor-count-5"> SELECTED</TMPL_IF>>5</option>
                        <option value="6"<TMPL_IF NAME="neighbor-count-6"> SELECTED</TMPL_IF>>6</option>
                        </select>
                        <span id="each_address">Neighbors for Each Address</span>
                        </td>
                      </tr>
                    </table>
                    </td>
              </tr>
            </table>
         </div>
      </td>
      <TMPL_UNLESS DELETE_RELATIVES>
      <td style="width:50%;">
        <div class="row-wrapper">
            <table width="100%">
                <thead style="display: none">
                  <tr>
                   <th aria-label="Relative Options">&nbsp;</th>
                  </tr>
                </thead>
            
                <tr>
                <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <thead style="display: none">
                <tr>
                  <th aria-label="Check box">&nbsp;</th>
                  <th aria-label="Label">&nbsp;</th>
                  <th aria-label="Included">&nbsp;</th>
                </tr>
                </thead>
                
                <tr>
                <td class="checkbox-td"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives> onClick="var relativedepth=get_form_element('relative-depth'); change_depth_total(<TMPL_VAR NAME='relatives-price'>,relativedepth.selectedIndex + 1,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
                <td class="checkbox-label-td"><label for="relatives">&nbsp;Relatives</label></td>
                <td class="checkbox-label-td lbl-price"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME="relatives-price"> per degree of separation</TMPL_UNLESS>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                <td align="left" class="smallblack" colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <select id="relative-depth" name="relative-depth" onChange="if(relatives.checked){change_depth_total(<TMPL_VAR NAME='relatives-price'>, this.selectedIndex + 1,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)}">
                <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
                <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
                <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
                </select>
                <label for="relative-depth">Degrees of Separation</label>
                <br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" id="relative-map" name="relative-map" value="10" <TMPL_VAR NAME="relative-map">><label for="relative-map">Relative Summary</label>
                </td>
                </tr>
                </table>
                </td>
                </tr>
            </table>
           </div>
      </td>
      </TMPL_UNLESS>
   </tr>
    <tr>
      <td colspan="2">
        <div class="red-divide"></div>
      </td>
    </tr>
    <tr>
        <TMPL_UNLESS HIDE_PRICES>
            <td style="width:50%;padding-right: 25px;">
              <div class="text-and-select" style="padding-left:0;">
                    <div class="tas-text mgl0">
                        <label for="REPORT_TOTAL">Maximum Report Price:&nbsp;</label>
                    </div>
                    <div class="tas-select red-text" style="margin-top:-2px;margin-left:1px;">
                        $<input class="tot-price" type="text" name="REPORT_TOTAL" id="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();">
                    </div>
                <TMPL_ELSE>
                    <input type="hidden" name="REPORT_TOTAL" id="REPORT_TOTAL" size="5" value="<TMPL_VAR NAME='REPORT_TOTAL'>" onFocus="this.blur();">
               </div>
            </td>
        </TMPL_UNLESS>
        <td <TMPL_UNLESS HIDE_PRICES>style="width:50%;"<TMPL_ELSE>colspan="2"</TMPL_UNLESS>>
            <div class="text-and-select">
                <div class="tas-text">
                    <label for="report-format">Select Report Type:</label>
                </div>
                <div class="tas-select">
                    <select name="report-format" id="report-format">
                        <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
                        <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
                        <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
                        <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
                    </select>
                </div>
            </div>
        </td>
    </tr>
    <tr>
        <TMPL_UNLESS HIDE_PRICES>
            <td style="padding-right: 25px;">
                <strong>NOTE:</strong>&nbsp;&nbsp;
                This is the maximum possible cost for this report.&nbsp;&nbsp;You will not be charged for options returning no results except those marked with <img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="Max. Cost"> where search charge applies with or without results.<TMPL_ELSE>&nbsp;
            </td>
        </TMPL_UNLESS>
        <td <TMPL_IF HIDE_PRICES>colspan="2"</TMPL_IF>>
            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <thead style="display: none">
                  <tr>
                    <th aria-label="Check box">&nbsp;</th>
                    <th aria-label="Label">&nbsp;</th>
                  </tr>
                </thead>
            
                <tr>
                    <td class="checkbox-td"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
                    <td class="checkbox-label-td"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
                </tr>
                <tr>
                    <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                        <TMPL_IF NAME="REPORT_MANAGER_OFF">
                            <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
                            <td align="left" class="disabled_medblack"><label for="save-report">&nbsp;(Saving Reports currently not available).</td>
                        <TMPL_ELSE>
                            <td class="checkbox-td"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
                            <td class="checkbox-label-td"><label for="save-report">&nbsp;Save report for later access.</label></td>
                        </TMPL_IF>
                    <TMPL_ELSE>
                        <td colspan="2"></td>
                    </TMPL_IF>
                </tr>
            </table>
        </td>
    </tr>

    </table>
    <input type="hidden" name="REPORT_PRE_TOTAL" value="<TMPL_VAR NAME='REPORT_PRE_TOTAL'>">
    <input type="hidden" name="RELATIVE_TOTAL" value="<TMPL_VAR NAME='RELATIVE_TOTAL'>">
</td>
</tr>

</table>
</div>
<!-- End short_report_body.tpl-->
