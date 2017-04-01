<div id="search-form-fields" class="col col-7">
    <div class="input-group-subtext input-group-pulltop">Terms &amp; Connectors: Modify your search using connectors: "car and boat", "car or auto", "car w/5 accident" - <a href="javascript:void(0);" id="search-connector-examples">More Examples</a></div>
    <div class="row">
        <div class="input col col-3">
            <label>
                <input type="text" id="LAST_NAME" class="form-control" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name" maxlength="35">
                <span class="tooltip">Last Name</span> 
            </label>
        </div>
        <div class="input col col-3">
            <label>
                <input type="text" id="FIRST_NAME" class="form-control" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name" maxlength="35">
                <span class="tooltip">First Name</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-6">
            <label>
                <input type="text" id="COMPANY_NAME" class="form-control" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name" maxlength="50">
                <span class="tooltip">Company Name</span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-9">
            <label>
                <textarea name="ARTICLE_WORDS" class="form-control" id="ARTICLE_WORDS" placeholder="Words in the Article"><TMPL_VAR NAME=ARTICLE_WORDS></textarea>
                <span class="tooltip">
                    Words in the Article
                    <span class="font-10">ex. FDA and kids or children and nutrition</span>
                </span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="input col col-9">
            <label>
                <textarea name="WITHOUT_WORDS" class="form-control" id="WITHOUT_WORDS" placeholder="Without the Words"><TMPL_VAR NAME=WITHOUT_WORDS></textarea>
                <span class="tooltip">
                    Without the Words
                    <span class="font-10">ex. car and boat</span>
                </span> 
            </label>
        </div>
    </div>    
    <div class="row">
        <div class="col col-5"><strong>Topics</strong></div>
    </div>
    <div id="topic-row" class="row">
        <div class="col col-1_5"><a class="anchor-bg" data-toggle="modal" href="#subject-topics">Subject - <strong id="subjectCount" name="subjectCount">0</strong></a></div>
        <div class="col col-1_75"><a class="anchor-bg" data-toggle="modal" href="#industry-topics">Industry - <strong id="industryCount" name="industryCount">0</strong></a></div>
        <div class="col col-1_75"><a class="anchor-bg" data-toggle="modal" href="#geography-topics">Geography - <strong id="geographyCount" name="geographyCount">0</strong></a></div>
        <div class="col col-2"><a class="anchor-bg" data-toggle="modal" href="#state-topics">State - <strong id="stateCount" name="stateCount">0</strong></a></div>
    </div>
    <div class="row">
        <!-- Subject Topics to Select -->
        <div class="modal fade" id="subject-topics" aria-live="polite" role="dialog" aria-labelledby="subjectTopicsModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" onclick="clear_newly_selected_options('#subjecttopics', '#SELECTED_NEWS')"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
                        <label><b>Subjects</b></label>
                        <hr />
                    </div>
                    <div class="modal-body" id="subjecttopics">
                        <a class="anchor-bg" onclick="check_or_uncheck('#subjecttopics', 'anchor', 'true');return false;" href="#">Select All</a> | <a class="anchor-bg" onclick="check_or_uncheck('#subjecttopics', 'anchor', 'false');return false;" href="#">Clear All</a><br />
                        <div class="row">
                            <div class="col col-3 padding-left-35">
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllfinancrimes" id="searchAllfinancrimes" onclick="javascript:check_or_uncheck('#financialcrimes', 'checkbox', '#searchAllfinancrimes');">&nbsp;<strong>All Financial Crimes</strong>
                                </label>
                                <div class="padding-left-20" id="financialcrimes">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Bribery" name="bribery" id="bribery"> Bribery
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Counterfeiting" name="counterfeiting" id="counterfeiting"> Counterfeiting
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Counterfeit Drugs" name="counterfeitdrugs" id="counterfeitdrugs"> Counterfeit Drugs
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Controlled Substances Crime" name="consubcrime" id="consubcrime"> Controlled Substances Crime
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Identity Theft" name="identitytheft" id="identitytheft"> Identity Theft
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Embezzlement" name="embezzlement" id="embezzlement"> Embezzlement
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Misappropriation" name="misappropriation" id="misappropriation"> Misappropriation
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Money Laundering" name="moneyLaundering" id="moneyLaundering"> Money Laundering
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Ponzi Schemes" name="ponziSchemes" id="ponziSchemes"> Ponzi Schemes
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Pyramid Schemes" name="pyramidSchemes" id="pyramidSchemes"> Pyramid Schemes
                                    </label>
                                </div>
                            </div>
                            <div class="col col-3">
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllfraud" id="searchAllfraud" onclick="javascript:check_or_uncheck('#fraudtopics', 'checkbox', '#searchAllfraud');">&nbsp;<strong>All Fraud</strong>
                                </label>
                                <div class="padding-left-20" id="fraudtopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Corruption" name="corruption" id="corruption" >Corruption
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Election Fraud" name="electionFraud" id="electionFraud">Election Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Fraud" name="insuranceFraud" id="insuranceFraud" >Insurance Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Mail Fraud" name="mailFraud" id="mailFraud" >Mail Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Internet Crime" name="internetCrime" id="internetCrime">Internet Crime
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Medicare Fraud" name="medicareFraud" id="medicareFraud">Medicare Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Mortgage Fraud" name="topicsmortgageFraud" id="topicsmortgageFraud">Mortgage Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Fraud" name="real-estateFraud" id="real-estateFraud">Real Estate Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Tax Fraud" name="taxFraud" id="taxFraud">Tax Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Telephone Billing Fraud" name="telephoneBillingFraud" id="telephoneBillingFraud">Telephone Billing Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Welfare Fraud" name="welfareFraud" id="welfareFraud">Welfare Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Wire Fraud" name="wireFraud" id="wireFraud">Wire Fraud
                                    </label>
                                </div>
                            </div>
                            <div class="col col-3">
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllpropcrimes" id="searchAllpropcrimes" onclick="javascript:check_or_uncheck('#propcrimtopics', 'checkbox', '#searchAllpropcrimes');">&nbsp;<strong>All Property Crimes</strong>
                                </label>
                                <div class="padding-left-20" id="propcrimtopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Arson" name="arson" id="arson">Arson
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Extortion" name="extortion" id="extortion">Extortion
                                    </label>
                                </div>
                                <label class="checkbox">
                                    <input type="checkbox" name="otherCriminalActivity" id="otherCriminalActivity" onclick="javascript:check_or_uncheck('#othercrimtopics', 'checkbox', '#otherCriminalActivity');">&nbsp;<strong>Other Criminal Activity</strong>
                                </label>
                                <div class="padding-left-20" id="othercrimtopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Cartels" name="cartels" id="cartels">Cartels
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Consumer Protection" name="consumerProtection" id="consumerProtection">Consumer Protection
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Crimes Against Persons" name="crimesAgainstPersons" id="crimesAgainstPersons">Crimes Against Persons
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Crimes Against Humanity" name="crimesAgainstHumanity" id="crimesAgainstHumanity">Crimes Against Humanity
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Human Trafficking" name="humanTrafficking" id="humanTrafficking">Human Trafficking
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Illegal Weapons" name="illegalWeapons" id="illegalWeapons">Illegal Weapons
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Kidnapping" name="kidnapping" id="kidnapping">Kidnapping
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Organ Trafficking" name="organTrafficking" id="organTrafficking">Organ Trafficking
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Organized Crime" name="organizedCrime" id="organizedCrime">Organized Crime
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Rebellions and Insurgencies" name="rebellionsInsurgencies" id="rebellionsInsurgencies">Rebellions and Insurgencies
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Smuggling" name="smuggling" id="smuggling">Smuggling
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Sex Trafficking" name="sexTrafficking" id="sexTrafficking">Sex Trafficking
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <a data-dismiss="modal" class="btn btn-danger" href="#" onclick="javascript:update_selected_options_cnt('#subjecttopics', '#subjectCount', '#SEARCH_NEWS', '#SELECTED_NEWS'); return false;">OK</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Industry Topics to Select -->
        <div class="modal fade" id="industry-topics" aria-live="polite" role="dialog" aria-labelledby="industryTopicsModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" onclick="clear_newly_selected_options('#industrytopics', '#SELECTED_INDUSTRIES')"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
                        <label><b>Industries</b></label>
                        <hr />
                    </div>
                    <div class="modal-body" id="industrytopics">
                        <a class="anchor-bg" onclick="check_or_uncheck('#industrytopics', 'anchor', 'true');return false;" href="#">Select All</a> | <a class="anchor-bg" onclick="check_or_uncheck('#industrytopics', 'anchor', 'false');return false;" href="#">Clear All</a><br />
                        <div class="row">
                            <div class="col col-3 padding-left-35">
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllBankingAndFinance" id="searchAllBankingAndFinance" onclick="javascript:check_or_uncheck('#bankTopics', 'checkbox', '#searchAllBankingAndFinance');">&nbsp;<strong>Banking and Finance</strong>
                                </label>
                                <div class="padding-left-20" id="bankTopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Bank Branches" name="bankBranches" id="bankBranches">Bank Branches
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Bank Deposit Insurance" name="bankDepositInsurance" id="bankDepositInsurance" >Bank Deposit Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Bank Holding Companies" name="bankHoldingCompanies" id="bankHoldingCompanies">Bank Holding Companies
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Bank Failures" name="bankFailures" id="bankFailures">Bank Failures
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Banking And Finance Associations" name="bankingAndFinanceAssociations" id="bankingAndFinanceAssociations">Banking And Finance Associations
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Banking And Finance Regulation" name="bankingAndFinanceRegulation" id="bankingAndFinanceRegulation">Banking And Finance Regulation
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Banking And Finance Regulatory Compliance" name="bankingAndFinanceRegulatoryCompliance" id="bankingAndFinanceRegulatoryCompliance">Banking And Finance Regulatory Compliance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Banking And Finance Sector Performance" name="bankingAndFinanceSectorPerformance" id="bankingAndFinanceSectorPerformance">Banking And Finance Sector Performance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Banking And Finance Technology" name="bankingAndFinanceTechnology" id="bankingAndFinanceTechnology">Banking And Finance Technology
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Banking And Financial Industry Trends" name="bankingAndFinancialIndustryTrends" id="bankingAndFinancialIndustryTrends">Banking And Financial Industry Trends
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Banking In China" name="bankingInChina" id="bankingInChina">Banking In China
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Behavioral Finance" name="behavioralFinance" id="behavioralFinance">Behavioral Finance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Budgets" name="budgets" id="budgets">Budgets
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Central Banks" name="centralBanks" id="centralBanks">Central Banks
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Commercial Banking" name="commercialBanking" id="commercialBanking">Commercial Banking
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Community Banks" name="communityBanks" id="communityBanks">Community Banks
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Development Banks" name="developmentBanks" id="developmentBanks">Development Banks
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Financial Risk Management" name="financialRiskManagement" id="financialRiskManagement">Financial Risk Management
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Fix Protocol" name="fixProtocol" id="fixProtocol">Fix Protocol
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Friendly And Provident Societies" name="friendlyAndProvidentSocieties" id="friendlyAndProvidentSocieties">Friendly And Provident Societies
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Industrial Loan Companies" name="industrialLoanCompanies" id="industrialLoanCompanies">Industrial Loan Companies
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Islamic Banking" name="islamicBanking" id="islamicBanking">Islamic Banking
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Leasing Industry" name="leasingIndustry" id="leasingIndustry">Leasing Industry
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Merchant Banking" name="merchantBanking" id="merchantBanking">Merchant Banking
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Money Center Banks" name="moneyCenterBanks" id="moneyCenterBanks">Money Center Banks
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="OFX Protocol" name="ofxProtocol" id="ofxProtocol">OFX Protocol
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Personal Finance" name="personalFinance" id="personalFinance">Personal Finance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Savings Institutions" name="savingsInstitutions" id="savingsInstitutions">Savings Institutions
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Wholesale Banking" name="wholesaleBanking" id="wholesaleBanking">Wholesale Banking
                                    </label>
                                </div>
                            </div>
                            <div class="col col-2">
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllgaming" id="searchAllgaming" onclick="javascript:check_or_uncheck('#gamingtopics', 'checkbox', '#searchAllgaming');">&nbsp;<strong>Gaming</strong>
                                </label>
                                <div class="padding-left-20" id="gamingtopics" id="gamingtopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Casinos" name="casinos" id="casinos">Casinos
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Lotteries" name="lotteries" id="lotteries">Lotteries
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Card Games" name="cardGames" id="cardGames">Card Games
                                    </label>
                                </div>
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllpharmaceutical" id="searchAllpharmaceutical" onclick="javascript:check_or_uncheck('#pharmatopics', 'checkbox', '#searchAllpharmaceutical');">&nbsp;<strong>Pharmaceutical</strong>
                                </label>
                                <div class="padding-left-20" id="pharmatopics" id="pharmatopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Associations" name="associations" id="associations">Associations
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Chemistry" name="chemistry" id="chemistry">Chemistry
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Medical Manufacturing" name="medicalManufacturing" id="medicalManufacturing">Medical Manufacturing
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Patents" name="patents" id="patents">Patents
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Preparation Manufacturing" name="preparationManufacturing" id="preparationManufacturing">Preparation Manufacturing
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Product Development" name="productDevelopment" id="productDevelopment">Product Development
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Regulatory Compliance" name="regulatoryCompliance" id="regulatoryCompliance">Regulatory Compliance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Trade" name="trade" id="trade">Trade
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Wholesalers" name="wholesalers" id="wholesalers">Wholesalers
                                    </label>
                                </div>
                            </div>
                            <div class="col col-2">
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllRealEstate" id="searchAllRealEstate" onclick="javascript:check_or_uncheck('#realestatetopics', 'checkbox', '#searchAllRealEstate');">&nbsp;<strong>Real Estate</strong>
                                </label>
                                <div class="padding-left-20" id="realestatetopics" id="realestatetopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Building And Housing Inspections" name="buildingAndHousingInspections" id="buildingAndHousingInspections">Building And Housing Inspections
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Commercial And Residential Property" name="commercialAndResidentialProperty" id="commercialAndResidentialProperty">Commercial And Residential Property
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Mortgage Banking And Finance" name="mortgageBankingAndFinance" id="mortgageBankingAndFinance">Mortgage Banking And Finance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Mortgage Fraud" name="mortgageFraud" id="mortgageFraud">Mortgage Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Property Escrow And Title" name="propertyEscrowAndTitle" id="propertyEscrowAndTitle">Property Escrow And Title
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Property Management" name="propertyManagement" id="propertyManagement">Property Management
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Property Tax" name="propertyTax" id="propertyTax">Property Tax
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Agents" name="realEstateAgents" id="realEstateAgents">Real Estate Agents
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Bubble" name="realEstateBubble" id="realEstateBubble">Real Estate Bubble
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Contracts" name="realEstateContracts" id="realEstateContracts">Real Estate Contracts
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Development" name="realEstateDevelopment" id="realEstateDevelopment">Real Estate Development
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Fraud" name="realEstateFraud" id="realEstateFraud">Real Estate Fraud
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Insurance" name="realEstateInsurance" id="realEstateInsurance">Real Estate Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Investing" name="realEstateInvesting" id="realEstateInvesting">Real Estate Investing
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Listing Services" name="realEstateListingServices" id="realEstateListingServices">Real Estate Listing Services
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Sector Performance" name="realEstateSectorPerformance" id="realEstateSectorPerformance">Real Estate Sector Performance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Real Estate Transactions" name="realEstateTransactions" id="realEstateTransactions">Real Estate Transactions
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Zoning And Land Use" name="zoningAndLandUse" id="zoningAndLandUse">Zoning And Land Use
                                    </label>
                                </div>
                            </div>
                            <div class="col col-3 padding-left-35">
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllhealthCare" id="searchAllhealthCare" onclick="javascript:check_or_uncheck('#healthcaretopics', 'checkbox', '#searchAllhealthCare');">&nbsp;<strong>Health Care</strong>
                                </label>
                                <div class="padding-left-20" id="healthcaretopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Clinics And Outpatient Facilities" name="clinicsAndOutpatientFacilities" id="clinicsAndOutpatientFacilities">Clinics And Outpatient Facilities
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Health Care Industry Trends" name="healthCareIndustryTrends" id="healthCareIndustryTrends">Health Care Industry Trends
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Health Care Information Technology" name="healthCareInformationTechnology" id="healthCareInformationTechnology">Health Care Information Technology
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Health Care Policy" name="healthCarePolicy" id="healthCarePolicy">Health Care Policy
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Health Care Regulatory Compliance" name="healthCareRegulatoryCompliance" id="healthCareRegulatoryCompliance">Health Care Regulatory Compliance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Health Care Sector Performance" name="healthCareSectorPerformance" id="healthCareSectorPerformance">Health Care Sector Performance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Health Insurance" name="healthInsurance" id="healthInsurance">Health Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Hospitals" name="hospitals" id="hospitals">Hospitals
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="In Store Clinics And Pharmacies" name="inStoreClinicsAndPharmacies" id="inStoreClinicsAndPharmacies">In Store Clinics And Pharmacies
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Managed Care Facilities" name="managedCareFacilities" id="managedCareFacilities">Managed Care Facilities
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Medical Devices" name="medicalDevices" id="medicalDevices">Medical Devices
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Medical Records" name="medicalRecords" id="medicalRecords">Medical Records
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Medical Tourism" name="medicalTourism" id="medicalTourism">Medical Tourism
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Nursing And Residential Care Organizations" name="nursingAndResidentialCareOrganizations" id="nursingAndResidentialCareOrganizations">Nursing And Residential Care Organizations
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Physician Practices" name="physicianPractices" id="physicianPractices">Physician Practices
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Substance Abuse Facilities" name="substanceAbuseFacilities" id="substanceAbuseFacilities">Substance Abuse Facilities
                                    </label>
                                </div>
                                <label class="checkbox">
                                    <input type="checkbox" name="searchAllInsurance" id="searchAllInsurance" onclick="javascript:check_or_uncheck('#insurancetopics', 'checkbox', '#searchAllInsurance');">&nbsp;<strong>Insurance</strong>
                                </label>
                                <div class="padding-left-20" id="insurancetopics">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Automobile Insurance" name="automobileInsurance" id="automobileInsurance">Automobile Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Aviation Insurance" name="aviationInsurance" id="aviationInsurance">Aviation Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Bank Deposit Insurance" name="insBankDepositInsurance" id="insBankDepositInsurance">Bank Deposit Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Excess And Surplus Lines Insurance" name="excessAndSurplusLinesInsurance" id="excessAndSurplusLinesInsurance">Excess And Surplus Lines Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Financial Guaranty Insurance" name="financialGuarantyInsurance" id="financialGuarantyInsurance">Financial Guaranty Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Health Insurance" name="insHealthInsurance" id="insHealthInsurance">Health Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Agencies And Brokerages" name="insuranceAgenciesAndBrokerages" id="insuranceAgenciesAndBrokerages">Insurance Agencies And Brokerages
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Associations" name="insuranceAssociations" id="insuranceAssociations">Insurance Associations
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Company Ratings" name="insuranceCompanyRatings" id="insuranceCompanyRatings">Insurance Company Ratings
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Policies And Claims" name="insurancePoliciesAndClaims" id="insurancePoliciesAndClaims">Insurance Policies And Claims
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Rating Bureaus" name="insuranceRatingBureaus" id="insuranceRatingBureaus">Insurance Rating Bureaus
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Regulation And Policy" name="insuranceRegulationAndPolicy" id="insuranceRegulationAndPolicy">Insurance Regulation And Policy
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Regulatory Compliance" name="insuranceRegulatoryCompliance" id="insuranceRegulatoryCompliance">Insurance Regulatory Compliance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Insurance Sector Performance" name="insuranceSectorPerformance" id="insuranceSectorPerformance">Insurance Sector Performance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="International Insurance" name="internationalInsurance" id="internationalInsurance">International Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Liability Insurance" name="liabilityInsurance" id="liabilityInsurance">Liability Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Life Insurance" name="lifeInsurance" id="lifeInsurance">Life Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Mortgage Insurance" name="mortgageInsurance" id="mortgageInsurance">Mortgage Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Property And Casualty Insurance" name="propertyAndCasualtyInsurance" id="propertyAndCasualtyInsurance">Property And Casualty Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Reinsurance" name="reinsurance" id="reinsurance">Reinsurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Residual Insurance" name="residualInsurance" id="residualInsurance">Residual Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Risk Management" name="riskManagement" id="riskManagement">Risk Management
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Self Insurance" name="selfInsurance" id="selfInsurance">Self Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Specialty Lines Insurance" name="specialtyLinesInsurance" id="specialtyLinesInsurance">Specialty Lines Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Title Insurance" name="titleInsurance" id="titleInsurance">Title Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Travel Insurance" name="travelInsurance" id="travelInsurance">Travel Insurance
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Workers Compensation" name="workersCompensation" id="workersCompensation">Workers Compensation
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a data-dismiss="modal" class="btn btn-danger" href="#" onclick="javascript:update_selected_options_cnt('#industrytopics', '#industryCount', '#SEARCH_INDUSTRIES', '#SELECTED_INDUSTRIES'); return false;">OK</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Geography Topics to Select -->
        <div class="modal fade" id="geography-topics" aria-live="polite" role="dialog" aria-labelledby="geographyTopicsModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" onclick="clear_newly_selected_options('#geographytopics', '#SELECTED_GEOGRAPHY')"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
                        <label><b>Geography</b></label>
                        <hr />
                    </div>
                    <div class="modal-body" id="geographytopics">
                        <a class="anchor-bg" onclick="check_or_uncheck('#geographytopics', 'anchor', 'true');return false;" href="#">Select All</a> | <a class="anchor-bg" onclick="check_or_uncheck('#geographytopics', 'anchor', 'false');return false;" href="#">Clear All</a><br />
                        <div class="row">
                            <div class="col col-3 padding-left-35">
                                All Geographies
                                <div class="padding-left-20">
                                    <label class="checkbox">
                                        <input type="checkbox" value="Africa" name="africa" id="africa">Africa
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Antarctica" name="antarctica" id="antarctica">Antarctica
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Asia" name="asia" id="asia">Asia
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Australia &amp; New Zealand" name="australiaandNewZealand" id="australiaandNewZealand">Australia &amp; New Zealand
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Caribbean Islands" name="caribbeanIslands" id="caribbeanIslands">Caribbean Islands
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Europe" name="europe" id="europe">Europe
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Latin America" name="latinAmerica" id="latinAmerica">Latin America
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="Middle East" name="middleEast" id="middleEast">Middle East
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="North America" name="northAmerica" id="northAmerica">North America
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a data-dismiss="modal" class="btn btn-danger" href="#" onclick="javascript:update_selected_options_cnt('#geographytopics', '#geographyCount', '#SEARCH_GEOGRAPHY', '#SELECTED_GEOGRAPHY'); return false;">OK</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- State Topics to Select -->
        <div class="modal fade" id="state-topics" aria-live="polite" role="dialog" aria-labelledby="stateTopicsModal" aria-hidden="true" data-keyboard="false" data-backdrop="static">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" onclick="clear_newly_selected_options('#statetopics', '#SELECTED_STATES')"><span aria-hidden="true">x</span><span class="sr-only">Close</span></button>
                        <label><b>States</b></label>
                        <hr />
                    </div>
                    <div class="modal-body" id="statetopics">
                        <a class="anchor-bg" onclick="check_or_uncheck('#statetopics', 'anchor', 'true');return false;" href="#">Select All</a> | <a class="anchor-bg" onclick="check_or_uncheck('#statetopics', 'anchor', 'false');return false;" href="#">Clear All</a><br />
                        All States
                        <div class="row">
                            <div class="col col-9 padding-left-35">
                                <div class="col col-3 padding-left-20">
                                    <label class="checkbox">
                                        <input type="checkbox" value="AK" name="AK" id="AK">AK
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="AL" name="AL" id="AL">AL
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="AR" name="AR" id="AR">AR
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="AZ" name="AZ" id="AZ">AZ
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="CA" name="CA" id="CA">CA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="CO" name="CO" id="CO">CO
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="CT" name="CT" id="CT">CT
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="DE" name="DE" id="DE">DE
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="DC" name="DC" id="DC">DC
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="FL" name="FL" id="FL">FL
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="GA" name="GA" id="GA">GA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="GU" name="GU" id="GU">GU
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="HI" name="HI" id="HI">HI
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="ID" name="ID" id="ID">ID
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="IL" name="IL" id="IL">IL
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="IN" name="IN" id="IN">IN
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="IA" name="IA" id="IA">IA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="KS" name="KS" id="KS">KS
                                    </label>
                                </div>
                                <div class="col col-3 padding-left-20">
                                    <label class="checkbox">
                                        <input type="checkbox" value="KY" name="KY" id="KY">KY
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="LA" name="LA" id="LA">LA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="ME" name="ME" id="ME">ME
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="MD" name="MD" id="MD">MD
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="MA" name="MA" id="MA">MA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="MI" name="MIC" id="MIC">MI
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="MN" name="MN" id="MN">MN
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="MS" name="MS" id="MS">MS
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="MO" name="MO" id="MO">MO
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="MT" name="MT" id="MT">MT
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="NE" name="NE" id="NE">NE
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="NV" name="NV" id="NV">NV
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="NH" name="NH" id="NH">NH
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="NJ" name="NJ" id="NJ">NJ
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="NM" name="NM" id="NM">NM
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="NY" name="NY" id="NY">NY
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="NC" name="NC" id="NC">NC
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="ND" name="ND" id="ND">ND
                                    </label>
                                </div>
                                <div class="col col-3 padding-left-20">
                                    <label class="checkbox">
                                        <input type="checkbox" value="OH" name="OH" id="OH">OH
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="OK" name="OK" id="OK">OK
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="OR" name="OR" id="OR">OR
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="PA" name="PA" id="PA">PA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="PR" name="PR" id="PR">PR
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="RI" name="RI" id="RI">RI
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="SC" name="SC" id="SC">SC
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="SD" name="SD" id="SD">SD
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="TN" name="TN" id="TN">TN
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="TX" name="TX" id="TX">TX
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="UT" name="UT" id="UT">UT
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="VT" name="VT" id="VT">VT
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="VA" name="VA" id="VA">VA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="VI" name="VI" id="VI">VI
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="WA" name="WA" id="WA">WA
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="WV" name="WV" id="WV">WV
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="WI" name="WI" id="WI">WI
                                    </label>
                                    <label class="checkbox">
                                        <input type="checkbox" value="WY" name="WY" id="WY">WY
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <a data-dismiss="modal" class="btn btn-danger" href="#" onclick="javascript:update_selected_options_cnt('#statetopics', '#stateCount' ,'#SEARCH_STATES', '#SELECTED_STATES'); return false;">OK</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="input col col-3">
            <label>
                <span class="sr-only">Search by a date range</span>
                <select name="DATE_DROP" id="DATE_DROP" class="form-control" onchange="$('#FROM_DATE, #TO_DATE').val(''); toggle_custom_dates_radios(); update_save_news_terms_link();" data-value="<TMPL_VAR NAME="DATE_DROP_VALUE">" data-default-value="<TMPL_VAR NAME="DATE_DROP_DEFAULT_VALUE">" >
                    <TMPL_VAR DATE_DROP_CONTENTS_OPTIONS>
                </select>
            </label>
        </div>
        <fieldset>
            <legend class="sr-only">Enter custom date range</legend>
            <div class="input col col-3">
                <label>
                    <span class="sr-only">date start</span>
                    <input type="text" id="FROM_DATE" name="FROM_DATE" class="form-control hidden" value="<TMPL_VAR NAME=FROM_DATE>" placeholder="From" maxlength="10">
                    <span class="tooltip" aria-hidden="true">From<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
                </label>
            </div>
            <div class="col col-3">
                <label>
                    <span class="sr-only">date end</span>
                    <input type="text" id="TO_DATE" name="TO_DATE" class="form-control hidden" value="<TMPL_VAR NAME=TO_DATE>" placeholder="To" maxlength="10">
                    <span class="tooltip" aria-hidden="true">To<br>ex. 01/01/99, 01/01/1999,  1/ 1/1999</span> 
                </label>
            </div>
            <span id="DATE_HELP" class="hidden col col-1">
                <div class="additional-info">
                    <a id="custom-date-help" class="svg-icon-tiny help-icon" href="javascript:void(0);">
                        <span class="sr-only">Open help window on entering custom dates</span>
                        <span class="tooltip centered" aria-hidden="true">Help</span>
                    </a>
                </div>
            </span>
        </fieldset>
    </div>    
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_NEWS" name="SEARCH_NEWS" value="<TMPL_VAR NAME=SEARCH_NEWS>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SELECTED_NEWS" name="SELECTED_NEWS" value="<TMPL_VAR NAME=SELECTED_NEWS>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_INDUSTRIES" name="SEARCH_INDUSTRIES" value="<TMPL_VAR NAME=SEARCH_INDUSTRIES>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SELECTED_INDUSTRIES" name="SELECTED_INDUSTRIES" value="<TMPL_VAR NAME=SELECTED_INDUSTRIES>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_GEOGRAPHY" name="SEARCH_GEOGRAPHY" value="<TMPL_VAR NAME=SEARCH_GEOGRAPHY>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SELECTED_GEOGRAPHY" name="SELECTED_GEOGRAPHY" value="<TMPL_VAR NAME=SELECTED_GEOGRAPHY>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SEARCH_STATES" name="SEARCH_STATES" value="<TMPL_VAR NAME=SEARCH_STATES>" class="form-control">
            </label>
        </div>
    </div>
    <div class="row">
        <div class="input col col-1 hidden">
            <label>
                <input type="hidden" id="SELECTED_STATES" name="SELECTED_STATES" value="<TMPL_VAR NAME=SELECTED_STATES>" class="form-control">
            </label>
        </div>
    </div>
</div>
<div class="col col-3" id="search-options">
    <div class="row" style="margin:0;">
        <div class="input col col-10" style="padding:0;">
            <label>
                <input type="text" id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="32"  placeholder="Reference ID">
                <span class="tooltip">Reference ID </span> 
            </label>
        </div>
        <div id="REFERENCE_CODE_CRITERIA" class="col col-10">
            <span id="ref_code_criteria" class="textGray hidden">The Reference ID must contain only valid characters. </span>
        </div>
    </div>
    <hr>
    <strong>News Content</strong><br />
    <div>
        <div class="input col-5">
            <label>
                <span class="sr-only">Source</span>
                <TMPL_UNLESS DISPLAY_NEWS_SOURCE_AS_TEXT>
                    <select name="NEWS_SOURCE" id="NEWS_SOURCE" class="form-control" data-value="<TMPL_VAR DEFAULT_NEWS_SOURCE>">
                        <option value="News" selected="selected">News</option>
                        <TMPL_UNLESS DISABLE_US_NEWS><option value="US News">US News</option></TMPL_UNLESS>
                        <TMPL_UNLESS DISABLE_NON_US_NEWS><option value="Non-US News">Non-US News</option></TMPL_UNLESS>
                        <TMPL_UNLESS DISABLE_LN_NON_ENGLISH_NEWS><option value="Non-English News">Non-English News</option></TMPL_UNLESS>
                    </select>
                <TMPL_ELSE>
                    <input type="text" id="NEWS_SOURCE" class="form-control news-source-cursor" name="NEWS_SOURCE" value="<TMPL_VAR DEFAULT_NEWS_SOURCE>">
                </TMPL_UNLESS>
            </label>
        </div>
    </div>
    <br /><strong>My Search Terms </strong><br />
    <div id="news_search_terms_container">
        <div class="pull-left state-success col-5">
            <select name="MYSEARCH_TERMS" id="MYSEARCH_TERMS" class="form-control valid news_mysearh_terms" data-value="None" data-id="<TMPL_IF HID_MYSEARCH_TERMS><TMPL_VAR NAME=HID_MYSEARCH_TERMS></TMPL_IF>">
                <option selected="selected" value="None">None</option>
                <TMPL_LOOP SAVED_SEARCHES_RESULTS_LOOP> 
                    <option value="<TMPL_VAR NAME=SAVED_SEARCH_SEARCH_TERMS>" id="SEARCHTERMS<TMPL_VAR NAME=SAVED_SEARCH_SAVED_ID>"><TMPL_VAR NAME=SAVED_SEARCH_DESCRIPTION></option> 
                </TMPL_LOOP> 
            </select>
        </div>
        <div style="" class="input pull-left col-2">
            <input class="btn btn-clear" onclick="add_saved_terms();return false;" value="Add Terms" type="button">
            <input type="hidden" name="HID_MYSEARCH_TERMS" id="HID_MYSEARCH_TERMS" value="<TMPL_IF HID_MYSEARCH_TERMS><TMPL_VAR NAME=HID_MYSEARCH_TERMS></TMPL_IF>"> 
        </div>
    </div>
    <br /><br />
    <span id="saveTermsDummy" class="anchor-dummy">Save Terms</span>
    <a id="saveTermsAnchor" data-toggle="modal" data-target="#saveSearchModal" data-backdrop="static" data-keyboard="false" href="#" onclick="javascript:clearSaveTermsModal(); return false;">Save Terms</a> | <a data-toggle="modal" data-target="#deleteNewsModal" data-backdrop="static" data-keyboard="false" href="#" onclick="show_delete_terms_dialog(); return false;">Delete Terms</a>

    <!-- BEGIN : Modal to Show Save Search Terms -->
    <div class="modal fade" id="saveSearchModal" tabindex="-1" role="dialog" aria-labelledby="saveSavedSearchLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" id="newssavetermsheader">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div id="showSaveNewsHeader"><label id="lblNewsSaveModalDialog"><b>Save My Search Terms</b></label><br />
                    * Entry Required.<br /><br /></div>
                    <div id="showOverwriteHeader" class="hidden">
                        <label id="lblNewsOverwriteDialog"><b>Overwrite Saved Terms</b></label>
                        <br /><br />
                    </div>
                    <div id="showSaveNewsSucessHeader" class="hidden"><br /><br /></div>
                </div>
                <div class="modal-body">
                    <div id="showSaveNewsbody">
                        <div class="row">
                            <div class="input col col-6">
                                <label>
                                    <input type="text" name="txtSaveSearchDes" id="txtSaveSearchDes" maxlength="499" class="form-control" placeholder="Enter a My Search Terms *" />
                                    <span class="tooltip">Enter a My Search Terms *</span>
                                </label>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="input col col-6">
                                <strong>You may save or modify up to 10 My Search Terms:</strong><br/>
                                <label>
                                    <span class="sr-only">Save to</span>
                                    <select name="MYSEARCH_TERMS_TOSAVE" id="MYSEARCH_TERMS_TOSAVE" class="form-control">
                                        <option selected="" value="None">Save to ...*</option>
                                        <TMPL_LOOP SAVED_SEARCHES_RESULTS_LOOP>
                                            <option id="SAVESEARCHTERMS<TMPL_VAR NAME=SAVED_SEARCH_SAVED_ID>" value="<TMPL_VAR NAME=SAVED_SEARCH_SAVED_ID>|<TMPL_VAR NAME=SAVED_SEARCH_DESCRIPTION>"><TMPL_VAR NAME=SAVED_SEARCH_DESCRIPTION></option>
                                        </TMPL_LOOP>
                                        <TMPL_IF NAME=BLANK_SAVED_SEARCHES_LOOP>
                                            <TMPL_LOOP BLANK_SAVED_SEARCHES_LOOP>
                                                <option value="empty<TMPL_VAR NAME=SAVED_SEARCH_EMPTY_ROW_INDEX>"><TMPL_VAR NAME=SAVED_SEARCH_EMPTY_ROW></option>
                                            </TMPL_LOOP>
                                        </TMPL_IF>
                                    </select>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div id="showSaveNewsOverwriteConfirmbody" class="hidden">
                        Are you sure you want to overwrite the <b id="oldMySearchTerms"></b> saved terms with the <b id="newMySearchTerms"></b> saved terms?
                    </div>
                    <div id="showSaveNewsSuccessbody" class="hidden"></div>
                </div>
                <div class="modal-footer">
                    <div id="showSaveNewsfooter" class="pull-right">
                        <button class="btn btn-danger" onclick="javascript:check_update_or_insert_search_terms();return false;">Save</button>
                        <button  class="btn" data-dismiss="modal" aria-label="Close" onclick="return false;">Cancel</button>
                    </div>
                    <div id="showSaveNewsOverwritefooter" class="pull-right hidden">
                        <button class="btn btn-danger" onclick="javascript:save_news_search_terms();return false;">Yes</button>
                        <button class="btn" onclick="javascript:clearSaveTermsModal(); return false;">No</button>
                    </div>
                    <div id="showSaveNewsSuccessfooter" class="pull-right hidden">
                        <button class="btn btn-danger" data-dismiss="modal" aria-label="Close" onclick="return false;">OK</button>
                    </div>
                    <br /><br />
                </div>
            </div>
        </div>
    </div>
    <!-- END : Modal to Show Save Search Terms -->

    <!-- BEGIN : Modal to Delete Save Search Terms -->
    <div class="modal fade" id="deleteNewsModal" tabindex="-1" role="dialog" aria-labelledby="saveSavedSearchLabel">
        <div class="modal-dialog">
            <div class="modal-content" id="deleteNewsModalContent">
                <div class="modal-header" id="newsdeletetermsheader">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div id="deleteSaveNewsHeader">
                        <label id="lblNewsDeleteTermsModalDialog"><b>Delete My Search Terms</b></label>
                        <label id="lblNewsConfirmDelete" class="hidden"><b>Confirm Delete</b></label>
                        <label id="lblNewsDeletedSuccess" class="hidden"><b>Search Terms Deleted</b></label>
                    </div><div id="deleteSaveNewsSucessHeader" class="hidden"></div>
                </div>
                <div class="modal-body">
                    <div id="deleteSaveNewsbody">
                        <TMPL_IF NAME=SAVED_SEARCHES_RESULTS_LOOP>
                            <TMPL_LOOP SAVED_SEARCHES_RESULTS_LOOP>
                                <div class="list-group-item" id="divdeleteTermsRow<TMPL_VAR NAME=SAVED_SEARCH_SAVED_ID>">
                                    <span id="deleteTermsRow<TMPL_VAR NAME=SAVED_SEARCH_SAVED_ID>"><TMPL_VAR NAME=SAVED_SEARCH_DESCRIPTION></span>
                                    <a class="pull-right" onclick="showDeleteConfirmDialog(<TMPL_VAR NAME=SAVED_SEARCH_SAVED_ID>);return false;" href="#"><span class="trash_icon svg-icon-normal"></span></a>
                                </div>
                            </TMPL_LOOP>
                        </TMPL_IF>
                    </div>
                    <div id="deleteSaveNewsConfirmationbody" class="hidden">
                        <input type="hidden" id="HID_SAVEDID_TO_DELETE" name="HID_SAVEDID_TO_DELETE" />
                        Are you sure you want to delete your <b id="deleteNewsTerms"> </b> search terms?</h3>
                    </div>
                    <div id="deleteSaveNewsConfirmation" class="hidden">
                        Your <b id="confirmdeleteNewsTerms"> </b> search terms have been deleted.
                    </div>
                </div>
                <div id="showDeleteNewsfooter" class="modal-footer hidden">
                    <div id="showDeleteOrCancel" class="pull-right hidden">
                        <button class="btn btn-danger" onclick="javascript:delete_news_search_terms();return false;">Yes</button>
                        <button  class="btn" aria-label="Close" onclick="javascript:show_delete_terms_dialog();return false;">No</button>
                        <br />
                    </div>
                    <div id="showDeleteConfirmYes" class="pull-right hidden">
                        <button class="btn btn-danger" data-dismiss="modal" aria-label="Close" onclick="return false;">Ok</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END : Modal to Delete Save Search Terms -->
</div>
