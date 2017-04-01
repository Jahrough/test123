<html>

  <head>
    <meta name="AUTHOR" CONTENT="Seisint Inc.">
    <meta name="GENERATOR" CONTENT="Seisint Inc.">
    <meta name="DOCNUMBER" CONTENT="<TMPL_VAR NAME=SUBJECT_ID>">
    <meta name="SUBJECT" CONTENT="Invoice - Court Search Invoice <TMPL_VAR NAME=SUBJECT_ID>">
  </head>

  <body >

    <TMPL_INCLUDE NAME="invoice_header.tpl">

    <TMPL_INCLUDE NAME="invoice_item_header.tpl">

			<TMPL_LOOP NAME=DESC_DATA>
			<tr>
			  <td align="center"><TMPL_IF NAME=state><font size=-1><TMPL_VAR NAME=state></font><TMPL_ELSE>&nbsp;</TMPL_IF></td>
			  <td align="left"><font size=-1>&nbsp;<TMPL_VAR NAME=county></font></td>
			  <td align="left"><font size=-1>&nbsp;<TMPL_VAR NAME=report_type></font></td>
			  <td align="right"><font size=-1><TMPL_VAR NAME=price>&nbsp;</font></td>
			</tr>
			<TMPL_IF NAME=page_break>
			  <TMPL_INCLUDE NAME="invoice_page_break.tpl">
			</TMPL_IF>
			</TMPL_LOOP>

			<TMPL_IF NAME=TAIL_BREAK>
			  <TMPL_INCLUDE NAME="invoice_page_break.tpl">
			</TMPL_IF>

			<tr>
			  <td>&nbsp;</td>
			  <TMPL_IF COURT_NONPREPAID>
			    <td colspan=2  align="right"><font size=-1>&nbsp;<br>&nbsp;</font></td>
			    <td align="right"><font size=-1>&nbsp;</font></td>
			  <TMPL_ELSE>
			    <td colspan=2  align="right"><font size=-1>Credit Card payment :<br>&nbsp;</font></td>
			    <td align="right"><font size=-1><TMPL_VAR NAME=CC_CREDIT>&nbsp;</font></td>
			  </TMPL_IF>
			</tr>
			<tr>
			  <td>&nbsp;</td>
			  <td colspan=2 align="center" valign="middle">
			    <TMPL_IF COURT_NONPREPAID>
			      &nbsp;
			    <TMPL_ELSE>
			      <table width="100%" cellpadding=3 cellspacing=0 border=1>
				<tr>
				  <td align="center" valign="middle" bgcolor="#cfcfcf">
				    <font size=-1>
				      <u>Credit Card Payment Received</u><br>
				      This invoice has been charged to your credit card. 
				      This is for informational purposes.<br>
				      <b><em>Please do not mail payment for this invoice</em></b>
				    </font>
				  </td>
				</tr>
			      </table>
			    </TMPL_IF>
			  </td>
			  <td>&nbsp;</td>
			</tr>
            <tr>
                <td colspan="4"><hr/></td>
            </tr>
	  </table>
	</td>
        <td align="center" valign="top" width="1%">&nbsp;</td>
        <td width="34%" style="padding-left: 20px;">
          <font size=-1>
          <i>
              To view Court Search order details/results:<br>
              1. Log on to http://www.accurint.com<br>
              2. Go to "Report Manager" on the Main Menu<br>
              <TMPL_IF NAME="SHOW_ONLINE_REPORTS">  
              </TMPL_IF>
              3. Click on "Court Search Results" Button.<br>
              Note: Only System Administrators can view account details<br>
          </i>
          </font>
        </td>
        </tr></table></td>
      </tr>
    </table>

    <!-- Begin v3/court/footer -->
    <table width=700 align="center" border=0 cellpadding=0 cellspacing=0>
      <tr>
        <td><table width="100%"><tr>
        <td align="left" width="65%">
	  <table cellpadding=0 cellspacing=0 width="100%">
	    <tr>
	      <td align="center" valign="middle" width="85%"><b>Total Due</b></td>
	      <td align="center" valign="top" width="15%"><b><TMPL_VAR NAME=AMOUNT_DUE></b></td>
	    </tr>
	  </table>
	</td>
        <td align"right" width="35%">&nbsp;</td>
      </tr>
      <tr><td colspan="2">&nbsp;</td></tr>
      <tr><td colspan="2">&nbsp;</td></tr>
      <tr>
        <td style="text-align: left; color: red; padding-left: 80px; padding-right: 80px; font-weight: bold;">Please include your full invoice number on all remittance to ensure proper credit.</td>
        <td style="font-weight: bold; padding-left: 10px;">
            <font size=-1>
            Please Remit Payment To:<br>
            <TMPL_IF NAME="CP_ACCOUNT">
            LexisNexis Risk Solutions GA Inc.
            <TMPL_ELSE>
            LexisNexis Risk Data Management Inc.<br>
            </TMPL_IF>
            Account # <TMPL_VAR NAME="ACCOUNT_NUMBER"><br>
            PO Box 7247-6157<br>
            Philadelphia, PA 19170-6157<br>
            </font>
        </td>
        </tr></table></td>
      </tr>
      <tr><td>&nbsp;</td></tr>
      <tr>
        <td align="left">
        <font size=-1>
        <TMPL_IF NAME="CP_ACCOUNT">
            LexisNexis Risk Data Management INc. TIN 65-0852445
        <TMPL_ELSE>
            LexisNexis Risk Solutions FL Inc. TIN 41-1815880
        </TMPL_IF>
        </font>
        </td>
      </tr>
    </table>
    <!-- end footer -->

  </body>
</html>
