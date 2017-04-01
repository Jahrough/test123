<script>

//Input rules for different click searches. "only" means only these will be allowed,
// "skip" means these will not be allowed. The underlying code will process either
// "skip" list (first priority) or "only" list, not both. Though "skip" is recommended,
// because most of the required input is populated, from which you have to skip the
// offending ones, choose what you need -- skip or only.
// If a search is not listed in clk_inputs, then all are allowed.
var clk_inputs = {
    79: {
        skip: {'LOCATION_ID':1},
    },
};

// keep these as part of input
var clk_keep = { 'REFERENCE_CODE':1, 'DOL_DATE':1, 'PAGE':1, 'LOOKUP_TYPE': 1, 'INCLUDE_VERIFIED':1, 'INCLUDE_REALTIME':1, 'PHONETICS':1 };

//Research Panel Global Obj ==========
var RP_obj = {
    'typeFullName': {
        'NAME: ': [0, 46, 42, 13, 4, 3, 30, 45, 31, 32, 33, 38, 10, 11, 19, 29, 91, 9, 23, 8, 55, 57, 64, 65, 1, 2, 16, 21, 5, 66, 67, 79, 6, 105, 18, 24, 43, 39, 115, 170, 26, 39, 114]
    },
    'typeSSN': {
        'SSN: ': [0, 46, 42, 13, 4, 3, 30, 45, 31, 32, 33, 38, 10, 11, 19, 29, 91, 9, 23, 170, 105, 114, 175] // Complete List
    },
    'typeLexID': {
        'LEXID: ': [46, 0, 42, 79, 98, 175, 91, 43, 3, 10, 11, 114, 104, 170, 1, 2, 115, 4, 175, 98, 31, 16, 38, 23, 105, 170, 29, 45, 18, 19, 'DTR']
    },
    'typeAddr': {
        // 311 -> location report
        // 89  -> neighbors
        // 90  -> PERSON associates (requires address)
        // 79  -> phones plus
        // 164 -> property history report
        'ADDRESS: ': [311, 89, 90, 79, 164]
    },
    'typeAddr2': {
        // 311 -> location report
        // 89  -> neighbors
        // 120 -> ADDRESS associates (requires uniqueid)
        // 79  -> phones plus
        // 164 -> property history report
        'ADDRESS: ': [311, 89, 120, 79, 164]
    },
    'typeBJL': {
        'ADDRESS: ': [311, 89, 90, 79]
    },
    'typeMvr': {
        // 311 -> location report
        // 89  -> neighbors
        // 79  -> phones plus
        // 164 -> propert history report
        'ADDRESS: ': [311, 89, 79, 164]
    },
    'typeProp': {
        'ADDRESS: ': [1, 2, 341]
    },
    'typePropPlus': {
        'ADDRESS: ': [1, 2, 45, 311, 89, 294]
    },
    'typePhone': {
        'PHONE: ': [0, 79]
    },
    'typeMap': {
        'ADDRESS: ': [0, 46, 42, 13, 4, 3, 30, 45, 31, 32, 33, 38, 10, 11, 19, 29, 91, 9, 23, 8, 55, 57, 64, 65, 1, 2, 16, 21, 5, 66, 67, 79, 6, 105, 18, 24, 43, 39,117]
    },
    'typeVIN': {
        'VIN: ': [4, 18, 103]
    },
    'typeDL': {
        'DL: ': [3, 4, 18, 103]
    },
    'typePLATE': {
        'LICENSE PLATE: ': [4, 18, 103]
    },
    'typeLICENSE': {
        'LICENSE NUMBER: ': [23]
    },
    'typePhoneCA': {
        'PHONE: ': [100]
    },
    'typeAddrCA': {
        'ADDRESS: ': [100]
    },
    'typeFullNameCA': {
        'NAME: ': [100]
    },
    'typeFEIN': {
        'FEIN: ': [13, 8, 114, 42, 9, 11, 10]
    },   
    'typeCompany': {
        'COMPANY NAME: ': [13, 42, 8, 9, 11, 10, 40, 41, 16, 23, 85, 4, 45, 38, 6, 26, 18, 24, 17, 58, 107, 114]
    },
    'typeURL': {
        'URL: ': [17, 999]
    },
    'typeFilingNumber': {
        'Filing Number: ': [9, 58]
    },
    'typeFilingNumberMD': {
        'Filing Number: ': [43]
    },
    'typeCaseNumber': {
        'Case Number: ': [10, 114]
    },
    'typeRegNum': {
        'Registration Number: ': [38]
    },
    'typeTradeName': {
        'Trade Name: ': [33]
    },
    'typeFirearmsLicenseNumber': {
        'License Number: ': [33]
    },
    'typeACCIDENT': {
        'Accident Number: ': [18]
    },
    'typeHullID': {
        'HullID: ': [16]
    },
    'typeParcelNum': {
        'Parcel Number: ': [1, 2, 115, 86]
    },
    'typeCHARTER': {
        'Charter Number: ': [8]
    },
    'typeVesselName': {
        'Vessel Name: ': [16]
    },
    'typeDAAddr': {
        // 14  -> address report
        // 36  -> asset report
        // 89  -> neighbors
        // 90  -> associates
        // 79  -> phones plus
        'ADDRESS: ': [14, 36, 89, 90, 79]
    },
    'typeAccidentAddr': {
        'ADDRESS: ': [14, 89, 79, 36]
    },
    'typeLocationAddr': {
        'ADDRESS: ': [89, 90, 79, 341]
    },
	'typeAddrFAB': {
        // 311 -> location report
        // 164 -> propert history report
        'ADDRESS: ': [311, 164]
    },
	'typePhoneFAB': {
        // 79  -> phone plus search
        // 0   -> person search
        // 13  -> business search
        'PHONE: ': [79, 0, 13]
    },
    'typeAddrVessel': {
        // 311 -> location report
        // 89  -> neighbors
        // 79  -> phones plus
        // 164 -> propert history report
        'ADDRESS: ': [311, 89, 79, 164]
    },
    'typeAddrSoSFiling': {
        // 311 -> location report        
        // 164 -> propert history report
        'ADDRESS: ': [311, 164]
    },	
    'typeAircraftAddr': { 
        // 311 -> location report 
        // 89  -> neighbors 
        // 79  -> phones plus 
        // 164 -> propert history report 
        'ADDRESS: ': [311, 89, 79, 164] 
    },
    'typeAddrStatewideFAB': {
        // 311 -> location report        
        // 164 -> propert history report
        'ADDRESS: ': [311, 164]
    },
};


</script>
