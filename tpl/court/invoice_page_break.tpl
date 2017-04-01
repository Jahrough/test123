            <tr>
                <td colspan="4"><hr/></td>
            </tr>
	  </table>
	</td>
        <td align="center" valign="top" width="1%">&nbsp;</td>
        <td width="34%" style="padding-left: 10px;">
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

    <!-- NEW PAGE -->
    <TMPL_INCLUDE NAME="invoice_header.tpl">
    <TMPL_INCLUDE NAME="invoice_item_header.tpl">

