<TMPL_INCLUDE NAME="ann_head.tpl">

<input type=hidden id="ANNOUNCEMENT_MSG" name="ANNOUNCEMENT_MSG" value="XXMSGIDXX">
<input type=hidden id="company_id" name="CompanyID" value="XXCOMPANYIDXX">
<input type=hidden id="market_category" name="MarketCategory" value="XXMARKETSXX">
<input type=hidden id="date_created" name="DateCreated" value="XXDATEXX">
<input type=hidden id="expire_date" name="ExpirationDate" value="XXEXPXX">
<input type=hidden id="announcement_list_title" name="AnnounceTitle"  value="XXTITLEXX">

<!-- EDIT FROM HERE DOWN -->
<div id="announce_body">
   <strong class="strong-message">XXTITLEXX</strong>
   <span class="textGray font-10">XXPOSTEDXX</span>
   <p>  INSERT MESSAGE INFORMATION HERE </p>
   <p> NOTE THIS IS A TEMPLATE. THE CONTENT OF THE PAGE SHOULD BE UPDATED AFTER GENERATION. </p>
   <p> ALSO NOTE THE INFORMATION ABOVE THE 'EDIT FROM HERE DOWN LINE' IS NECESSARY TO DISPLAY </p>
   <p> THE ANNOUNCEMENT TO THE CORRECT APPLICATION, COMPANIES, .. AND MUST NOT BE DELETED. </p>
   <p> YOU CAN ADD LIST INFORMATION AS FOLLOWS:
      <ul>
         <li>Item 1</li>
         <li>Item 2</li>
         <li>Item 3</li>
         <li>Item 4</li>
         <li>Item 5</li>
      </ul>
   </p>
   <p>   ADD MORE PARAGRAPH INFOMATION HERE.   </p>
   <p> YOU CAN ADD LINKS TO THE DATA AS FOLLOWS. Click <a href="https://lexisnexiscenters.webex.com/lexisnexiscenters/onstage/g.php?PRID=168460dce181939d1918ee77b7ff7824" target="_new">here</a> AS AN EXAMPLE.</p>
   <p id="message-footer">
      <span>Questions about this new report?</span>
      <br/>
      <span>Call 1.866.858.7246 or contact your LexisNexis account representative.</span>
   </p>
</div>
<!-- EDIT FROM HERE UP -->

<TMPL_INCLUDE NAME="ann_foot.tpl">
