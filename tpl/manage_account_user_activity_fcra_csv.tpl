TransactionType (FCRA),GroupName,FirstName,MiddleName,LastName,FullName,Address,City,State,Zip,Zip4,Phone,SSN,UniqueID,DOB,BusinessName,ReferenceCode,DateAdded
<TMPL_LOOP NAME=FCRA_SEARCH_RESULTS><TMPL_VAR NAME=transaction_type>,<TMPL_VAR NAME=group_name>,<TMPL_VAR NAME="fname">,<TMPL_VAR NAME="mname">,<TMPL_VAR NAME="lname">,<TMPL_VAR NAME="full_name">,<TMPL_VAR NAME="address">,<TMPL_VAR NAME="city">,<TMPL_VAR NAME="state">,<TMPL_VAR NAME="zip">,<TMPL_VAR NAME="zip4">,<TMPL_VAR NAME="phone">,<TMPL_VAR NAME="ssn">,<TMPL_VAR NAME="unique_id">,<TMPL_VAR NAME="dob">,<TMPL_VAR NAME="business_name">,<TMPL_VAR NAME="reference_code">,<TMPL_VAR NAME="dateadded">
</TMPL_LOOP>