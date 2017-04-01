<div class="col col-10" id="newtrendstopics">
    <script type="text/javascript">
        $(function() {
            $('#adversemediaheader').click(function () {
                if($('#adversemediatopics').hasClass('hidden')) {
                    $('#adversemediatopics').removeClass('hidden');
                    $('#adversemediaheader').removeClass('collapsed');
                } else {
                    $('#adversemediatopics').addClass('hidden');
                    $('#adversemediaheader').addClass('collapsed');
                }
            });
            $('#bankingAndMediaheader').click(function () {
                if($('#bankingAndMediatopics').hasClass('hidden')) {
                    $('#bankingAndMediatopics').removeClass('hidden');
                    $('#bankingAndMediaheader').removeClass('collapsed');
                } else {
                    $('#bankingAndMediatopics').addClass('hidden');
                    $('#bankingAndMediaheader').addClass('collapsed');
                }
            });
            $('#criminalActivityheader').click(function () {
                if($('#criminalActivitytopics').hasClass('hidden')) {
                    $('#criminalActivitytopics').removeClass('hidden');
                    $('#criminalActivityheader').removeClass('collapsed');
                } else {
                    $('#criminalActivitytopics').addClass('hidden');
                    $('#criminalActivityheader').addClass('collapsed');
                }
            });
            $('#healthcareheader').click(function () {
                if($('#healthcaretopics').hasClass('hidden')) {
                    $('#healthcaretopics').removeClass('hidden');
                    $('#healthcareheader').removeClass('collapsed');
                } else {
                    $('#healthcaretopics').addClass('hidden');
                    $('#healthcareheader').addClass('collapsed');
                }
            });
            $('#insuranceheader').click(function () {
                if($('#insurancetopics').hasClass('hidden')) {
                    $('#insurancetopics').removeClass('hidden');
                    $('#insuranceheader').removeClass('collapsed');
                } else {
                    $('#insurancetopics').addClass('hidden');
                    $('#insuranceheader').addClass('collapsed');
                }
            });
            $('#pharmaceuticalheader').click(function () {
                if($('#pharmaceuticaltopics').hasClass('hidden')) {
                    $('#pharmaceuticaltopics').removeClass('hidden');
                    $('#pharmaceuticalheader').removeClass('collapsed');
                } else {
                    $('#pharmaceuticaltopics').addClass('hidden');
                    $('#pharmaceuticalheader').addClass('collapsed');
                }
            });
            $('#realestateheader').click(function () {
                if($('#realestatetopics').hasClass('hidden')) {
                    $('#realestatetopics').removeClass('hidden');
                    $('#realestateheader').removeClass('collapsed');
                } else {
                    $('#realestatetopics').addClass('hidden');
                    $('#realestateheader').addClass('collapsed');
                }
            });
            $('#adversemediatopics').on('click', 'input[type="checkbox"]', function() {
                update_topiccnt_for_newstrends('#adversemediatopics', $(this).attr('name'));
            });
            $('#bankingAndMediatopics').on('click', 'input[type="checkbox"]', function() {
                update_topiccnt_for_newstrends('#bankingAndMediatopics', $(this).attr('name'));
            });
            $('#criminalActivitytopics').on('click', 'input[type="checkbox"]', function() {
                update_topiccnt_for_newstrends('#criminalActivitytopics', $(this).attr('name'));
            });
            $('#healthcaretopics').on('click', 'input[type="checkbox"]', function() {
                update_topiccnt_for_newstrends('#healthcaretopics', $(this).attr('name'));
            });
            $('#insurancetopics').on('click', 'input[type="checkbox"]', function() {
                update_topiccnt_for_newstrends('#insurancetopics', $(this).attr('name'));
            });
            $('#pharmaceuticaltopics').on('click', 'input[type="checkbox"]', function() {
                update_topiccnt_for_newstrends('#pharmaceuticaltopics', $(this).attr('name'));
            });
            $('#realestatetopics').on('click', 'input[type="checkbox"]', function() {
                update_topiccnt_for_newstrends('#realestatetopics', $(this).attr('name'));
            });
        });
    </script>
    <br /><hr />
    <div>
        Topics: <a class="anchor-bg" onclick="hide_or_display_news_trends('show')" href="javascript:void(0);">Show All </a>| <a class="anchor-bg" onclick="hide_or_display_news_trends('hide')" href="javascript:void(0);">Hide All</a> | <a class="anchor-bg" onclick="check_or_uncheck('#newtrendstopics', 'anchor', 'false');clear_newstrends_topiccount('all');" href="javascript:void(0);">Clear All</a>
    </div>
    <div id="adverseMedia" class="col col-10">
        <div id="adversemediasection" class="padding-left-5 box-30">
            <button type="button" id="adversemediaheader" class="btn btn-link collapsed">
                <span class="show-hidden-data-icon"></span>
                Adverse Media (<span id="adversemediatopicscount">0</span> of 10)
            </button>
            <span class="padding-right-5 pull-right hidden" id="adversemediatopicsclear"><a class="anchor-bg" onclick="check_or_uncheck('#adversemediatopics', 'anchor', 'false');clear_newstrends_topiccount('#adversemediatopics');" href="javascript:void(0);">Clear</a></span>
        </div>
        <div id="adversemediatopics" class="padding-left-20 hidden">
            <div class="col col-3">
                <label class="checkbox">
                    <input type="checkbox" name="business" id="business" value="Business"> Business
                </label>
            </div>
            <div class="col col-3">
                <label class="checkbox">
                    <input type="checkbox" name="person" id="person" value="Person"> Person
                </label>
            </div>
            <div class="col col-3">
                <label class="checkbox">
                    <input type="checkbox" name="product" id="product" value="Product"> Product
                </label>
            </div>
        </div>
    </div>
    <br /><br />
    <div id="bankingAndMedia" class="col col-10">
        <div id="bankingAndMediasection" class="padding-left-5 box-30">
            <button type="button" id="bankingAndMediaheader" class="btn btn-link collapsed">
                <span class="show-hidden-data-icon"></span>
                Banking &amp; Finance (<span id="bankingAndMediatopicscount">0</span> of 10)
            </button>
            <span class="padding-right-5 pull-right hidden" id="bankingAndMediatopicsclear"><a class="anchor-bg" onclick="check_or_uncheck('#bankingAndMediatopics', 'anchor', 'false');clear_newstrends_topiccount('#bankingAndMediatopics');" href="javascript:void(0);">Clear</a></span>
        </div>
        <div id="bankingAndMediatopics" class="col col-10 padding-left-20 hidden">
            <div class="col col-2_5">
                <label class="checkbox">
                    <input type="checkbox" value="All Banking and Finance" name="bankingFinance" id="bankingFinance"> All Banking and Finance 
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Bank Branches" name="bankBranches" id="bankBranches"> Bank Branches
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Bank Deposit Insurance" name="bankDepositInsurance" id="bankDepositInsurance"> Bank Deposit Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Bank Holding Companies" name="bankHoldingCompanies" id="bankHoldingCompanies"> Bank Holding Companies
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Bank Failures" name="bankFailures" id="bankFailures"> Bank Failures
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Banking And Finance Associations" name="bankingAndFinanceAssociations" id="bankingAndFinanceAssociations"> Banking And Finance Associations
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Banking And Finance Regulation" name="bankingAndFinanceRegulation" id="bankingAndFinanceRegulation"> Banking And Finance Regulation
                </label>
            </div>
            <div class="col col-2_75">
                <label class="checkbox">
                    <input type="checkbox" value="Banking And Finance Regulatory Compliance" name="bankingAndFinanceRegulatoryCompliance" id="bankingAndFinanceRegulatoryCompliance"> Banking And Finance Regulatory Compliance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Banking And Finance Sector Performance" name="bankingAndFinanceSectorPerformance" id="bankingAndFinanceSectorPerformance"> Banking And Finance Sector Performance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Banking And Finance Technology" name="bankingAndFinanceTechnology" id="bankingAndFinanceTechnology"> Banking And Finance Technology
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Banking And Financial Industry Trends" name="bankingAndFinancialIndustryTrends" id="bankingAndFinancialIndustryTrends"> Banking And Financial Industry Trends
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Banking In China" name="bankingInChina" id="bankingInChina"> Banking In China
                </label>
            </div>
            <div class="col col-1_5">
                <label class="checkbox">
                    <input type="checkbox" value="Behavioral Finance" name="behavioralFinance" id="behavioralFinance"> Behavioral Finance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Budgets" name="budgets" id="budgets"> Budgets
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Central Banks" name="centralBanks" id="centralBanks"> Central Banks
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Commercial Banking" name="commercialBanking" id="commercialBanking"> Commercial Banking
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Community Banks" name="communityBanks" id="communityBanks"> Community Banks
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Development Banks" name="developmentBanks" id="developmentBanks"> Development Banks
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Financial Risk Management" name="financialRiskManagement" id="financialRiskManagement"> Financial Risk Management
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Fix Protocol" name="fixProtocol" id="fixProtocol"> Fix Protocol
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Friendly And Provident Societies" name="friendlyAndProvidentSocieties" id="friendlyAndProvidentSocieties"> Friendly And Provident Societies
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Industrial Loan Companies" name="industrialLoanCompanies" id="industrialLoanCompanies"> Industrial Loan Companies
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Islamic Banking" name="islamicBanking" id="islamicBanking"> Islamic Banking
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Leasing Industry" name="leasingIndustry" id="leasingIndustry"> Leasing Industry
                </label>
            </div>
            <div class="col col-1_25">
                <label class="checkbox">
                    <input type="checkbox" value="Merchant Banking" name="merchantBanking" id="merchantBanking"> Merchant Banking
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Money Center Banks" name="moneyCenterBanks" id="moneyCenterBanks"> Money Center Banks
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="OFX Protocol" name="OFXProtocol" id="OFXProtocol"> OFX Protocol
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Personal Finance" name="personalFinance" id="personalFinance"> Personal Finance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Savings Institutions" name="savingsInstitutions" id="savingsInstitutions"> Savings Institutions
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Wholesale Banking" name="wholesaleBanking" id="wholesaleBanking"> Wholesale Banking
                </label>
            </div>
        </div>
    </div>
    <br /><br />
    <div id="criminalActivity" class="col col-10">
        <div id="criminalActivitysection" class="padding-left-5 box-30">
            <button type="button" id="criminalActivityheader" class="btn btn-link collapsed">
                <span class="show-hidden-data-icon"></span>
                Criminal Activity (<span id="criminalActivitytopicscount">0</span> of 10)
            </button>
            <span class="padding-right-5 pull-right hidden" id="criminalActivitytopicsclear"><a class="anchor-bg" onclick="check_or_uncheck('#criminalActivitytopics', 'anchor', 'false');clear_newstrends_topiccount('#criminalActivitytopics');" href="javascript:void(0);">Clear</a></span>
        </div>
        <div id="criminalActivitytopics" class="hidden">
            <div class="col col-2">
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="All Fraud And Financial Crime" name="allFraudAndFinancialCrime" id="allFraudAndFinancialCrime"> All Fraud And Financial Crime
                </label>
                <a href="#" onclick="javascript:clearAllOtherSubjectsForNewTrends();return false;">Financial Crime</a>
                <label class="checkbox margin-top-0 padding-left-20">
                    <input type="checkbox" value="Bribery" name="bribery" id="bribery" > Bribery
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Counterfeiting" name="counterfeiting" id="counterfeiting"> Counterfeiting
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Counterfeit Drugs" name="counterfeitDrugs" id="counterfeitDrugs"> Counterfeit Drugs
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Controlled Substances Crime" name="controlledSubstancesCrime" id="controlledSubstancesCrime"> Controlled Substances Crime
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Embezzlement" name="embezzlement" id="embezzlement"> Embezzlement
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Identity Theft" name="identityTheft" id="identityTheft"> Identity Theft
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Misappropriation" name="misappropriation" id="misappropriation"> Misappropriation
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Money Laundering" name="moneyLaundering" id="moneyLaundering"> Money Laundering
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Ponzi Schemes" name="ponziSchemes" id="ponziSchemes"> Ponzi Schemes
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Pyramid Schemes" name="pyramidSchemes" > Pyramid Schemes
                </label>
                <a href="#" onclick="javascript:clearAllOtherSubjectsForNewTrends();return false;">Fraud</a>
                <label class="checkbox margin-top-0 padding-left-20">
                    <input type="checkbox" value="Corruption" name="corruption" id="corruption"> Corruption
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Election Fraud" name="electionFraud" id="electionFraud"> Election Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Insurance Fraud" name="insuranceFraud" id="insuranceFraud"> Insurance Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Internet Crime" name="internetCrime" id="internetCrime"> Internet Crime
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Mail Fraud" name="mailFraud" id="mailFraud"> Mail Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Medicare Fraud" name="medicareFraud" id="medicareFraud"> Medicare Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Mortgage Fraud" name="criminalmortgageFraud" id="criminalmortgageFraud"> Mortgage Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Real Estate Fraud" name="real-estateFraud" id="real-estateFraud"> Real Estate Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Tax Fraud" name="taxFraud" id="taxFraud"> Tax Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Telephone Billing Fraud" name="telephoneBillingFraud" id="telephoneBillingFraud"> Telephone Billing Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Welfare Fraud" name="welfareFraud" id="welfareFraud"> Welfare Fraud
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Wire Fraud" name="wireFraud" id="wireFraud"> Wire Fraud
                </label>
            </div>
            <div class="col col-2">
                <a class="margin-top-10 block-display" href="#" onclick="javascript:clearAllOtherSubjectsForNewTrends();return false;">Other Criminal Activity</a>
                <label class="checkbox margin-top-0 padding-left-20">
                    <input type="checkbox" value="Cartels" name="cartels" id="cartels"> Cartels
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Consumer Protection" name="consumerProtection" id="consumerProtection"> Consumer Protection
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Crimes Against Persons" name="crimesAgainstPersons" id="crimesAgainstPersons"> Crimes Against Persons
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Crimes Against Humanity" name="crimesAgainstHumanity" id="crimesAgainstHumanity"> Crimes Against Humanity
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Human Trafficking" name="humanTrafficking" id="humanTrafficking"> Human Trafficking
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Illegal Weapons" name="illegalWeapons" id="illegalWeapons"> Illegal Weapons
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Kidnapping" name="kidnapping" id="kidnapping"> Kidnapping
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Organ Trafficking" name="organTrafficking" id="organTrafficking"> Organ Trafficking
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Organized Crime" name="organizedCrime" id="organizedCrime"> Organized Crime
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Rebellions and Insurgencies" name="rebellionsandInsurgencies" id="rebellionsandInsurgencies"> Rebellions and Insurgencies
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Smuggling" name="smuggling" id="smuggling"> Smuggling
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Sex Trafficking" name="sexTrafficking" id="sexTrafficking"> Sex Trafficking
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Terrorism" name="terrorism" id="terrorism"> Terrorism
                </label>
                <a href="#" onclick="javascript:selectArsonAndExtortionForNewsTrends(); return false;">Property Crimes</a>
                <label class="checkbox margin-top-0 padding-left-20">
                    <input type="checkbox" value="Arson" name="arson" id="arson"> Arson
                </label>
                <label class="checkbox padding-left-20">
                    <input type="checkbox" value="Extortion" name="extortion" id="extortion"> Extortion
                </label>
            </div>
        </div>
    </div>
    <br /><br />
    <div id="healthcare" class="col col-10">
        <div id="healthcaresection" class="padding-left-5 box-30">
            <button type="button" id="healthcareheader" class="btn btn-link collapsed">
                <span class="show-hidden-data-icon"></span>
                Healthcare (<span id="healthcaretopicscount">0</span> of 10)
            </button>
            <span class="padding-right-5 pull-right hidden" id="healthcaretopicsclear"><a class="anchor-bg" onclick="check_or_uncheck('#healthcaretopics', 'anchor', 'false');clear_newstrends_topiccount('#healthcaretopics');" href="javascript:void(0);">Clear</a></span>
        </div>
        <div id="healthcaretopics" class="padding-left-20 hidden">
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="All Health Care" name="healthCare" id="healthCare"> All Health Care
                </label>
                <label class="checkbox">
                    <input type="checkbox" value=" Clinics And Outpatient Facilities" name="clinicsAndOutpatientFacilities" id="clinicsAndOutpatientFacilities"> Clinics And Outpatient Facilities
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Health Care Industry Trends" name="healthCareIndustryTrends" id="healthCareIndustryTrends"> Health Care Industry Trends
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Health Care Information Technology" name="healthCareInformationTechnology" id="healthCareInformationTechnology"> Health Care Information Technology
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Health Care Policy" name="healthCarePolicy" id="healthCarePolicy"> Health Care Policy
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Health Care Regulatory Compliance" name="healthCareRegulatoryCompliance" id="healthCareRegulatoryCompliance"> Health Care Regulatory Compliance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Health Care Sector Performance" name="healthCareSectorPerformance" id="healthCareSectorPerformance"> Health Care Sector Performance
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Health Insurance" name="healthInsurance" id="healthInsurance"> Health Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Hospitals" name="hospitals" id="hospitals"> Hospitals
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="In Store Clinics And Pharmacies" name="inStoreClinicsAndPharmacies" id="inStoreClinicsAndPharmacies"> In Store Clinics And Pharmacies
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Managed Care Facilities" name="managedCareFacilities" id="managedCareFacilities"> Managed Care Facilities
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Medical Devices" name="medicalDevices" id="medicalDevices"> Medical Devices
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Medical Records" name="medicalRecords" id="medicalRecords"> Medical Records
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Medical Tourism" name="medicalTourism" id="medicalTourism"> Medical Tourism
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Nursing And Residential Care Organizations" name="nursingAndResidentialCareOrganizations" id="nursingAndResidentialCareOrganizations"> Nursing And Residential Care Organizations
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Physician Practices" name="physicianPractices" id="physicianPractices"> Physician Practices
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Substance Abuse Facilities" name="substanceAbuseFacilities" id="substanceAbuseFacilities"> Substance Abuse Facilities
                </label>
            </div>            
        </div>
    </div>
    <br /><br />
    <div id="insurance" class="col col-10">
        <div id="insurancesection" class="padding-left-5 box-30">
            <button type="button" id="insuranceheader" class="btn btn-link collapsed">
                <span class="show-hidden-data-icon"></span>
                Insurance (<span id="insurancetopicscount">0</span> of 10)
            </button>
            <span class="padding-right-5 pull-right hidden" id="insurancetopicsclear"><a class="anchor-bg" onclick="check_or_uncheck('#insurancetopics', 'anchor', 'false');clear_newstrends_topiccount('#insurancetopics');" href="javascript:void(0);">Clear</a></span>
        </div>
        <div id="insurancetopics" class="padding-left-20 hidden">
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="All Insurance" name="allInsurance" id="allInsurance"> All Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Automobile Insurance" name="automobileInsurance" id="automobileInsurance"> Automobile Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Aviation Insurance" name="aviationInsurance" id="aviationInsurance"> Aviation Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Bank Deposit Insurance" name="insBankDepositInsurance" id="insBankDepositInsurance"> Bank Deposit Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Excess And Surplus Lines Insurance" name="excessAndSurplusLinesInsurance" id="excessAndSurplusLinesInsurance"> Excess And Surplus Lines Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Financial Guaranty Insurance" name="financialGuarantyInsurance" id="financialGuarantyInsurance"> Financial Guaranty Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Health Insurance" name="insHealthInsurance" id="insHealthInsurance"> Health Insurance
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Agencies And Brokerages" name="insuranceAgenciesAndBrokerages" id="insuranceAgenciesAndBrokerages"> Insurance Agencies And Brokerages
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Rating Bureaus" name="insuranceRatingBureaus" id="insuranceRatingBureaus"> Insurance Rating Bureaus
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Regulation And Policy" name="insuranceRegulationAndPolicy" id="insuranceRegulationAndPolicy"> Insurance Regulation And Policy
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Regulatory Compliance" name="insuranceRegulatoryCompliance" id="insuranceRegulatoryCompliance"> Insurance Regulatory Compliance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Sector Performance" name="insuranceSectorPerformance" id="insuranceSectorPerformance"> Insurance Sector Performance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Associations" name="insuranceAssociations" id="insuranceAssociations"> Insurance Associations
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Company Ratings" name="insuranceCompanyRatings" id="insuranceCompanyRatings"> Insurance Company Ratings
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Insurance Policies And Claims" name="insurancePoliciesAndClaims" id="insurancePoliciesAndClaims"> Insurance Policies And Claims
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="International Insurance" name="internationalInsurance" id="internationalInsurance"> International Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Liability Insurance" name="liabilityInsurance" id="liabilityInsurance"> Liability Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Life Insurance" name="lifeInsurance" id="lifeInsurance"> Life Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Mortgage Insurance" name="mortgageInsurance" id="mortgageInsurance"> Mortgage Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Property And Casualty Insurance" name="propertyAndCasualtyInsurance" id="propertyAndCasualtyInsurance"> Property And Casualty Insurance
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Reinsurance" name="reinsurance" id="reinsurance"> Reinsurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Residual Insurance" name="residualInsurance" id="residualInsurance"> Residual Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Risk Management" name="riskManagement" id="riskManagement"> Risk Management
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Self Insurance" name="selfInsurance" id="selfInsurance"> Self Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Specialty Lines Insurance" name="specialtyLinesInsurance" id="specialtyLinesInsurance"> Specialty Lines Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Title Insurance" name="titleInsurance" id="titleInsurance"> Title Insurance
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Travel Insurance" name="travelInsurance" id="travelInsurance"> Travel Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Workers Compensation" name="workersCompensation" id="workersCompensation"> Workers Compensation
                </label>
            </div>            
        </div>
    </div>
    <br /><br />
    <div id="pharmaceutical" class="col col-10">
        <div id="pharmaceuticalsection" class="padding-left-5 box-30">
            <button type="button" id="pharmaceuticalheader" class="btn btn-link collapsed">
                <span class="show-hidden-data-icon"></span>
                Pharmaceutical (<span id="pharmaceuticaltopicscount">0</span> of 10)
            </button>
            <span class="padding-right-5 pull-right hidden cursor-pointer" id="pharmaceuticaltopicsclear"><a class="anchor-bg" onclick="check_or_uncheck('#pharmaceuticaltopics', 'anchor', 'false');clear_newstrends_topiccount('#pharmaceuticaltopics');" href="javascript:void(0);">Clear</a></span>
        </div>
        <div id="pharmaceuticaltopics" class="padding-left-20 hidden">
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="All Pharmaceutical" name="pharmaceutical" id="pharmaceutical"> All Pharmaceutical
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Associations" name="associations" id="associations"> Associations
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Chemistry" name="chemistry" id="chemistry"> Chemistry
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox"> 
                    <input type="checkbox" value="Medical Manufacturing" name="medicalManufacturing" id="medicalManufacturing"> Medical Manufacturing
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Patents" name="patents" id="patents"> Patents
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="preparationManufacturing" name="preparationManufacturing" id="preparationManufacturing"> Preparation Manufacturing
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Product Development" name="productDevelopment" id="productDevelopment"> Product Development
                </label>
            </div>
            <div class="col col-2">
                 <label class="checkbox">
                    <input type="checkbox" value="Regulatory Compliance" name="regulatoryCompliance" id="regulatoryCompliance"> Regulatory Compliance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Trade" name="trade" id="trade"> Trade
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Wholesalers" name="wholesalers" id="wholesalers"> Wholesalers
                </label>
            </div>            
        </div>
    </div>
    <br /><br />
    <div id="realestate" class="col col-10">
        <div id="realestatesection" class="padding-left-5 box-30">
            <button type="button" id="realestateheader" class="btn btn-link collapsed">
                <span class="show-hidden-data-icon"></span>
                Real Estate (<span id="realestatetopicscount">0</span> of 10)
            </button>
            <span class="padding-right-5 pull-right hidden" id="realestatetopicsclear"><a class="anchor-bg" onclick="check_or_uncheck('#realestatetopics', 'anchor', 'false');clear_newstrends_topiccount('#realestatetopics');" href="javascript:void(0);">Clear</a></span>
        </div>
        <div id="realestatetopics" class="padding-left-20 hidden">
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="All Real Estate" name="allRealEstate" id="allRealEstate"> All Real Estate
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Building And Housing Inspections" name="buildingAndHousingInspections" id="buildingAndHousingInspections"> Building And Housing Inspections
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Commercial And Residential Property" name="commercialAndResidentialProperty" id="commercialAndResidentialProperty"> Commercial And Residential Property
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Mortgage Banking And Finance" name="mortgageBankingAndFinance" id="mortgageBankingAndFinance"> Mortgage Banking And Finance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Mortgage Fraud" name="mortgageFraud" id="mortgageFraud"> Mortgage Fraud
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Property Escrow And Title" name="propertyEscrowAndTitle" id="propertyEscrowAndTitle"> Property Escrow And Title
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Property Management" name="propertyManagement" id="propertyManagement"> Property Management
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Property Tax" name="propertyTax" id="propertyTax"> Property Tax
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Agents" name="realEstateAgents" id="realEstateAgents"> Real Estate Agents
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Bubble" name="realEstateBubble" id="realEstateBubble"> Real Estate Bubble
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Contracts" name="realEstateContracts" id="realEstateContracts"> Real Estate Contracts
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Development" name="realEstateDevelopment" id="realEstateDevelopment"> Real Estate Development
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Fraud" name="realEstateFraud" id="realEstateFraud"> Real Estate Fraud
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Insurance" name="realEstateInsurance" id="realEstateInsurance"> Real Estate Insurance
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Investing" name="realEstateInvesting" id="realEstateInvesting"> Real Estate Investing
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Listing Services" name="realEstateListingServices" id="realEstateListingServices"> Real Estate Listing Services
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Sector Performance" name="realEstateSectorPerformance" id="realEstateSectorPerformance"> Real Estate Sector Performance
                </label>
            </div>
            <div class="col col-2">
                <label class="checkbox">
                    <input type="checkbox" value="Real Estate Transactions" name="realEstateTransactions" id="realEstateTransactions"> Real Estate Transactions
                </label>
                <label class="checkbox">
                    <input type="checkbox" value="Zoning And Land Use" name="zoningAndLandUse" id="zoningAndLandUse"> Zoning And Land Use
                </label>
            </div> 
        </div>
    </div>
</div>
