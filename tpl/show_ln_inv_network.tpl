<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>LexisNexis Investigator Network</title>
    <style>
      body {
          background-color: white;
          margin: 0 0; padding: 0 0;
      }
    </style>
    <script type="text/javascript">
	function create_nfe(iform, en, ev){
	    var n = document.createElement('input');
	    n.setAttribute('type','hidden');
	    n.setAttribute('name',en);
	    n.setAttribute('id',en);
	    n.setAttribute('value',ev);
	    iform.appendChild(n)
	    return n;
	}
	function goto_ln_inv_network(){
	    var sform = document.createElement('FORM');
	    document.body.appendChild(sform);
	    sform.method = 'POST';
	    sform.action = '<TMPL_VAR "LN_INV_NETWORK_URL">';
	    <TMPL_LOOP  NAME=LOOP_DATA>
	      create_nfe(sform, '<TMPL_VAR name>', '<TMPL_VAR value>');
	    </TMPL_LOOP>
	    sform.submit();
	}
    </script>
  </head>
  <body onload="goto_ln_inv_network()">
  <!--body-->
  </body>
</html>
