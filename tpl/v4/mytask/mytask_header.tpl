<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="panel task-nav-tabs">
                <div class="panel-heading">
                        <ul class="nav nav-tabs" id='mthead'>
                            <!--<li class="active"><a href="#tab1danger" data-toggle="tab">Danger 1</a></li>
                            <li><a href="#tab2danger" data-toggle="tab">Danger 2</a></li>
                            <li><a href="#tab3danger" data-toggle="tab">Danger 3</a></li>
                            <li class="dropdown">
                                <a href="#" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#tab4danger" data-toggle="tab">Danger 4</a></li>
                                    <li><a href="#tab5danger" data-toggle="tab">Danger 5</a></li>
                                </ul>
                            </li> -->
                        </ul>
                </div>
                <div class="panel-body mtpanel">
                    <div class="tab-content" id='mtbody'>

                        <!--<div class="tab-pane fade in active" id="tab1danger">Danger 1</div>
                        <div class="tab-pane fade" id="tab2danger">Danger 2</div>
                        <div class="tab-pane fade" id="tab3danger">Danger 3</div>
                        <div class="tab-pane fade" id="tab4danger">Danger 4</div>
                        <div class="tab-pane fade" id="tab5danger">Danger 5</div> -->
                    </div>
                </div>
            </div>
        </div>
	</div>
</div>

<div class="progress hidden" id="plswait">
  <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 55%">
    <span class="sr-only">55% Complete</span>
  </div>
</div>

<div class="panel panel-danger hidden" id="hpanel">
    <div class="panel-heading">
        <h4 class="panel-title">Show Instructions</h4>
        <span id='shhelp' class="pull-right clickable cursor-pointer"><i class="glyphicon glyphicon-chevron-up"></i></span>
    </div>
    <div class="panel-body">
            <b> </b><br/>
            <p id='srhelp' class='more'> </p>
            <h5 id='rrhelp' class='more'> </h5>
    </div>
</div>   

<script type="text/javascript">
    var sdata = JSON.parse('<tmpl_var SDATA>');
    var results = Object();
    
    $(function(){   

        handleHelpPanel();
        var success = function(data,stat,x,i){
               var resp         = $(data);
               var tmp = resp.find('body').html();

               $('#tab'+i).empty();
               $('<iframe>',{id: 'iftab'+i, height: '800px', width: '100%'}).appendTo('#tab'+i).contents().find('body').append(tmp);
        };   

        var populate = function(i){
             var $li = $('<li/>').append( $('<a>', {"href": '#tab'+i, "id": 'mtitle'+i ,'data-toggle': 'tab'}).text( sanit(sdata[i]['name']) ));
             if(i==0) $li.addClass('active'); 
             $('#mthead').append( $li );

             var $div = $('<div>',{"class": 'tab-pane fade', "id": 'tab'+i} ).html( '<p>Fetching ' + sdata[i]['name'] + ' Results</p>');
             if(i==0) $div.addClass('in active');
             $div.append($('#plswait').clone().removeClass('hidden'));
             $('#mtbody').append($div);

             sdata[i]['params']['EVENT'] = sdata[i]['event'];
             sdata[i]['params']['MID']   = '<tmpl_var MID>';
             sdata[i]['params']['PSID']  = '<tmpl_var PSID>';
             sdata[i]['params']['MYTASK_INDEX']  = i;
             console.log('going for ajax tab'+ i );

             $iframe = $('<iframe>',{"id": 'iftab'+i, "name": 'iftab'+i, height: '800px', width: '100%'}).appendTo('#tab'+i);   
             $iframe.on('load', function(){fload(i);});
             var loc = window.location.href;
             var lre = /(.*)\/(.*)/;
             if(sdata[i]['event'].match(/REPORT/)){
                var l = loc.replace(lre,"$1/report");
                loc = l;
             } 

             postToIframe( sdata[i]['params'], 'iftab'+i, 'pform'+i,loc);
        };

         for(var i=0; i< sdata.length; i++){
            populate(i);
         }
         console.log('the index is as ' + sessionStorage.mytaskIndex );
         if(sessionStorage.mytaskIndex){
            $('#mtitle' + (sessionStorage.mytaskIndex -1) ).click();
            sessionStorage.mytaskIndex = 0;
         }  
    });

function fload(index){
    //console.log(index + ' iframe loaded ' + sdata[index]['event'] + ' length is ' + $('#iftab'+index).contents().find('#history-tab-ul').html().length );
    $('#tab'+index).find('.progress').remove();
    $('#tab'+index).find('p').remove();

    var $hpanel = $('#hpanel').clone(true,true).prop('id', 'hpanel'+index).removeClass('hidden');
    $hpanel.find('b').append(sdata[index]['name']);
    $hpanel.find('p').append(sdata[index]['help']);
    $hpanel.find('h5').append(sdata[index]['rhelp']);
    
    //$hpanel.appendTo('#tab'+index);
    $('#iftab'+index).contents().find('body').prepend($hpanel);

    $('#iftab'+index).contents().find('#header').remove();
    $('#iftab'+index).contents().find('footer').remove();

    $('#iftab'+index).contents().find('#top-navigation').remove();
    $('#iftab'+index).contents().find('#nav-fav-bar').remove();
    //console.log($('#iftab'+index).contents().find('.tab-dropdown-item .tab-search-name').text() );
    if(sdata[index]['event'] != 'SEARCH/SEARCH_RECENT')
    $('#history-tab-ul').html( $('#iftab'+index).contents().find('#history-tab-ul').html() );

    
    console.log($('#iftab'+index).contents().find('#history-tab-ul'));

    $('#iftab'+index).contents().find('#history-tab-ul').remove();
    
    if(sdata[index]['event'].indexOf('SHOW') == -1){
        var count =  ($('#iftab'+index).contents().find('.search-results-count').text()!='')?$('#iftab'+index).contents().find('.search-results-count').text():'(0)';
        $('#mtitle'+index).text( $('#mtitle'+index).text() + ' ' + count );
    }

    if($('#iftab'+index).contents().find('#search-results-pw')){
        $('#iftab'+index).contents().find('#search-results-pw').removeClass('hidden');
        //$('#iftab'+index).contents().find('#search-form-row').remove();
    }
    $('#iftab'+index).contents().find('#search-results-row').css('margin-top','-90px');
    
    //$('#mtitle'+index).append( $('#iftab'+index).contents().find('#search-results-header').clone() );
    //var tmp = $('#iftab'+index).contents().find('#search-results-row').html();
    //$('#iftab'+index).contents().find('body').empty();
    //$('#iftab'+index).contents().find('body').append(tmp);
}
function postToIframe(data, target, findex,loc){
    $('body').append('<form action="'+loc+'" method="post" target="'+target+'" id="'+ findex +'"></form>');
    $.each(data,function(n,v){
        $('#'+findex).append('<input type="hidden" name="'+n+'" value="'+v+'" />');
    });
    $('#'+findex).submit().remove();
}

function miscSteps(){
    $('form')[0].append("<input type='hidden' name='APPLICATION_TYPE' value='<tmpl_var APPLICATION_TYPE>'>");
    $('form')[0].append("<input type='hidden' name='SKIN_TYPE' value='<tmpl_var SKIN_TYPE>'>");
}

function handleHelpPanel(){
    $('#shhelp').on('click',  function(e){
    var $this = $(this);
    if(!$this.hasClass('panel-collapsed')) {
        $this.parents('.panel').find('.panel-body').slideUp();
        $this.addClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');
        $this.parent().find('h4').text('Show Instructions');
    } else {
        $this.parents('.panel').find('.panel-body').slideDown();
        $this.removeClass('panel-collapsed');
        $this.find('i').removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');
        $this.parent().find('h4').text('Hide Instructions');
        var myframeId = '#'+$this.parent().parent().prop('id').replace('hpanel','iftab');
        if($(myframeId).contents().find('#report_body').length){
            $(myframeId).contents().find('#srhelp').hide();
            $(myframeId).contents().find('#rrhelp').show();
        }else{
            $(myframeId).contents().find('#srhelp').show();
            $(myframeId).contents().find('#rrhelp').hide();
        }
    }
    })
    $('#shhelp').click();
  
}
</script>