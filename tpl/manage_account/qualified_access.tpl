<!-- begin: $RCSfile: qualified_access.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="100%">
    <div class="infobox">
Certain users ("Authorized Users") may be able to obtain full (nine digits) social security numbers ("SSNs") through some LNRM Services.  Only those users that are within the Authorized User List below, and that  use SSNs for an Authorized Use identified below,  qualify as Authorized Users.  To qualify as an Authorized User, Customer must identify and certify that its business is within the Authorized User List below and its use of SSNs is within the Authorized Use List below.
    </div>
    <div class="genboxsmall">
    <b>SECTION A: AUTHORIZED USER (At least one must be <u>INITIALED</u> to receive SSNs.)</b><br><br>
    <input type="radio" name="section_a" value=""> Federal, state or local government agency with law enforcement responsibilities;<br>
    <input type="radio" name="section_a" value=""> Special investigative unit, subrogation department and claims department of a private or public insurance company for the purposes of detecting, investigating or preventing fraud;<br>
    <input type="radio" name="section_a" value=""> Financial institution for the purposes of (a) detecting, investigating or preventing fraud, (b) compliance with federal or state laws or regulations, (c) collecting debt on their own behalf and (d) such other uses as shall be appropriate and lawful;<br>
    <input type="radio" name="section_a" value=""> Collection department of a creditor;<br>
    <input type="radio" name="section_a" value=""> Collection company acting on behalf of a creditor or on its own behalf;<br>
    <input type="radio" name="section_a" value=""> Other public or private entity for the purpose of detecting, investigating or preventing fraud.<br>
    </div>
    <div class="genboxsmall">
    <b>SECTION B: AUTHORIZED USE (At least one must be <u>INITIALED</u> to receive SSNs.)</b><br><br>
    <input type="radio" name="section_b" value=""> Location of witnesses, parties, suspects or criminals;<br>
    <input type="radio" name="section_b" value=""> Location of non-custodial spouses allegedly owing child support and ex-spouses allegedly owing spousal support;<br>
    <input type="radio" name="section_b" value=""> Location of individuals alleged to have failed to pay taxes or other lawful debts;<br>
    <input type="radio" name="section_b" value=""> Identity verification;<br>
    <input type="radio" name="section_b" value=""> Other uses similar to those described above.<br>
    </div>
    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <input type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_NOW')" value="  I CERTIFY THE ABOVE  ">&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" onclick="send_event('MANAGE/SHOW_VERIFY_ACCOUNT')" value="   CANCEL   ">
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: qualified_access.tpl,v $ -->
