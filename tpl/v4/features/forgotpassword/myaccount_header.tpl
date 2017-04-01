    <script src="<TMPL_VAR NAME='JSPATH'>/forgotpassword.js"></script>

    <script>
    var IE4 = (document.all);
    var NS4 = (document.layers);
   /* 
    if (NS4) {
	document.captureEvents(Event.KEYPRESS);
	document.onkeypress = doKey;
    }
    else {
	document.onkeyup = doKey;
    }
    */
    function doKey(e) 
    {
	whichASC = (NS4) ? e.which : e.keyCode;
	whichKey = String.fromCharCode(whichASC).toLowerCase();

	switch (whichASC) {
	    case 13:
		click_first_button();	
	}
    }
    
    function click_first_button() {
	var f = document.forms[0];
	var found = 0;
	for (var i in f.elements) {
	    if (f[i].type == "button") {
		found = 1;
		break;
	    }
	}
	if (found) f[i].click();
    }
    
    var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
    var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;

    function go_back() {
	send_event('MYACCOUNT/SHOW_PREFERENCES');
    }
    </script>
 


