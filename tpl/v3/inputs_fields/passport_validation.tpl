<!-- begin inputs_fields/passport_validation.tpl -->
<style>
.formBox .formBdyLeft input:first-child, .formBox .formBdyLeft select:first-child {
    margin: 0 0 0 6px;
}
</style>


<div>
    <input type="text" class="w400px" maxlength="44" id="MACHINE_READONE" name="MACHINE_READONE" value="" placeholder="* Passport (upper line)">
</div>
<div>
    <input type="text" class="w400px" maxlength="44" id="MACHINE_READTWO" name="MACHINE_READTWO" value="" placeholder="* Passport (lower line)">
</div>
<div>
    <div>
    <input type="text" class="w80px" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="* DOB">
    </div>
    <div class="labelAndSelect">
        <select name="GENDER"  placeholder="* Select Gender">
            <option value="X">* Select Gender</option>
            <option value="M">Male</option>
            <option value="F">Female</option>
            <option value="<">Not Specified</option>
        </select>
    </div>
</div>
<div>&nbsp;&nbsp;*&nbsp;Required Fields
</div>
<!-- end inputs_fields/passport_validation.tpl -->
