<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rating & Comments</title>
<script>
function clearbox(f)
{
    var feedback_form = document.forms.USER_FEEDBACK;
    if(feedback_form.USER_COMMENTS.value == 'Please enter your comments about this web page here.'){
    feedback_form.USER_COMMENTS.value='';
    }
}
</script>

<script src="<tmpl_var name='JSPATH'>/ln/lexis.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

<script src="<tmpl_var name='JSPATH'>/v2/user_feedback.js"></script>
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="USER_FEEDBACK" id="USER_FEEDBACK">

<div id="hd">
  <h2><a trackid="hdr_top_logo" href="index.htm">LexisNexis Accurint for Collections</a></h2>
</div>

<div id="ratethispage">
<table width="650" align="center" cellpadding="5" cellspacing="0" id="ratethispagePop" border="0">

  <tr>
    <td colspan="3">
     <div id="searchResults" style="padding-left:10px;"><h2>Page Rating &amp; Comments</h2>
      <p class="smallblack">Collection Professionals - we want to hear from you! Please take a moment to give us your opinion on the New Accurint Look.</p>
     </div>    
    </td>
  </tr>

  <tr>
    <td valign="top" style="padding-left:10px;"><strong>Page Rating</strong><br />
    
      <table width="98%" border="0" cellpadding="2" cellspacing="0">
        <tr>
          <td rowspan="2" valign="top" nowrap="nowrap" bgcolor="#F5F5F3" class="text11" title="Content">Page Content</td>
          <td width="12" valign="top" bgcolor="#F5F5F3"><input name="content" type="radio" value="1" id="c1" title="Poor"/></td>
          <td width="12" valign="top" bgcolor="#F5F5F3"><input name="content" type="radio" value="2" id="c2" title="Below Average"/></td>
          <td width="12" valign="top" bgcolor="#F5F5F3"><input name="content" type="radio" value="3" id="c3" title="Average"/></td>

          <td width="12" valign="top" bgcolor="#F5F5F3"><input name="content" type="radio" value="4" id="c4" title="Good"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="content" type="radio" value="5" id="c5" title="Excellent"/></td>
        </tr>
        <tr align="center">
          <td height="20" colspan="2" align="left" valign="top" bgcolor="#F5F5F3" class="smallblack">Poor</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">- +</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">&nbsp;</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">Excellent</td>

        </tr>
        <tr>
          <td rowspan="2" valign="top" class="text11" title="Design">Page Design </td>
          <td valign="top"><input name="design" type="radio" value="1" id="d1" title="Poor"/></td>
          <td valign="top"><input name="design" type="radio" value="2" id="d2" title="Below Average"/></td>
          <td valign="top"><input name="design" type="radio" value="3" id="d3" title="Average"/></td>
          <td valign="top"><input name="design" type="radio" value="4" id="d4" title="Good"/></td>
          <td valign="top"><input name="design" type="radio" value="5" id="d5" title="Excellent"/></td>

        </tr>
        <tr align="center">
          <td height="20" colspan="2" align="left" valign="top" class="smallblack">Poor</td>
          <td valign="top" class="smallblack">- +</td>
          <td valign="top" class="smallblack">&nbsp;</td>
          <td valign="top" class="smallblack">Excellent</td>
        </tr>

        <tr>
          <td rowspan="2" valign="top" bgcolor="#F5F5F3" class="text11" title="Usability">Ease of Use</td>
          <td valign="top" bgcolor="#F5F5F3"><input name="usability" type="radio" value="1" id="u1" title="Poor"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="usability" type="radio" value="2" id="u2" title="Below Average"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="usability" type="radio" value="3" id="u3" title="Average"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="usability" type="radio" value="4" id="u4" title="Good"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="usability" type="radio" value="5" id="u5" title="Excellent"/></td>
        </tr>

        <tr align="center">
          <td height="20" colspan="2" align="left" valign="top" bgcolor="#F5F5F3" class="smallblack">Poor</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">- +</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">&nbsp;</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">Excellent</td>
        </tr>
        <tr>

          <td rowspan="2" valign="top" class="text11" title="Overall">Page - Overall</td>
          <td valign="top"><input name="overall" type="radio" value="1" id="o1" title="Poor"/></td>
          <td valign="top"><input name="overall" type="radio" value="2" id="o2" title="Below Average"/></td>
          <td valign="top"><input name="overall" type="radio" value="3" id="o3" title="Average"/></td>
          <td valign="top"><input name="overall" type="radio" value="4" id="o4" title="Good"/></td>
          <td valign="top"><input name="overall" type="radio" value="5" id="o5" title="Excellent"/></td>
        </tr>
        <tr align="center">

          <td height="20" colspan="2" align="left" valign="top" class="smallblack">Poor</td>
          <td valign="top" class="smallblack">- +</td>
          <td valign="top" class="smallblack">&nbsp;</td>
          <td valign="top" class="smallblack">Excellent</td>
        </tr>
        <tr>
          <td rowspan="2" valign="top" bgcolor="#F5F5F3" class="text11" title="Site">Entire Site</td>

          <td valign="top" bgcolor="#F5F5F3"><input name="site" type="radio" value="1" id="s1" title="Poor"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="site" type="radio" value="2" id="s2" title="Below Average"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="site" type="radio" value="3" id="s3" title="Average"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="site" type="radio" value="4" id="s4" title="Good"/></td>
          <td valign="top" bgcolor="#F5F5F3"><input name="site" type="radio" value="5" id="s5" title="Excellent"/></td>
        </tr>
        <tr align="center">
          <td height="20" colspan="2" align="left" valign="top" bgcolor="#F5F5F3" class="smallblack">Poor</td>

          <td valign="top" bgcolor="#F5F5F3" class="smallblack">- +</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">&nbsp;</td>
          <td valign="top" bgcolor="#F5F5F3" class="smallblack">Excellent</td>
        </tr>
      </table>
    </td>

    <td valign="top"><strong>Comments</strong><br />
        <textarea name="USER_COMMENTS" cols="55" rows="7" wrap="virtual" class="text11"  onClick="clearbox(this)">Please enter your comments about this web page here.</textarea>
       <br />
    <table width="98%" border="0" cellpadding="3" cellspacing="1">
        <tr>
          <td nowrap="nowrap" class="smallblack">How likely are you to recommend
            the redesigned Accurint&#174;<br />
            for
          Collections to others?</td>
        </tr>
        <tr>
          <td><select name="recommend" class="text11">

            <option value="Recommendation not Provided">Please choose one...</option>
            <option value="Highly likely">Highly likely</option>
            <option value="Somewhat likely">Somewhat likely</option>
            <option value="Unsure">Unsure</option>
            <option value="Somewhat unlikely">Somewhat unlikely</option>
            <option value="Highly unlikely">Highly unlikely</option>

          </select></td>
        </tr>
        <tr>
          <td class="medblack"><strong>Email:</strong><br />
          <input  maxlength="60" name="email_address" type="text" size="35" /></td>
      </tr>
        <tr>
          <td class="medblack">
              <input type="button" name="Submit" value="Submit Ratings &amp; Comments" onClick="if(!form_validate()) return false;submit_user_feedback()"/>
	  </td>
        </tr>
      </table>    </td>
  </tr>
</table>

<p>&nbsp;</p>
<p>
</p>

</div>

<div id="submitFeedback" style="position:absolute;top:175px;left:200px;z-index:100;display:none;">
<img id="sWimg" src="<TMPL_VAR NAME=IMGPATH>/bg_sending_data.gif" alt="Submitting Feedback.." />
</div>

<div id="submitFeedbackMsg" style="position:absolute;top:100px;left:75px;z-index:100;display:none;">
<table width="550" align="center" cellpadding="5" cellspacing="0" id="ratethispagePop" border="0">
  <tr>
    <td colspan="3">
     <div id="searchResults" style="padding-left:10px;">
      <p class="smallblack">Your ratings and comments have been sent to our development team.  Thank you for your feedback.</p>
     </div>    
    </td>
  </tr>
  <tr>
    <td colspan="3">
     <div id="searchResults" style="padding-left:10px;">
	  <p align="center"><a href="javascript:window.close();"><img src="<TMPL_VAR NAME=IMGPATH>/btnCloseWin.gif" alt="Close Window" name="submit" width="84" height="17" border="0" id="submit" /></a></p>
     </div>    
    </td>
  </tr>  
</table>
</div>

<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT type=hidden NAME="PAGE_INFO" VALUE="<TMPL_VAR NAME=PAGE_INFO>">
<INPUT type=hidden NAME="PAGE_CONTENT" VALUE="">
<INPUT type=hidden NAME="PAGE_DESIGN" VALUE="">
<INPUT type=hidden NAME="PAGE_USABILITY" VALUE="">
<INPUT type=hidden NAME="PAGE_OVERALL" VALUE="">
<INPUT type=hidden NAME="PAGE_SITE" VALUE="">
<INPUT type=hidden NAME="EVENT" VALUE="MISC/SUBMIT_RATE_THIS_PAGE">
<INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_MISC>">

</form>
</body>
</html>
