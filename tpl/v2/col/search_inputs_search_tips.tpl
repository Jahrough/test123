<!-- Start Tips/Promo section -->

<TMPL_UNLESS NAME="SEARCH_ERROR_MESSAGE">
   <TMPL_UNLESS NAME="RESULTS">

<div id="tips"></div>
<div id="tipsBot"></div>

<script>
    var randomnumber=Math.floor(Math.random()*8);
    
    var tipsMsgArray = new Array();
    tipsMsgArray[0] ='<h4>Search Tip</h4><p>Since ideally each SSN is connected to a single person, it is the best way to search for an individual.</p>';
    tipsMsgArray[1] ='<h4>Search Tip</h4><p>Research shows that most people move within a 50 mile radius. The radius function on the Person Search will allow you to search for a person within a 99 mile radius of an address.</p>';
    tipsMsgArray[2] ='<h4>Search Tip</h4><p>Did you know that the Deep Skip search will display household members when available?</p>';
    tipsMsgArray[3] ='<h4>Search Tip</h4><p>Did you know that Accurint gets feeds everyday from the Phone companies and updates phones EVERY DAY?  White page sources only update monthly and can be 90-120 days old.</p>';
    tipsMsgArray[4] ='<h4>Search Tip</h4><p>Did you know that the Phones Plus database contains over 382 Million cell phone numbers?</p>';
    tipsMsgArray[5] ='<h4>Please Note</h4><p>Remember that there are consequences to you and your company when inappropriate searches are performed.  This tool should not be used for curiosity or personal searches.  Regulated data can only be accessed for a legally permissible purpose.</p>';
    tipsMsgArray[6] ='<h4>Please Note</h4><p>Never share your User ID or Password(s). Remember that you are responsible for all searches performed through your User ID.</p>';
    tipsMsgArray[7] ='<h4>Please Note</h4><p>Search responsibly.   Searches can be subject to auditing.</p>';

    var tipsDiv = document.getElementById('tips');
    tipsDiv.innerHTML = tipsMsgArray[randomnumber];

</script>

    </TMPL_UNLESS>
</TMPL_UNLESS>

