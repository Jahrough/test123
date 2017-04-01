<div class="second">
    <div class="third">
        <div>
            <input type="text" class="w140px" name="lastName" placeholder="Last Name">
            <input type="text" class="w140px" name="firstName" placeholder="First Name">
            <input type="text" class="w140px" name="middleName" placeholder="Middle Name">
        </div>
        <div>
            <div class="checkboxAndText">
                <div id="chk_nameVariations" class="customCheckbox">
                    <input type="hidden" name="chk_nameVariations" value="0">
                </div>
                <span>Include name variations</span>
            </div>
            <div class="checkboxAndText">
                <div id="chk_similarNames" class="customCheckbox">
                    <input type="hidden" name="chk_similarNames" value="0">
                </div>
                <span>Include similar-sounding names</span>
            </div>
            <div class="checkboxAndText">
                <div id="chk_strict" class="customCheckbox">
                    <input type="hidden" name="chk_strict" value="0">
                </div>
                <span>Strict Search</span>
            </div>
        </div>
        <div>
            <input type="text" class="w140px" name="dob" placeholder="DOB (mm/dd/yyyy)">
            <input type="text" class="w140px" name="ssn" placeholder="SSN">
            <input type="text" class="w140px" name="lexID" placeholder="LexID">
        </div>
        <div>
            <input type="text" class="w222px" name="address" placeholder="Street Address">
            <input type="text" class="w160px" name="city" placeholder="City">
            <input type="text" class="w140px" name="state" placeholder="State">
        </div>
        <div>
            <input type="text" class="w80px" name="zip" placeholder="ZIP Code">
            <input type="text" class="w192px" name="county" placeholder="County">
            <input type="text" class="w100px" name="radius" placeholder="Radius (miles)">
            <input type="text" class="w140px" name="phone" placeholder="Phone (10-digit)">
        </div>
        <div class="expandForm" onClick="toggleAdditionalFields('APS_additional');">
            <div class="hide"></div>
            <span class="textForExpand">Hide Additional Fields</span>
        </div>
        <div class="APS_additional">
            <input type="text" class="w140px" name="driversLicense" placeholder="Driver License #">
            <input type="text" class="w140px" name="driversLicenseState" placeholder="Driver License State">
            <input type="text" class="w80px" name="ageRange" placeholder="Age Range">
            <input type="text" class="w80px" name="ageRange" placeholder="Age Range">
        </div>
        <div class="APS_additional">
            <input type="text" class="w140px" name="otherLastName" placeholder="Other Last Name">
            <input type="text" class="w140px" name="otherFirstName" placeholder="Other First Name">
            <input type="text" class="w140px" name="relativeFirstName" placeholder="Relative First Name">
        </div>
        <div class="APS_additional">
            <input type="text" class="w140px" name="otherCity" placeholder="Other City">
            <input type="text" class="w140px" name="otherState" placeholder="Other State">
            <input type="text" class="w140px" name="otherState2" placeholder="Other State">
        </div>
    </div>
    <div class="fourth">
        <div class="fifth">
            <div>
                <div class="clearFormBtn">Clear Form</div>
                <div class="searchBtn">Search</div>
            </div>
            <input type="text" class="w190px" name="reference" placeholder="Reference">
            <span>
                Important: The Public Records and<br/>
                commercially available data sources used in this system have errors.  Data is sometimes entered poorly, processed incorrectly, and is generally not free from defect. <a>Read More</a>
            </span>
        </div>

    </div>
</div>
</div>