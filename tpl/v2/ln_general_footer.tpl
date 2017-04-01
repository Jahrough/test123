<TMPL_IF IRB>
<style type="text/css">
#dynfooter { position:fixed; left: 0; bottom:0; CLEAR:both; BORDER-TOP:#ccc 2px solid; background-repeat:no-repeat; background-position:left top; background-color:#FFFFFF; background-image:url(/bps/images/v2/footer_bkg.gif); padding-left:15px; padding-top:2px; padding-bottom:2px; width:100%; z-index:1002; }
</style>
<!--[if IE]>
<style type="text/css">
* html #dynfooter {
    position:absolute;
    _top:expression((0-(dynfooter.offsetHeight)+(document.documentElement.clientHeight ? document.documentElement.clientHeight : document.body.clientHeight)+(ignoreMe = document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop))+'px');
}
</style>
<![endif]-->
<BR/><BR/><BR/>
<div id="dynfooter">
<table border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="165"><a href="http://www.irbsearch.com" target="_blank"><img src="<TMPL_VAR NAME=IMGPATH>/irb/LogoCore.gif" alt="" width="126" height="25" border="0"></a></td>
<td style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:8pt;"><a href="http://irbsearch.com/about_irbsearch.shtml" target="_blank">About IRBsearch</a> <span>|</span> <a href="http://irbsearch.com/terms-conditions.html" target="_blank">Terms and Conditions</a> <span>|</span> <a href="http://irbsearch.com/privacy_policy.shtml" target="_blank">Privacy Policy</a> <span>|</span> <a href="http://irbsearch.com/legal_notice.shtml" target="_blank">Copyright &copy;</a> 2006 - <script>document.write(new Date().getFullYear());</script> IRBsearch, LLC. All rights reserved.</td>
<!-- LN Content if utilized.
<td width="165"><a href="http://www.lexisnexis.com" target="_blank"><img src="<TMPL_VAR NAME=IMGPATH>/LogoCore.gif" alt="" width="126" height="25" border="0"></a></td>
<td style="font-family:Verdana, Arial, Helvetica, sans-serif; font-size:8pt;"><a href="http://www.lexisnexis.com/about/" target="_blank">About LexisNexis</a> <span>|</span> <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved.</td>
-->
</tr>
</table>
</div>
<TMPL_ELSE>
<div id="footer">
      <a href="#" ><img src="<TMPL_VAR NAME=IMGPATH>/LogoCore.gif" alt="" width="126" height="25" border="0"/></a>
      <p><a href="http://www.lexisnexis.com/about/" target="_blank">About Us</a> <span>|</span> <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a></p>
      <p><a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights reserved.</p>
</div>
</TMPL_IF>


