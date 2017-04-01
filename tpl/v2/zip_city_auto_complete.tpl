<TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
    <TMPL_IF ENABLE_ZIP_CITY_AUTOCOMPLETE>

<style>
.ui-autocomplete{
background:#c3c3c3;
width:250px;
top:-100px;
}

ul.ui-autocomplete{
list-style-type:none;
-webkit-padding-start: 0px;
padding:4px;
float:left;
font:12px Verdana;
}

ul.ui-autocomplete li{
margin:2px;
padding:2px;
cursor:pointer;
float:left;
width:98%;
}

ul.ui-autocomplete li:hover{
color:white;
}


.ui-widget-content {
border: 1px solid #aaaaaa;
color: #222222;
}

</style>
<script>

	$j(function() {
        $j('#ZIP').autocomplete({
            source: function (request, response) {
                var _last_is_good = true;
                if (request.term.match(/[^0-9]/)) {
                    if (request.term.match(/[^0-9]$/)) {
                        _last_is_good = false;
                    }
                    var _zip = $j("#ZIP").val().replace(/[^0-9]/g,'');
                    $j("#ZIP").val(_zip);
                    request.term = $j("#ZIP").val();
                }
                if (_last_is_good && request.term.length >= this.option('minLength')) {
                    $j.ajax({
                        type: "POST",
                        url: document.forms[0].action,
                        data: {EVENT: 'DYNAMIC_DESKTOP/AC_ZIP', SESSION_ID: LN.misc.getSessionId(), CSRF_TOKEN: LN.misc.getCSRFToken(), term: request.term}
                    }).done(function(msg) {
                        if (msg.success) {
                            response($j.map(msg.results, function (obj) {
                                return {
                                    label: obj.z + ", " + obj.c + ", "+ obj.s,
                                    value: obj.z,
                                    z: obj.z,
                                    s: obj.s,
                                    c: obj.c,
                                };
                            }));
                        }
                    });
                }
            },
            minLength: 3,
            delay: 100,
            select: function( event, ui ) {
                $j( "#ZIP" ).val(ui.item.z);
                $j( "#CITY" ).val(ui.item.c.toUpperCase());
                $j( "#STATE" ).val(ui.item.s.toUpperCase());
			}
        });


        $j('#CITY').autocomplete({
            source: function (request, response) {
                var _last_is_good = true;
                if (request.term.match(/[^'A-Za-z \.\-\&]/)) {
                    if (request.term.match(/[^'A-Za-z \.\-\&]$/)) {
                        _last_is_good = false;
                    }
                    var _city = $j("#CITY").val().replace(/[^'A-Za-z \.\-\&]/g,'');
                    $j("#CITY").val(_city);
                    request.term = $j("#CITY").val();
                }
                if (_last_is_good && request.term.length >= this.option('minLength')) {
                    $j.ajax({
                        type: "POST",
                        url: document.forms[0].action,
                        data: {EVENT: 'DYNAMIC_DESKTOP/AC_CITY', SESSION_ID: LN.misc.getSessionId(), CSRF_TOKEN: LN.misc.getCSRFToken(), term: request.term}
                    }).done(function(msg) {
                        if (msg.success) {
                            response($j.map(msg.results, function (obj) {
                                return {
                                    label: obj.c + ", "+ obj.s,
                                    value: obj.c,
                                    s: obj.s,
                                    c: obj.c,
                                };
                            }));
                        }
                    });
                }
            },
            minLength: 2,
            delay: 100,
            select: function( event, ui ) {
                $j( "#CITY" ).val(ui.item.c.toUpperCase());
                $j( "#STATE" ).val(ui.item.s.toUpperCase());
			}
        });

	});
</script>

    </TMPL_IF>
</TMPL_IF>
