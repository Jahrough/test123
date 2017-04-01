<!-- Start Tips/Promo section -->
<div id="tips">
	<h4>Search Tips</h4>
	<!--<p>Search using a <strong>Last Name</strong>, <strong>First Name</strong>, <strong>State</strong> and full or partial <strong>Date of Birth (DOB)</strong>. A DOB may be entered in several formats: mm/yy, mm/dd/yy, or yyyy alone.</p>
	<p>&nbsp;</p>-->
</div>
<div id="tipsBot"></div>

<script>
    var randomnumber=Math.floor(Math.random()*4);
    
    var tipsMsgArray = new Array();
    tipsMsgArray[0] ='<p>Since ideally each SSN is connected to a single person, it is the best way to search for an individual.</p>';
    tipsMsgArray[1] ='<p>Research shows that most people move within a 50 mile radius. The radius function on the Person Search will allow you to search for a person within a 99 mile radius of an address.</p>';
    tipsMsgArray[2] ='<p>Did you know that IRBsearch gets feeds everyday from the Phone companies and updates phones EVERY DAY?  White page sources only update monthly and can be 90-120 days old.</p>';
    tipsMsgArray[3] ='<p>Did you know that the Phones Plus database contains over 382 Million cell phone numbers?</p>';

    //alert("TIP	:" + tipsMsgArray[randomnumber]);
    var tipsDiv = document.getElementById('tips');
    tipsDiv.innerHTML = '<h4>Search Tips</h4>' + tipsMsgArray[randomnumber];
    //alert(tipsDiv.innerHTML);
</script>
