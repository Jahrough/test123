    <!-- Begin v3/court/header -->
    <!-- FOOTER RIGHT "$PAGE of $PAGES" -->

    <table width=700 align="center" border=0 cellpadding=0 cellspacing=0>
      <tr>
        <td>
	  <table width="100%">
	   <tr>
	     <td align=left valign=top width="65%">

	       <!-- begin top-left block -->
	       <table border=0 width="100%" cellpadding=0 cellspacing=0>
		 <tr>
		   <td>
		     <img src="<TMPL_VAR NAME=IMGPATH>/lexis.gif" width="170" height="40" alt="Accurint">
		   </td>
	         </tr>
	         <tr>
		   <td>
		     PO Box 7247-6157<br>
		     Philadelphia, PA. 19170-6157<br>
		     (866) 528-0570<br>
                     <font size=-1>
                     LexisNexis, a division of Reed Elsevier Inc.<br>
                     For itself or its affiliates<br>
                     </font>
		   </td>
		 </tr>
	       </table>
	       <br>
	       <table border=0 width="100%" cellpadding=3 cellspacing=0>
	         <tr>
		   <td><b>To:</b></td>
		 </tr>
		 <tr>
		   <td>
		     <TMPL_VAR NAME=BILL_COMP_NAME><br>
		     Attn: <TMPL_VAR NAME=BILLNAME><br>
		     <TMPL_VAR NAME=BILLADDR1><br>
		     <TMPL_IF NAME=BILLADDR2><TMPL_VAR NAME=BILLADDR2><br></TMPL_IF>
		     <TMPL_VAR NAME=BILLCITY>, <TMPL_VAR NAME=BILLSTATE> <TMPL_VAR NAME=BILLZIP><br>
		   </td>
		 </tr>
	       </table>
	       <!-- end top-left block -->

	     </td>
             <td align="center" valign="top" width="1%">&nbsp;</td>
	     <td align=right valign=top width="34%">

	       <!-- begin top-right block -->
               <table class="invoicetable" width="100%">
                <tr>
                    <td class="heading" colspan="2" align="center" valign="middle">
                        <b><font size="+2">Invoice</font></b>
                    </td>
                </tr>
                <tr class="alt">
                    <td nowrap="nowrap">Due Date</td>
                    <td nowrap="nowrap"><TMPL_VAR NAME="DUE_DATE"></td>
                </tr>
                <tr class="alt">
                    <td nowrap="nowrap">Amount Due</td>
                    <td nowrap="nowrap"><TMPL_VAR NAME="AMOUNT_DUE"></td>
                </tr>
                <tr>
                    <td nowrap="nowrap">Order Number</td>
                    <td nowrap="nowrap"><TMPL_VAR NAME="SUBJECT_ID"></td>
                <tr>
                <tr>
                    <td nowrap="nowrap">Order Date</td>
                    <td nowrap="nowrap"><TMPL_VAR NAME="INVOICE_DATE"></td>
                </tr>
                <tr>
                    <td nowrap="nowrap">Account Number</td>
                    <td nowrap="nowrap"><TMPL_VAR NAME="ACCOUNT_NUMBER"></td>
                </tr>
                <tr>
                    <td nowrap="nowrap">Representative</td>
                    <td nowrap="nowrap"><TMPL_VAR NAME="ACCOUNT_REP"></td>
                </tr>
               </table>
	       <br>
	       <table border=0 width="100%" cellpadding=3 cellspacing=0>
	         <tr>
                    <td>
                        <p align="center">
                        <font size=-1>
                            <b>
                            Questions about your bill?<br>
                            (866) 528-0570<br>
                            billing@lexisnexis.com<br>
                            </b>
                        </font>
                        </p>
                    </td>
		 </tr>
	       </table>

	       <!-- end top-right block -->

	     </td>
	   </tr>
           <tr><td colspan="3">&nbsp;</td></tr>
           <tr><td colspan="3"><b><i>New Activity</i></b></td></tr>
           <tr>
	     <td align=left valign=top>
	        <table border=1 width="100%" cellpadding=0 cellspacing=0 align="center">
                    <tr>
                      <td align="center"><b>User</b></td>
                      <td align="center"><b>Reference</b></td>
                      <td align="center"><b>Subject</b></td>
                    </tr>
                    <tr>
                      <td align="center"><TMPL_VAR NAME=USER>&nbsp;</td>
                      <td align="center">&nbsp;<TMPL_VAR NAME=REFERENCE_CODE></td>
                      <td align="center" nowrap>&nbsp;<font size=-1><TMPL_VAR NAME=SUBJECT></font></td>
                    </tr>
	        </table>
             </td>
             <td align=center>&nbsp;</td>
             <td align=right>&nbsp;</td>
	   </tr>
	  </table>
	</td>
      </tr>
    </table>
    <!-- end header -->
