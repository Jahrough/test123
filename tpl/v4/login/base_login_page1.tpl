<!-- begin login/base_login_page1.tpl -->
<h2>STEP 1 of 2:</h2>
<p class="message">Enter your <strong>ID</strong> and <strong>Security Code</strong> below and click <strong>"Next."</strong></p>

<input type=hidden name=_ST value=''>

<table>
    <tr>
		<td class="leftCol">ID:</td>
		<td class="rightCol">
			<input onfocus="this.className='focus'" onblur="this.className='normal'" tabindex="1" type="text" name="LOGINID" maxlength="20" autocomplete="off">
		</td>
	</tr>
     
    <tr>
        <td/>
		<td class="rightCol">
			<img name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" alt="Enter the verification characters below:" title="Enter the verification characters below:">
		</td>
    </tr>
	<TMPL_IF SHOW_SOUND_LINK>
		<tr>
			<td/>
			<td class="rightCol">
				<a class="verification" href="#" onClick="javascript:sound_win(); return false;">Listen to Numbers</a>
			</td>
		</tr>
	</TMPL_IF>
    <tr>
        <td class="leftCol">Security Code:</td>
        <td class="rightCol">
			<input onfocus="this.className='focus'" onblur="this.className='normal'" tabindex="2" type="text" name="_T" autocomplete="off" onkeyup="javascript:check_pwd()">
		</td>
    </tr>
	<tr>
		<td/>
		<td class="rightCol message">Enter the sequence of numbers displayed above.</td>
	</tr>
	<tr>
		<td/>
		<td class="rightCol">
			<input tabindex="3" type="image" src="<TMPL_VAR NAME=IMGPATH>/login/next-button.gif" name="NEXT" Value="Next >">
		</td>
	</tr>
</table>
<TMPL_INCLUDE NAME=v4/login/base_login_help.tpl>
<!-- end login/base_login_page1.tpl -->
