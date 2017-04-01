<!-- begin research_tools.tpl -->
<html>
<head>
<title>Other Free Internet Research Tools</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">

<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>
<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF ENABLE_V2>
<div id="hd"><h2><a trackid="hdr_top_logo"></a></h2></div>
</TMPL_IF>

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
</TMPL_UNLESS>

<br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="myaccounttitle" align="center"><B>Other Free Internet Research Tools</B></td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="90%">
  <tr>
    <td class="smallfont1">
  <tr>
    <td class="smallfont1" align="left">To comply with disclosure rules, IRS users should not search public Internet sites using a Social Security Number.&nbsp; Search criteria such as name, address, phone number, etc. may be used.</td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.tollfreephone.com" target="_blank" title="Toll Free Numbers">Toll Free Numbers</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Locate toll free phone numbers searching by name or a<br>
    &nbsp; &nbsp; &nbsp;reverse lookup
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.whitepages.com" target="_blank" title="White Pages">White Pages</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Locate individuals -- contains data for Canadian providences<br>
    &nbsp; &nbsp; &nbsp;and the U.S.
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://zip4.usps.com/zip4/welcome.jsp" target="_blank" title="Zip Code">Zip Code</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Zip Code Lookup -- search by address, city or zip code<br>
    </td>
  </tr>
  <!--
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.fededirectory.frb.org/search.cfm" target="_blank" title="Bank Routing Numbers">Bank Routing Numbers</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Locate Bank Routing numbers / reverse lookup<br>
    </td>
  </tr>
  -->
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.brbpub.com/freeresources/pubrecsitesSearch.aspx?subcat=Find+Unclaimed+Funds" target="_blank" title="Unclaimed Funds">Unclaimed Funds</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Search Unclaimed Property databases for all 50 states<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.x-rates.com/cgi-bin/hlookup.cgi" target="_blank" title="Universal Currency Converter">Universal Currency Converter</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Convert US dollars to foreign currency or vice-versa<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
<!--
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://search.officer.com/agencysearch/" target="_blank" title="Law Enforcement Agency Search">Law Enforcement Agency Search</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Search for Law Enforcement Agencies in the U.S. and<br>
    &nbsp; &nbsp; &nbsp;Foreign Countries
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
-->
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.guidestar.org/" target="_blank" title="Nonprofits Search">Nonprofits Search</a></td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
<!--
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://babelfish.altavista.com/" target="_blank" title="Language Translator">Language Translator</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Translate words, phrases, or web pages to or from different<br>
    &nbsp; &nbsp; &nbsp;languages<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://silmaril.ie/cgi-bin/uncgi/acronyms/" target="_blank" title="Acronym Lookup">Acronym Lookup</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Search by acronym or word<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
-->
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.arin.net" target="_blank" title="IP addresses">IP addresses</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;American Registry for Internet Numbers<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.crimetime.com/online.htm" target="_blank" title="Black Book Online">Black Book Online</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Miscellaneous searches on multiple state and federal records<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://publicrecords.netronline.com" target="_blank" title="Netronline">Netronline</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Real Estate information -- some links may require a username and password<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
<!--
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.irs.gov/businesses/small/article/0,,id=104627,00.html" target="_blank" title="National Standards for Allowable Living Expenses">National Standards for Allowable Living Expenses</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;National and Local standards for allowable expenses when analyzing<br>
    &nbsp; &nbsp; &nbsp;Collection Information Statements<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
-->
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.countrycodes.com" target="_blank" title="Country Codes">Country Codes</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Locate a country code in order to place a call to a foreign country<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.archive.org" target="_blank" title="Archived Websites">Archived Websites</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;View what a website looked like in the past<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&#149;&nbsp;&nbsp;<a href="http://www.whois.net" target="_blank" title="Internet Domain Searches">Internet Domain Searches</a></td>
  </tr>
  <tr>
    <td class="smallfont1" valign="top">
    &nbsp; &nbsp; &nbsp;Search WHOIS directory for domain, keyword, or deleted domains<br>
    </td>
  </tr>
  <tr>
    <td class="unifont2" valign="top">&nbsp;</td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="90%">
  <tr>
    <td class="smallfont1">
    <b>Please note</b> that by clicking on any of the above links, you will leave the LexisNexis web site and enter a privately owned web site created, operated and maintained by a private business.
    <br><br>
    The information that this private business collects and maintains as a result of your visit to its web site may differ from the information that LexisNexis collects and maintains.&nbsp; (please see the LexisNexis web site privacy and security notice for privacy protections LexisNexis provides to web site visitors).
    <br><br>
    By linking to this private business, LexisNexis is not endorsing its products, services, or privacy or security policies.&nbsp; We recommend you review the business's information collection policy or terms and conditions to fully understand what information is collected by this private business.
    <br><br>
    </td>
  </tr>
</table>
</div>
</form>
</body>
</html>
<!-- end research_tools.tpl -->
