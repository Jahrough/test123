      <tr> <td align='center' colspan='2'><br>
      <table cellpadding="10" cellspacing="1" class="myaccountborder">
      <tr> <td align=center class="myaccountalert"><span class=unifont1><b>
        <!-- <TMPL_UNLESS UPDATE> Step 2 of 5 : </TMPL_UNLESS> -->Enter your Image phrase<br></b></span>
      </td> </tr> </table>
      <br></td></tr>

      <tr>
        <td colspan="2" class="unifont1">
	  
	  <table width='100%'>
	  <tr>
	     <td width=30></td>
	     <td align="center" valign=top><div id="skeyimg1"></div>
		<img  ID="skeyimg" name="skeyimg" src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&IG=<TMPL_VAR NAME=SKEY_SEL>" border="7" style="border-color:#<tmpl_var name=BORCOLOR>"  width="150" height="150">
	     <td width=25></td>
	     <td valign=top>
	     <table ><tr>
	     <td valign=top>
		<table border="0" cellpadding="10" cellspacing="1" class="myaccountborder" >
		<tr> <td  class="myaccountalert" valign=top><span class="unifont1">
               <b>1.</b> Please enter your own image phrase that best describes
	       the secure login image you have selected:<br><br>
	       <b>Note:</b> Your image phrase should be between 1 and 16 characters and not contain your password or userid.</span>
		</td></tr></table><br>
	        </td></tr>	
	       <tr><td align=left><table>	
		<tr>
		    <td valign=bottom align=left class=myaccountalert>
		    <input type=text name="PASSPHRASE" size="20" maxlength=16 tabindex=1>
		</tr>
		</td></table>
		</td></tr>

	      <tr> <td  colspan='2'><br>
	      <table border="0" cellpadding="10" cellspacing="1" class="myaccountborder">
	      <tr> <td  class="myaccountalert"><span class=unifont1>
		<b>2.</b> Please select a border color for your secure image:</span>
	      </td> </tr> </table><br>
	      </td></tr>

		<tr><td colspan=2 align=left>
		    <table border="0" cellpadding="0" cellspacing="0">
		    <tr>
		    <td bgcolor="#ff9900">&nbsp;</td>
		    <td bgcolor="#ffcc00">&nbsp;</td>
		    <td bgcolor="#ffffcc">&nbsp;</td>

		    <td rowspan="2" class="spacercell">&nbsp;</td>
		    <td bgcolor="#b21629">&nbsp;</td>
		    <td bgcolor="#ec5020">&nbsp;</td>
		    <td bgcolor="#ffa07a">&nbsp;</td>
		    <td rowspan="2" class="spacercell">&nbsp;</td>
		    <td bgcolor="#8c4416">&nbsp;</td>
		    <td bgcolor="#deb887">&nbsp;</td>
		    <td bgcolor="#ffea96">&nbsp;</td>
		    <td rowspan="2" class="spacercell">&nbsp;</td>

		    <td bgcolor="#006400">&nbsp;</td>
		    <td bgcolor="#99cc00">&nbsp;</td>
		    <td bgcolor="#e3efa8">&nbsp;</td>
		    <td rowspan="2" class="spacercell">&nbsp;</td>
		    <td bgcolor="#666600">&nbsp;</td>
		    <td bgcolor="#999934">&nbsp;</td>
		    <td bgcolor="#cccc66">&nbsp;</td>
		    </tr>
		    <tr>

		    <td><input name="BORCOLOR" value="ff9900" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="ffcc00" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="ffffcc" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="b21629" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="ec5020" type="radio" checked onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="ffa07a" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="8c4416" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="deb887" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="ffea96" type="radio" onClick="changeborder(this.value);"></td>


		    <td><input name="BORCOLOR" value="006400" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="99cc00" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="e3efa8" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="666600" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="999934" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="cccc66" type="radio" onClick="changeborder(this.value);"></td>
		    </tr>
		    </table>

		    <table border="0" id="colortableRow1" cellpadding="0" cellspacing="0" width="300">
		    <tr>
		    <td bgcolor="#0066cc">&nbsp;</td>
		    <td bgcolor="#66ccff">&nbsp;</td>
		    <td bgcolor="#ccffff">&nbsp;</td>
		    <td rowspan="2" >&nbsp;</td>
		    <td bgcolor="#17388f">&nbsp;</td>
		    <td bgcolor="#486ead">&nbsp;</td>

		    <td bgcolor="#88c4da">&nbsp;</td>
		    <td rowspan="2" >&nbsp;</td>
		    <td bgcolor="#5c145d">&nbsp;</td>
		    <td bgcolor="#9a2180">&nbsp;</td>
		    <td bgcolor="#e985b7">&nbsp;</td>
		    <td bgcolor="#f6cbdf">&nbsp;</td>
		    <td rowspan="2" >&nbsp;</td>
		    <td bgcolor="#333333">&nbsp;</td>
		    <td bgcolor="#878787">&nbsp;</td>

		    <td bgcolor="#c0c0c0">&nbsp;</td>
		    <td bgcolor="#ffffff">&nbsp;</td>
		    </tr>
		    <tr>
		    <td><input name="BORCOLOR" value="0066cc" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="66ccff" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="ccffff" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="17388f" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="486ead" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="88c4da" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="5c145d" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="9a2180" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="e985b7" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="f6cbdf" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="333333" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="878787" type="radio" onClick="changeborder(this.value);"></td>

		    <td><input name="BORCOLOR" value="c0c0c0" type="radio" onClick="changeborder(this.value);"></td>
		    <td><input name="BORCOLOR" value="ffffff" type="radio" onClick="changeborder(this.value);"></td>

		    </tr>
		    </table>

                </td></tr> 
                
		<tr><td colspan=2 height=15></td></tr>
		
		<tr><td align=left><table>
		 <tr>
		    <td class="unifont1" width=100>
		      <input type=hidden name="SHOW_SK_SEL" value=1>
		      <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('MANAGE/SITEKEY');">
		     </td>
             <td>
		        <input name="BUTTON" class="btn red-btn" type="button" value="Next" onClick="checkp(); ">
		    </td>
		 </tr>
		</table></td>
		</tr>
		</table>
	     </td>
	     <td width=50><script>document.forms[0].PASSPHRASE.focus();</script></td>
	  </tr>
	  <tr><td colspan=5 height=20></tr>
	</table>
	</td>
      </tr>
      <input type=hidden name="SKEY_SEL" value="<TMPL_VAR NAME=SKEY_SEL>">
      <input type=hidden name="CATG" value="<TMPL_VAR NAME=CATG>">
<script>
function checkp() {
    if( document.forms[0].PASSPHRASE.value == ''){
	alert('Please Enter a Passphrase for you image');
	document.forms[0].PASSPHRASE.focus();
	return false;
    } else {
	send_event('MANAGE/SAVE_SITEKEY');
	
    }
} 

function changeborder(sel) {
    document.getElementById("skeyimg").style.borderColor='#'+sel;
}
</script>
