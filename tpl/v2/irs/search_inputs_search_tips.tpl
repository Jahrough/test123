<!-- Start Tips/Promo section -->

<TMPL_UNLESS NAME="SEARCH_ERROR_MESSAGE">
   <TMPL_UNLESS NAME="RESULTS">

<div id="tips"></div>
<div id="tipsBot"></div>

<script>
    var randomnumber=Math.floor(Math.random()*4);
    
    var tipsMsgArray = new Array();
    tipsMsgArray[0] ='<h4>Search Tips</h4><p>Since ideally each SSN is connected to a single person, it is the best way to search for an individual.</p>';
    tipsMsgArray[1] ='<h4>Search Tips</h4><p>Research shows that most people move within a 50 mile radius. The radius function on the Person Search will allow you to search for a person within a 99 mile radius of an address.</p>';
    tipsMsgArray[2] ='<h4>Search Tips</h4><p>Did you know that Accurint gets feeds everyday from the Phone companies and updates phones EVERY DAY?  White page sources only update monthly and can be 90-120 days old.</p>';
    tipsMsgArray[3] ='<h4>Search Tips</h4><p>You can search over 250 million records of people connected with businesses to locate your subject in the People at Work search.</p>';

    var tipsDiv = document.getElementById('tips');
    tipsDiv.innerHTML = tipsMsgArray[randomnumber];
</script>

    </TMPL_UNLESS>
</TMPL_UNLESS>

