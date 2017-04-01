<!DOCTYPE html>
<html lang="en">
    <head>
        <TMPL_INCLUDE NAME="../includes_mytasks.tpl">
    </head>
    <body class="menu-on-top">
        <TMPL_INCLUDE NAME="../header.tpl">
        <div id="main" role="main" style="margin-top: 0px!important;">
            <TMPL_INCLUDE NAME="top_navigation.tpl">
            <!-- actual start of the create mytask part -->
            <div id="container" class="container">
                <div class="row">
                    <div class="col col-8">
                        <h4><strong>Create myTasks - <tmpl_var name="MNAME"></strong></h4>
                        <p>This allows you to create a group of searches that can be run all at once (automatic), individually (manual), or a combination of the two (hybrid).
                            Now choose whether or not to run the the searches manually (one at a time) or automtically (all at once) or some combination of each.  You can also change the order run by using the arrows to move the search up or down the list.</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col col-8 border-right-dotted">
                        <header>
                            <h4><strong>Step 2: Order searches & Set run mode</strong></h4>
                        </header>
                        <header>
                            <h4>
                                <tmpl_var name="MNAME">
                                --  
                                <tmpl_var name="DESC">
                            </h4>
                        </header>
                        <form id="mytask-form" method="POST" action="<tmpl_var action>">
                            <div class="row">
                                <div class="col col-5 left-section-step2">
                                    <div class="table-responsive">
                                        <table class="table table-hover step2" id='sections'>
                                            <thead>
                                                <th>Order</th>
                                                <th> </th>
                                                <th>Searches</th>
                                                <th>Run Mode</th>
                                            </thead>
                                            <tbody>
                                                <tmpl_loop name="MYTASKVALS">
                                                    <tr id="row<tmpl_var did>">
                                                        <td id="down<tmpl_var name='did'>"><i class="fa fa-bold fa-arrow-down fa-lg"></i> </td>
                                                        <td id="up<tmpl_var name='did'>"> <i class="fa fa-bold fa-arrow-up fa-lg"></i>  </td>
                                                        <td id="title<tmpl_var name='did'>">
                                                            <span class="mname"><tmpl_var name="name"></span>
                                                        </td>
                                                        <td>
                                                            <label for="c<tmpl_var name='did'>" class="checkbox-toggle input">
                                                                <input type="checkbox" NAME="c<tmpl_var name='did'>" id="c<tmpl_var name='did'>" class="on" checked="checked">
                                                                <!--<i data-swchon-text="Automatic" data-swchoff-text="Manual" class="on" data-id='<tmpl_var name=sid>'></i>-->
                                                                <span class="toggle pull-left">
                                                                    <span class="toggle-on">Automatic</span>
                                                                    <span class="toggle-switch"></span>
                                                                    <span class="toggle-off">Manual</span>
                                                                </span>
                                                            </label>
                                                        </td>
                                                    </tr>
                                                </tmpl_loop>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="mfooter">
                                <button type="submit" class="btn" id='cancelBtn'>
                                Cancel
                                </button>
                                <button type="submit" class="btn btn-danger" id='submitBtn'>
                                Continue
                                </button>
                                <button type="submit" class="btn" id='prevBtn'>
                                < Previous
                                </button>
                            </div>
                            <input type='hidden' name='BACKEDIT'   value="0">
                            <input type='hidden' name='RUNMODE'    value="0">
                            <input type='hidden' name='MYTASK'     value="0">
                            <input type='hidden' name='MYTASKVALS' value="0">
                            <input type='hidden' name='EDIT'       value="<tmpl_var name=EDIT>">
                            <input type='hidden' name='EVENT'      value="MYTASK/CREATE_STEP3">
                        </form>
                    </div>
                
                    <div id="search-steps" class="col col-2">
                        <div>
                            <header>
                                <h2>Create myTask Steps</h2>
                            </header>
                            <div class="row">
                                <div class="col-md-12 vert-grey-line">
                                    <div class="row otp-row">
                                        <span onclick="javascript:show_loading(); mytask_step1();">
                                            <button tabindex="-1" type="button" id="name_btn" class="otp-visited otp" >1</button>&nbsp;
                                            <a id="name_text" class="otp-visited-text">Name task & Select searches</a>
                                        </span>
                                    </div>
                                    <div class="row otp-row">
                                        <span>
                                            <button tabindex="-1" type="button" id="order_btn" class="otp-current otp" >2</button>&nbsp;
                                            <span id="order_text" class="otp-current-text">Order searches & Set search properties</span>
                                        </span>
                                    </div>
                                    <div class="row otp-row">
                                        <span>
                                            <button tabindex="-1" type="button" id="add_btn" class="otp-not-visited otp" >3</button>&nbsp;
                                            <!--<img id="v" class="hidden add_instruct svg_otp_circle" src="<TMPL_VAR NAME="IMGPATH">/PNGs/fail.png">-->
                                            <span id="add_text" class="otp-not-visited-text">Add instructions</span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <script type="text/javascript">
                var tmph = <tmpl_var name=SELECTIONS>;
                var modes   = <tmpl_if MODES><tmpl_var name=MODES><tmpl_else>0</tmpl_if>;
                var edit    = <tmpl_if EDIT><tmpl_var name=EDIT><tmpl_else>0</tmpl_if>;
                
                $(function(){
                
                    var mytasks = [];
                    for(k in tmph){mytasks[ sanit(k) ] = tmph[k];}
                    $('#up1 i').hide();
                    $('#down<tmpl_var name=LAST> i').hide();
                
                    $('td[id^=up]').click(function(){moveUp(this,     $(this).parent());})
                    $('td[id^=down]').click(function(){moveDown(this, $(this).parent());})
                    $('.mname').each(function(i){$(this).text(sanit( $(this).text()  ))})
                    
                    // Three Navigation buttons
                    $('#cancelBtn').click(function(e){
                        $("#mytask-form")[0].reset();
                        $("#mytask-form").validate().settings.ignore = "*";
                        send_event('SEARCH/SHOW_MENU');
                    });
                    
                    //$('#prevBtn').click(function(e){$("input[name=BACKEDIT]").val('1'); send_event('MYTASK/CREATE_STEP1');});
                    $('#prevBtn').click(function(e){ history.go(-1); return false;});
                
                    $('#submitBtn').click(function(e){
                        var str=''; var str2=''; var str3 ='';
                        $('td[id^=title]').filter(function(i){str+=mytasks[$.trim($(this).text())] +'|'; str3+=$.trim($(this).text()) +'|' ; });
                        //$('td > label > i').filter(function(i){str2+=($(this).attr('class'))?'on-':'off-';});
                        $('td > label > input').filter(function(i){str2+=($(this).is(':checked'))?'on-':'off-';});
                        
                        //str3 = $('<div/>').text(str3).html(); // HTML encode 
                        
                        $("input[name=MYTASK]").val(str);
                        $("input[name=RUNMODE]").val(str2);
                        $("input[name=MYTASKVALS]").val(str3);
                        send_event('MYTASK/CREATE_STEP3');
                    });
                
                    if(edit){
                        for(key in modes){
                            if(modes[key] != 'Automatic') $("i[data-id="+key+"]").click();    
                        }
                    }
                });
                
                function moveUp(e,p){
                    var currentRow  = p.attr('id');
                    var upperRow    = p.prev().attr('id');
                    var upperNum = $('#'+upperRow).attr('id').match(/\d+/)[0]; 
                    var currentNum = $('#'+currentRow).attr('id').match(/\d+/)[0]; 

                    if($('#up'+upperNum + ' i').is(':hidden')){
                        $('#up'+upperNum +' i').show();
                        $('#up'+currentNum +' i').hide();
                    }

                    if($('#down'+currentNum + ' i').is(':hidden')){
                        $('#down'+currentNum +' i').show();
                        $('#down'+upperNum +' i').hide();
                    }

                    $('#'+upperRow).insertAfter( $('#'+currentRow) );
                }
                
                function moveDown(e,p){
                    var currentRow = p.attr('id');
                    var nextRow    = p.next().attr('id');
                    var currentNum = $('#'+currentRow).attr('id').match(/\d+/)[0]; 
                    var nextNum = $('#'+nextRow).attr('id').match(/\d+/)[0]; 

                    if($('#down'+nextNum + ' i').is(':hidden')){
                        $('#down'+nextNum +' i').show();
                        $('#down'+currentNum +' i').hide();
                    }

                    if($('#up'+currentNum + ' i').is(':hidden')){
                        $('#up'+nextNum +' i').hide();
                        $('#up'+currentNum +' i').show();
                    }

                    $('#'+currentRow).insertAfter( $('#'+nextRow) );
                }
                
                function mytask_step1() {
                    send_event('MYTASK/CREATE_STEP1');
                }
                function mytask_step2() {
                    send_event('MYTASK/CREATE_STEP2');
                }
                function mytask_step3() {
                    send_event('MYTASK/CREATE_STEP3');
                }
            </script>
            <!-- End of the create mytask part -->
        <TMPL_INCLUDE NAME="footer.tpl">
    </body>
</html>
